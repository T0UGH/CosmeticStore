package util;
import pojo.*;

import java.util.ArrayList;
import java.util.List;

public class Convert {
    public static Order convert(List<CartItem> cart){
        Order order = new Order();
        List<OrderItem> orderItemList = new ArrayList<>();
        for (CartItem cartItem : cart){
            OrderItem orderItem = new OrderItem();
            orderItem.setProduct_id(cartItem.getProduct_id());
            orderItemList.add(orderItem);
        }
        order.setOrderItemList(orderItemList);
        return order;
    }
}
