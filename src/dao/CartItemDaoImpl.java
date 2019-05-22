package dao;

import pojo.CartItem;
import pojo.Product;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@SuppressWarnings("ALL")
public class CartItemDaoImpl implements CartItemDao {
    private DaoUtils daoUtils = DaoUtils.getInstance();

    @Override
    public List<CartItem> getCart(String user_id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "select * from cart_item natural join product where user_id = ?";
            pstmt= conn.prepareStatement(sql);
            pstmt.setString(1, user_id);
            rs = pstmt.executeQuery();
            List<CartItem> cartItemList = new ArrayList<>();
            while(rs.next()) {
                Product product = new Product();
                product.setProduct_id(rs.getInt("product_id"));
                product.setProduct_name(rs.getString("product_name"));
                product.setProduct_standard(rs.getString("product_standard"));
                product.setProduct_remain(rs.getInt("product_remain"));
                product.setProduct_price(rs.getFloat("product_price"));
                product.setProduct_img(rs.getString("product_img"));
                CartItem cartItem = new CartItem();
                cartItem.setCart_item_id(rs.getInt("cart_item_id"));
                cartItem.setUser_id(rs.getString("user_id"));
                cartItem.setProduct_id(rs.getInt("product_id"));
                cartItem.setProduct(product);
                cartItemList.add(cartItem);
            }
            return cartItemList;
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }finally {
            daoUtils.closeConnection(conn,pstmt, rs);
        }
    }

    @Override
    public void deleteCart(String user_id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "delete from cart_item where user_id = ?";
            pstmt= conn.prepareStatement(sql);
            pstmt.setString(1, user_id);
            pstmt.executeUpdate();
            return;
        }catch (SQLException e){
            e.printStackTrace();
            return ;
        }finally {
            daoUtils.closeConnection(conn,pstmt, rs);
        }
    }

    @Override
    public void deleteCartItem(int cart_item_id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "delete from cart_item where cart_item_id = ?";
            pstmt= conn.prepareStatement(sql);
            pstmt.setInt(1, cart_item_id);
            pstmt.executeUpdate();
            return;
        }catch (SQLException e){
            e.printStackTrace();
            return ;
        }finally {
            daoUtils.closeConnection(conn,pstmt, rs);
        }
    }

    @Override
    public void insertCartItem(CartItem cartItem) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "insert into cart_item(product_id,user_id) values(?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, cartItem.getProduct_id());
            pstmt.setString(2, cartItem.getUser_id());
            pstmt.executeUpdate();
            return;
        }catch (SQLException | NullPointerException e){
            e.printStackTrace();
            return;
        }finally {
            daoUtils.closeConnection(conn,pstmt, rs);
        }
    }

    public static void main(String[] args) {
        CartItemDao cartItemDao = new CartItemDaoImpl();
//        List<CartItem> cart = cartItemDao.getCart("test1");
//        System.out.println(cart.size());
        cartItemDao.deleteCart("test1");
        CartItem cartItem = new CartItem();
        cartItem.setUser_id("test1");
        cartItem.setProduct_id(3);
        cartItemDao.insertCartItem(cartItem);

    }
}
