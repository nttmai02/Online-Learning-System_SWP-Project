package Model;

import java.util.ArrayList;

public class User {
    private int id;
    private String passWord;
    private String fullName;
    private String email;
    private String phone;
    private String image;
    private boolean gender;
    private Role role;
    private ArrayList<Course> coursesRegister;
    private ArrayList<Course> coursesTeach;
    private ArrayList<Blog> blogs;
    private ArrayList<Quiz> quizs;
    public User() {
    }

    public User(int id, String passWord, String fullName, String email, String phone, String image, boolean gender, Role role) {
        this.id = id;
        this.passWord = passWord;
        this.fullName = fullName;
        this.email = email;
        this.phone = phone;
        this.image = image;
        this.gender = gender;
        this.role = role;
    }
    public User(int id, String passWord, String fullName, String email, String phone, String image, boolean gender, Role role, ArrayList<Course> coursesRegister, ArrayList<Course> coursesTeach, ArrayList<Blog> blogs, ArrayList<Quiz> quizs) {
        this.id = id;
        this.passWord = passWord;
        this.fullName = fullName;
        this.email = email;
        this.phone = phone;
        this.image = image;
        this.gender = gender;
        this.role = role;
        this.coursesRegister = coursesRegister;
        this.coursesTeach = coursesTeach;
        this.blogs = blogs;
        this.quizs = quizs;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public ArrayList<Course> getCoursesRegister() {
        return coursesRegister;
    }

    public void setCoursesRegister(ArrayList<Course> coursesRegister) {
        this.coursesRegister = coursesRegister;
    }

    public ArrayList<Course> getCoursesTeach() {
        return coursesTeach;
    }

    public void setCoursesTeach(ArrayList<Course> coursesTeach) {
        this.coursesTeach = coursesTeach;
    }


    public ArrayList<Blog> getBlogs() {
        return blogs;
    }

    public void setBlogs(ArrayList<Blog> blogs) {
        this.blogs = blogs;
    }
    
}
