package dao;

import pojo.CartItem;
import pojo.Order;
import pojo.OrderItem;
import pojo.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@SuppressWarnings("ALL")
public class OrderDaoImpl implements OrderDao {
    private DaoUtils daoUtils = DaoUtils.getInstance();

    @Override
    public void insertOrder(Order order) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "insert into `order`(user_id) values(?)";
            pstmt= conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, order.getUser_id());
            pstmt.executeUpdate();
            rs = pstmt.getGeneratedKeys();
            rs.next();
            int order_id = rs.getInt(1);
            rs.close();
            pstmt.close();
            List<OrderItem> orderItemList = order.getOrderItemList();
            sql = "insert into order_item(order_id, product_id) values (?, ?)";
            for (OrderItem orderItem:orderItemList){
                pstmt = conn.prepareStatement(sql);
                pstmt.setInt(1, order_id);
                pstmt.setInt(2, orderItem.getProduct_id());
                pstmt.executeUpdate();
                pstmt.close();
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            daoUtils.closeConnection(conn,pstmt, rs);
        }


    }

    @Override
    public List<Order> getAllOrder() {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "select * from `order`";
            pstmt= conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            List<Order> orderList = new ArrayList<>();
            while(rs.next()) {
                Order order = new Order();
                order.setOrder_id(rs.getInt("order_id"));
                order.setOrder_time(rs.getTimestamp("order_time"));
                order.setUser_id(rs.getString("user_id"));
                String sqll = "select * from order_item where order_id = ?";
                PreparedStatement pstmtt = conn.prepareStatement(sqll);
                pstmtt.setInt(1, order.getOrder_id());
                ResultSet rss = pstmtt.executeQuery();
                List<OrderItem> orderItemList = new ArrayList<>();
                while(rss.next()) {
                    OrderItem orderItem = new OrderItem();
                    orderItem.setProduct_id(rss.getInt("product_id"));
                    orderItem.setOrder_id(rss.getInt("order_id"));
                    orderItem.setOrder_item_id(rss.getInt("order_item_id"));
                    ProductDao productDao = new ProductDaoImpl();
                    Product product = productDao.getProduct(orderItem.getProduct_id());
                    orderItem.setProduct(product);
                    orderItemList.add(orderItem);
                }
                order.setOrderItemList(orderItemList);
                daoUtils.closeConnection(null, pstmtt, rss);
                orderList.add(order);
            }
            return orderList;
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }finally {
            daoUtils.closeConnection(conn,pstmt, rs);
        }

    }
}
