package dao;

import pojo.CartItem;

import java.util.List;

public interface CartItemDao {
    List<CartItem> getCart(String user_id);
    void deleteCart(String user_id);
    void deleteCartItem(int cart_item_id);
    void insertCartItem(CartItem cartItem);
}
