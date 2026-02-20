package ups.icc.eva_developers.Project.dto;

import java.time.LocalDate;

public class ProjectResponseDTO {

    private Long id;
    private String name;
    private String description;
    private String technologies;
    private String status;
    private Double cost;
    private LocalDate startDate;
    private LocalDate endDate;
    private ProjectLinkDto projectLink;

    public ProjectResponseDTO() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTechnologies() {
        return technologies;
    }

    public void setTechnologies(String technologies) {
        this.technologies = technologies;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    public ProjectLinkDto getProjectLink() {
        return projectLink;
    }

    public void setProjectLink(ProjectLinkDto projectLink) {
        this.projectLink = projectLink;
    }
}
