package Model;


public class Topic_Quiz {
    private int id;
    private Topic topic;
    private Quiz quiz;
    private int order;

    public Topic_Quiz() {
    }

    public Topic_Quiz(int id, Topic topic, Quiz quiz, int order) {
        this.id = id;
        this.topic = topic;
        this.quiz = quiz;
        this.order = order;
    }

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }

    public Quiz getQuiz() {
        return quiz;
    }

    public void setQuiz(Quiz quiz) {
        this.quiz = quiz;
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
