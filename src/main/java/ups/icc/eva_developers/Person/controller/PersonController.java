package ups.icc.eva_developers.Person.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import ups.icc.eva_developers.Person.dto.PersonDetailDto;
import ups.icc.eva_developers.Person.dto.PersonProjectsDto;
import ups.icc.eva_developers.Person.dto.PersonStatusDto;
import ups.icc.eva_developers.Person.dto.PersonSummaryDto;
import ups.icc.eva_developers.Person.service.PersonService;

@RestController
@RequestMapping("/api/persons")
public class PersonController {

    private final PersonService personService;

    public PersonController(PersonService personService) {
        this.personService = personService;
    }

    @GetMapping
    public List<PersonSummaryDto> getPersons(
            @RequestParam(name = "activeOnly", defaultValue = "false") boolean activeOnly) {
        return personService.findAll(activeOnly);
    }

    @PatchMapping("/{id}/toggle-active")
    public PersonStatusDto toggleActive(@PathVariable Long id) {
        return personService.toggleActive(id);
    }

    @GetMapping("/{id}")
    public PersonDetailDto getPersonById(@PathVariable Long id) {
        return personService.findById(id);
    }

    @GetMapping("/{id}/projects")
    public PersonProjectsDto getPersonProjects(
            @PathVariable Long id,
            @RequestParam(name = "minCost", required = false) Double minCost) {
        return personService.findProjectsByPerson(id, minCost);
    }
}
