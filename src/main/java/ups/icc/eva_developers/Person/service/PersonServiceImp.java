package ups.icc.eva_developers.Person.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ups.icc.eva_developers.Person.dto.PersonDetailDto;
import ups.icc.eva_developers.Person.dto.PersonProjectsDto;
import ups.icc.eva_developers.Person.dto.PersonStatusDto;
import ups.icc.eva_developers.Person.dto.PersonSummaryDto;
import ups.icc.eva_developers.Person.entity.PersonEntity;
import ups.icc.eva_developers.Person.mapper.PersonMapper;
import ups.icc.eva_developers.Person.repository.PersonRepository;
import ups.icc.eva_developers.Project.entity.ProjectsEntity;
import ups.icc.eva_developers.Project.repository.ProjectRepository;
import ups.icc.eva_developers.common.exception.PersonNotFoundException;

@Service
public class PersonServiceImp implements PersonService {

    private final PersonRepository personRepository;
    private final ProjectRepository projectRepository;

    public PersonServiceImp(PersonRepository personRepository, ProjectRepository projectRepository) {
        this.personRepository = personRepository;
        this.projectRepository = projectRepository;
    }

    @Override
    @Transactional(readOnly = true)
    public List<PersonSummaryDto> findAll(Boolean activeOnly) {
        boolean filterActive = Boolean.TRUE.equals(activeOnly);
        List<PersonEntity> persons = filterActive
                ? personRepository.findByActiveOrderByIdAsc('S')
                : personRepository.findAllByOrderByIdAsc();

        return persons.stream()
                .map(PersonMapper::toSummaryDto)
                .toList();
    }

    @Override
    @Transactional
    public PersonStatusDto toggleActive(Long id) {
        PersonEntity person = personRepository.findById(id)
                .orElseThrow(() -> new PersonNotFoundException(id));

        boolean isCurrentlyActive = Character.valueOf('S').equals(person.getActive());
        person.setActive(isCurrentlyActive ? 'N' : 'S');

        String message = Character.valueOf('S').equals(person.getActive())
                ? "Person activated successfully"
                : "Person deactivated successfully";

        return PersonMapper.toStatusDto(person, message);
    }

    @Override
    @Transactional(readOnly = true)
    public PersonDetailDto findById(Long id) {
        PersonEntity person = personRepository.findById(id)
                .orElseThrow(() -> new PersonNotFoundException(id));

        return PersonMapper.toDetailDto(person);
    }

    @Override
    @Transactional(readOnly = true)
    public PersonProjectsDto findProjectsByPerson(Long id, Double minCost) {
        PersonEntity person = personRepository.findById(id)
                .orElseThrow(() -> new PersonNotFoundException(id));

        boolean filterApplied = minCost != null;
        List<ProjectsEntity> projects = filterApplied
                ? projectRepository.findByPerson_IdAndActiveAndCostGreaterThanEqualOrderByCostDesc(id, 'S', minCost)
                : projectRepository.findByPerson_IdAndActiveOrderByCostDesc(id, 'S');

        return PersonMapper.toProjectsDto(person, projects, minCost, filterApplied);
    }
}
