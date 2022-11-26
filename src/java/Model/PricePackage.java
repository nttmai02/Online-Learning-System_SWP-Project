package Model;

public class PricePackage {
    private int id;
    private int duration;
    private String name;
    private float listedPrice;
    private float salePrice;
    private boolean status;

    public PricePackage() {
    }

    public PricePackage(int id, int duration, String name, float listedPrice, float salePrice, boolean status) {
        this.id = id;
        this.duration = duration;
        this.name = name;
        this.listedPrice = listedPrice;
        this.salePrice = salePrice;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getListedPrice() {
        return listedPrice;
    }

    public void setListedPrice(float listedPrice) {
        this.listedPrice = listedPrice;
    }

    public float getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(float salePrice) {
        this.salePrice = salePrice;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
}
