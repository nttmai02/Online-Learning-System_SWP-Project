package Model;

public class Lesson {
    private int id;
    private int order;
    private String name;
    private String url;
    private String description;
    private boolean status;
    private Topic topic;

    public Lesson() {
    }

    public Lesson(int id, int order, String name, String url, String description, boolean status, Topic topic) {
        this.id = id;
        this.order = order;
        this.name = name;
        this.url = url;
        this.description = description;
        this.status = status;
        this.topic = topic;
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }
}
