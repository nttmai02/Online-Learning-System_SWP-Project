package Model;

import java.sql.Timestamp;

public class Blog {
    private int id;
    private String name;
    private String content;
    private String image;
    private Timestamp date;
    private boolean Status;
    private User user;
    private Category category;

    public Blog() {
    }

    public Blog(int id, String name, String content, String image, Timestamp date, boolean Status, User user, Category category) {
        this.id = id;
        this.name = name;
        this.content = content;
        this.image = image;
        this.date = date;
        this.Status = Status;
        this.user = user;
        this.category = category;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public boolean isStatus() {
        return Status;
    }

    public void setStatus(boolean Status) {
        this.Status = Status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
    
}
