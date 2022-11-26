package Model;

import java.util.ArrayList;


public class Question {
    private int id;
    private String content;
    private boolean status;
    private Category category;
    private ArrayList<Answers> answers;
    private ArrayList<Quiz> quizs;
    private ArrayList<User_Quiz> userQuizs;
    public Question() {
    }

    public Question(int id, String content, boolean status, Category category) {
        this.id = id;
        this.content = content;
        this.category = category;
        this.status = status;
    }
    
    public Question(int id, String content, boolean status, Category category, ArrayList<Answers> answers, ArrayList<Quiz> quizs, ArrayList<User_Quiz> userQuizs) {
        this.id = id;
        this.content = content;
        this.category = category;
        this.status = status;
        this.answers = answers;
        this.quizs = quizs;
        this.userQuizs = userQuizs;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    public ArrayList<Answers> getAnswers() {
        return answers;
    }

    public void setAnswers(ArrayList<Answers> answers) {
        this.answers = answers;
    }

    public ArrayList<Quiz> getQuizs() {
        return quizs;
    }

    public void setQuizs(ArrayList<Quiz> quizs) {
        this.quizs = quizs;
    }

    public ArrayList<User_Quiz> getUserQuiz() {
        return userQuizs;
    }

    public void setUserQuiz(ArrayList<User_Quiz> userQuizs) {
        this.userQuizs = userQuizs;
    }

}
