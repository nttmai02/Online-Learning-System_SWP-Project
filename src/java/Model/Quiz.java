package Model;

import java.sql.Time;
import java.util.ArrayList;

public class Quiz {
    private int id;
    private float passRate;
    private String name;
    private String level;
    private String type;
    private Time duration;
    private ArrayList<User> users;
    private ArrayList<Topic> topics;
    private ArrayList<Question> questions;
    public Quiz() {
    }

    public Quiz(int id, float passRate, String name, String level, String type, Time duration, ArrayList<User> users, ArrayList<Topic> topics, ArrayList<Question> question) {
        this.id = id;
        this.passRate = passRate;
        this.name = name;
        this.level = level;
        this.type = type;
        this.duration = duration;
        this.users = users;
        this.topics = topics;
        this.questions = questions;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public float getPassRate() {
        return passRate;
    }

    public void setPassRate(float passRate) {
        this.passRate = passRate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Time getDuration() {
        return duration;
    }

    public void setDuration(Time duration) {
        this.duration = duration;
    }

    public ArrayList<User> getUsers() {
        return users;
    }

    public void setUsers(ArrayList<User> users) {
        this.users = users;
    }

    public ArrayList<Topic> getTopics() {
        return topics;
    }

    public void setTopics(ArrayList<Topic> topics) {
        this.topics = topics;
    }

    public ArrayList<Question> getQuestion() {
        return questions;
    }

    public void setQuestion(ArrayList<Question> questions) {
        this.questions = questions;
    }
    
}
