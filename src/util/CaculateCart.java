package util;

import pojo.CartItem;

import java.util.List;

public class CaculateCart {
    public static float caculateTotalPrice(List<CartItem> cart){
        float sum = 0;
        for(CartItem item: cart){
            sum += item.getProduct().getProduct_price();
        }
        return sum;
    }

    public static int caculateTotalAmount(List<CartItem> cart){
        return cart.size();
    }
}
