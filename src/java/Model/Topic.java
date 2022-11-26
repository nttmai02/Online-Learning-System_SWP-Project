package Model;

import java.util.ArrayList;

public class Topic {
    private int id;
    private int order;
    private String name;
    private Course course;
    private ArrayList<Lesson> lessons;
    private ArrayList<Quiz> quizs;
    public Topic() {
    }

    public Topic(int id, int order, String name, Course course) {
        this.id = id;
        this.order = order;
        this.name = name;
        this.course = course;
    }
    
    public Topic(int id, int order, String name, Course course, ArrayList<Lesson> lessons, ArrayList<Quiz> quizs) {
        this.id = id;
        this.order = order;
        this.name = name;
        this.course = course;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public ArrayList<Lesson> getLessons() {
        return lessons;
    }

    public void setLessons(ArrayList<Lesson> lessons) {
        this.lessons = lessons;
    }

    public ArrayList<Quiz> getQuizs() {
        return quizs;
    }

    public void setQuizs(ArrayList<Quiz> quizs) {
        this.quizs = quizs;
    }
    
}
