package ups.icc.eva_developers.Person.mapper;

import java.util.Comparator;
import java.util.List;

import ups.icc.eva_developers.ContactsLinks.entity.ContactsLinksEntity;
import ups.icc.eva_developers.Person.dto.ContactLinkDto;
import ups.icc.eva_developers.Person.dto.PersonDetailDto;
import ups.icc.eva_developers.Person.dto.PersonProjectsDto;
import ups.icc.eva_developers.Person.dto.PersonStatusDto;
import ups.icc.eva_developers.Person.dto.PersonSummaryDto;
import ups.icc.eva_developers.Person.entity.PersonEntity;
import ups.icc.eva_developers.Project.dto.ProjectLinkDto;
import ups.icc.eva_developers.Project.dto.ProjectResponseDTO;
import ups.icc.eva_developers.Project.entity.ProjectsEntity;
import ups.icc.eva_developers.ProyectLinks.entity.ProjectsLinksEntity;

public final class PersonMapper {

    private PersonMapper() {
    }

    public static PersonSummaryDto toSummaryDto(PersonEntity personEntity) {
        PersonSummaryDto dto = new PersonSummaryDto();
        dto.setId(personEntity.getId());
        dto.setFirstName(personEntity.getFirstName());
        dto.setLastName(personEntity.getLastName());
        dto.setProfession(personEntity.getProfession());
        dto.setLocation(personEntity.getLocation());
        dto.setActive(isActive(personEntity.getActive()));
        dto.setContactLinks(toContactLinks(personEntity.getContactLinks()));
        dto.setProjectCount(countActiveProjects(personEntity));
        return dto;
    }

    public static PersonDetailDto toDetailDto(PersonEntity personEntity) {
        PersonDetailDto dto = new PersonDetailDto();
        dto.setId(personEntity.getId());
        dto.setFirstName(personEntity.getFirstName());
        dto.setLastName(personEntity.getLastName());
        dto.setEmail(personEntity.getEmail());
        dto.setBio(personEntity.getBio());
        dto.setProfession(personEntity.getProfession());
        dto.setLocation(personEntity.getLocation());
        dto.setActive(isActive(personEntity.getActive()));
        dto.setContactLinks(toContactLinks(personEntity.getContactLinks()));
        dto.setProjectCount(countActiveProjects(personEntity));
        return dto;
    }

    public static PersonStatusDto toStatusDto(PersonEntity personEntity, String message) {
        PersonStatusDto dto = new PersonStatusDto();
        dto.setId(personEntity.getId());
        dto.setFirstName(personEntity.getFirstName());
        dto.setLastName(personEntity.getLastName());
        dto.setActive(isActive(personEntity.getActive()));
        dto.setMessage(message);
        return dto;
    }

    public static PersonProjectsDto toProjectsDto(PersonEntity personEntity, List<ProjectsEntity> projects, Double minCost,
            boolean filterApplied) {
        PersonProjectsDto dto = new PersonProjectsDto();
        dto.setPersonId(personEntity.getId());
        dto.setPersonName(personEntity.getFirstName() + " " + personEntity.getLastName());
        dto.setActive(isActive(personEntity.getActive()));
        dto.setFilterApplied(filterApplied);
        dto.setMinCost(minCost);

        List<ProjectResponseDTO> projectDtos = projects.stream()
                .sorted(Comparator.comparing(ProjectsEntity::getCost).reversed())
                .map(PersonMapper::toProjectDto)
                .toList();

        dto.setProjects(projectDtos);
        dto.setProjectCount(projectDtos.size());
        return dto;
    }

    private static int countActiveProjects(PersonEntity personEntity) {
        return (int) personEntity.getProjects().stream()
                .filter(project -> Character.valueOf('S').equals(project.getActive()))
                .count();
    }

    private static ProjectResponseDTO toProjectDto(ProjectsEntity project) {
        ProjectResponseDTO dto = new ProjectResponseDTO();
        dto.setId(project.getId());
        dto.setName(project.getName());
        dto.setDescription(project.getDescription());
        dto.setTechnologies(project.getTechnologies());
        dto.setStatus(project.getStatus());
        dto.setCost(project.getCost());
        dto.setStartDate(project.getStartDate());
        dto.setEndDate(project.getEndDate());

        ProjectsLinksEntity projectLink = project.getProjectLink();
        if (projectLink != null) {
            dto.setProjectLink(new ProjectLinkDto(projectLink.getName(), projectLink.getUrl()));
        }

        return dto;
    }

    private static List<ContactLinkDto> toContactLinks(List<ContactsLinksEntity> contactLinks) {
        return contactLinks.stream()
                .sorted(Comparator.comparing(ContactsLinksEntity::getId))
                .map(link -> new ContactLinkDto(link.getId(), link.getName(), link.getUrl()))
                .toList();
    }

    private static boolean isActive(Character active) {
        return Character.valueOf('S').equals(active);
    }
}
