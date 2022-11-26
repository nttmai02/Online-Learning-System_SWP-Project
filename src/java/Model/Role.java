package Model;

public class Role {
    private int id;
    private String name;

    public Role(int id, String name) {
        this.id = id;
        this.name = name;
    }
    
    public Role(int id) {
        this.id = id;
        if(id == 1) {
            name = "customer";
        }
        else if(id == 2) {
            name = "marketing";
        }
        else if(id == 3) {
            name = "expert";
        }
        else {
            name = "admin";
        }
    }

    public Role() {
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
    
    
}
