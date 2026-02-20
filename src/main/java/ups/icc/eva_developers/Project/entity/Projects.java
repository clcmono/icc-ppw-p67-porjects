package ups.icc.eva_developers.Project.entity;

import java.sql.Date;
import java.time.LocalDate;



public class Projects {


    private int id ;
    private String name;
    private String description;
    private String technologies;
    private String status;
    private Double cost;
    private  LocalDate start_date;
    private LocalDate end_date;
    private String active;


    public Projects(int id, String name, String description, String technologies, String status, Double cost,
            LocalDate start_date, LocalDate end_date, String active) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.technologies = technologies;
        this.status = status;
        this.cost = cost;
        this.start_date = start_date;
        this.end_date = end_date;
        this.active = active;
    }


    public int getId() {
        return id;
    }


    public void setId(int id) {
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


    public LocalDate getStart_date() {
        return start_date;
    }


    public void setStart_date(LocalDate start_date) {
        this.start_date = start_date;
    }


    public LocalDate getEnd_date() {
        return end_date;
    }


    public void setEnd_date(LocalDate end_date) {
        this.end_date = end_date;
    }


    public String getActive() {
        return active;
    }


    public void setActive(String active) {
        this.active = active;
    }

    


    
}
