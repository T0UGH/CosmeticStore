package dao;
import pojo.*;

import java.util.List;

public interface OrderDao {
    public void insertOrder(Order order);
    public List<Order> getAllOrder();
}
