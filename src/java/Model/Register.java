package Model;

import java.sql.Timestamp;

public class Register {
    private int id;
    private User user;
    private Course course;
    private Timestamp validFrom, validTo;

    public Register() {
    }

    public Register(int id, User user, Course course, Timestamp validFrom, Timestamp validTo) {
        this.id = id;
        this.user = user;
        this.course = course;
        this.validFrom = validFrom;
        this.validTo = validTo;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public Timestamp getValidFrom() {
        return validFrom;
    }

    public void setValidFrom(Timestamp validFrom) {
        this.validFrom = validFrom;
    }

    public Timestamp getValidTo() {
        return validTo;
    }

    public void setValidTo(Timestamp validTo) {
        this.validTo = validTo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
}
