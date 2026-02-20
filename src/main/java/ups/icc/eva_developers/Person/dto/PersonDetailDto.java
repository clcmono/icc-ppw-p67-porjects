package ups.icc.eva_developers.Person.dto;

import java.util.List;

public class PersonDetailDto {

    private Long id;
    private String firstName;
    private String lastName;
    private String email;
    private String bio;
    private String profession;
    private String location;
    private boolean active;
    private List<ContactLinkDto> contactLinks;
    private Integer projectCount;

    public PersonDetailDto() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public List<ContactLinkDto> getContactLinks() {
        return contactLinks;
    }

    public void setContactLinks(List<ContactLinkDto> contactLinks) {
        this.contactLinks = contactLinks;
    }

    public Integer getProjectCount() {
        return projectCount;
    }

    public void setProjectCount(Integer projectCount) {
        this.projectCount = projectCount;
    }
}
