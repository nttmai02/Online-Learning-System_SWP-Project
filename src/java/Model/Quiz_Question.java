package Model;

public class Quiz_Question {
    private int id;
    private Quiz quiz;
    private Question question;
    private int order;

    public Quiz_Question(int id, Quiz quiz, Question question, int order) {
        this.id = id;
        this.quiz = quiz;
        this.question = question;
        this.order = order;
    }

    public Quiz_Question() {
    }

    public Quiz getQuiz() {
        return quiz;
    }

    public void setQuiz(Quiz quiz) {
        this.quiz = quiz;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
}
