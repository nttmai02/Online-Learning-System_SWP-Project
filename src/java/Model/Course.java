package Model;

import java.util.ArrayList;

public class Course {
    private int id;
    private String name;
    private String description;
    private String image;
    private boolean status;
    private boolean featured;
    private Category category;
    private ArrayList<User> usersTeach; //teach, user is expert
    private ArrayList<User> usersRegister; //customer
    private ArrayList<Topic> topics;
    private ArrayList<PricePackage> pricePackages;
    public Course() {
    }

    public Course(int id, String name, String description, String image, boolean status, boolean featured, Category category) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.image = image;
        this.status = status;
        this.featured = featured;
        this.category = category;
    }
    public Course(int id, String name, String description, String image, boolean status, boolean featured, Category category, ArrayList<User> usersTeach, ArrayList<User> usersRegister, ArrayList<Topic> topics, ArrayList<PricePackage> pricePackages) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.image = image;
        this.status = status;
        this.featured = featured;
        this.category = category;
        this.usersTeach = usersTeach;
        this.usersRegister = usersRegister;
        this.topics = topics;
        this.pricePackages = pricePackages;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public boolean isFeatured() {
        return featured;
    }

    public void setFeatured(boolean featured) {
        this.featured = featured;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public ArrayList<User> getUsersTeach() {
        return usersTeach;
    }

    public void setUsersTeach(ArrayList<User> usersTeach) {
        this.usersTeach = usersTeach;
    }

    public ArrayList<User> getUsersRegister() {
        return usersRegister;
    }

    public void setUsersRegister(ArrayList<User> usersRegister) {
        this.usersRegister = usersRegister;
    }


    public ArrayList<Topic> getTopics() {
        return topics;
    }

    public void setTopics(ArrayList<Topic> topics) {
        this.topics = topics;
    }

    public ArrayList<PricePackage> getPricePackages() {
        return pricePackages;
    }

    public void setPricePackages(ArrayList<PricePackage> pricePackages) {
        this.pricePackages = pricePackages;
    }
    
}
