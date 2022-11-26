package Model;


public class User_Quiz_Question {
    private int id;
    private User_Quiz userQuiz;
    private Question question;
    private int userAnswer;
    private boolean marked;

    public User_Quiz_Question() {
    }

    public User_Quiz_Question(int id, User_Quiz userQuiz, Question question, int userAnswer, boolean marked) {
        this.id = id;
        this.userQuiz = userQuiz;
        this.question = question;
        this.userAnswer = userAnswer;
        this.marked = marked;
    }

    public User_Quiz getUserQuiz() {
        return userQuiz;
    }

    public void setUserQuiz(User_Quiz userQuiz) {
        this.userQuiz = userQuiz;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public int getUserAnswer() {
        return userAnswer;
    }

    public void setUserAnswer(int userAnswer) {
        this.userAnswer = userAnswer;
    }

    public boolean isMarked() {
        return marked;
    }

    public void setMarked(boolean marked) {
        this.marked = marked;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
}
