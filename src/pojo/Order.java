package pojo;

import java.sql.Timestamp;
import java.util.List;

public class Order {
    private int order_id;
    private Timestamp order_time;
    private String user_id;
    private List<OrderItem> orderItemList;

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public Timestamp getOrder_time() {
        return order_time;
    }

    public void setOrder_time(Timestamp order_time) {
        this.order_time = order_time;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public List<OrderItem> getOrderItemList() {
        return orderItemList;
    }

    public void setOrderItemList(List<OrderItem> orderItemList) {
        this.orderItemList = orderItemList;
    }

    public float getTotalPrice(){
        if(orderItemList == null){
            return 0;
        }
        float sum = 0;
        for(OrderItem orderItem: orderItemList){
            sum += orderItem.getProduct().getProduct_price();
        }
        return sum;
    }

    public int getTotalAmount(){
        if(orderItemList != null){
            return orderItemList.size();
        }else{
            return 0;
        }
    }
}
