package pojo;

public class Product {
    private int product_id;
    private String product_name;
    private String product_standard;
    private int product_remain;
    private float product_price;
    private String product_img;

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_standard() {
        return product_standard;
    }

    public void setProduct_standard(String product_standard) {
        this.product_standard = product_standard;
    }

    public int getProduct_remain() {
        return product_remain;
    }

    public void setProduct_remain(int product_remain) {
        this.product_remain = product_remain;
    }

    public float getProduct_price() {
        return product_price;
    }

    public void setProduct_price(float product_price) {
        this.product_price = product_price;
    }

    public String getProduct_img() {
        return product_img;
    }

    public void setProduct_img(String product_img) {
        this.product_img = product_img;
    }

    @Override
    public String toString() {
        return "Product{" +
                "product_id=" + product_id +
                ", product_name='" + product_name + '\'' +
                ", product_standard='" + product_standard + '\'' +
                ", product_remain=" + product_remain +
                ", product_price=" + product_price +
                ", product_img='" + product_img + '\'' +
                '}';
    }
}
