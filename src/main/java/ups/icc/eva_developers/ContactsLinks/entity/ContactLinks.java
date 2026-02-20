package ups.icc.eva_developers.ContactsLinks.entity;

public class ContactLinks {


    private int id;
    private String name;
    private String url;


    public ContactLinks(int id, String name, String url) {
        this.id = id;
        this.name = name;
        this.url = url;
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

    
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
