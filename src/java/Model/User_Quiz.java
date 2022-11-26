package Model;

import java.sql.Time;
import java.util.ArrayList;

public class User_Quiz {
    private int id;
    private User user;
    private Quiz quiz;
    private Time timeTaken;
    private float grade;
    private ArrayList<Question> questions;
    public User_Quiz() {
    }

    public User_Quiz(int id, User user, Quiz quiz, Time timeTaken, float grade, ArrayList<Question> questions) {
        this.id = id;
        this.user = user;
        this.quiz = quiz;
        this.timeTaken = timeTaken;
        this.grade = grade;
        this.questions = questions;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Quiz getQuiz() {
        return quiz;
    }

    public void setQuiz(Quiz quiz) {
        this.quiz = quiz;
    }

    public Time getTimeTaken() {
        return timeTaken;
    }

    public void setTimeTaken(Time timeTaken) {
        this.timeTaken = timeTaken;
    }

    public float getGrade() {
        return grade;
    }

    public void setGrade(float grade) {
        this.grade = grade;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ArrayList<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(ArrayList<Question> questions) {
        this.questions = questions;
    }
    
}
