package dao;

import pojo.Product;
import pojo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@SuppressWarnings("ALL")
public class ProductDaoImpl implements ProductDao{
    private DaoUtils daoUtils = DaoUtils.getInstance();

    @Override
    public Product getProduct(int product_id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "select * from product where product_id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, product_id);
            rs = pstmt.executeQuery();
            rs.next();
            Product product = new Product();
            product.setProduct_id(rs.getInt("product_id"));
            product.setProduct_name(rs.getString("product_name"));
            product.setProduct_standard(rs.getString("product_standard"));
            product.setProduct_remain(rs.getInt("product_remain"));
            product.setProduct_price(rs.getFloat("product_price"));
            product.setProduct_img(rs.getString("product_img"));
            return product;
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }finally {
            daoUtils.closeConnection(conn,pstmt, rs);
        }
    }

    @Override
    public void insertProduct(Product product) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "insert into " +
                    "product(product_name,product_standard,product_remain,product_price,product_img)" +
                    " values(?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, product.getProduct_name());
            pstmt.setString(2, product.getProduct_standard());
            pstmt.setInt(3, product.getProduct_remain());
            pstmt.setFloat(4, product.getProduct_price());
            pstmt.setString(5, product.getProduct_img());
            pstmt.executeUpdate();
            return;
        }catch (SQLException e){
            e.printStackTrace();
            return;
        }finally {
            daoUtils.closeConnection(conn,pstmt, rs);
        }
    }

    @Override
    public void updateProduct(Product product) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "update product set " +
                    "product_name = ?,product_standard = ?,product_remain = ?," +
                    "product_price = ?,product_img = ? " +
                    "where product_id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, product.getProduct_name());
            pstmt.setString(2, product.getProduct_standard());
            pstmt.setInt(3, product.getProduct_remain());
            pstmt.setFloat(4, product.getProduct_price());
            pstmt.setString(5, product.getProduct_img());
            pstmt.setInt(6, product.getProduct_id());
            pstmt.executeUpdate();
            return;
        }catch (SQLException e){
            e.printStackTrace();
            return;
        }finally {
            daoUtils.closeConnection(conn,pstmt, rs);
        }
    }

    @Override
    public void deleteProduct(int product_id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "delete from product where product_id = ?";
            pstmt= conn.prepareStatement(sql);
            pstmt.setInt(1, product_id);
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
    public List<Product> getProductList(int page, int size) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "select * from product limit ?, ?";
            pstmt= conn.prepareStatement(sql);
            pstmt.setInt(1, page * size);
            pstmt.setInt(2, size);
            rs = pstmt.executeQuery();
            List<Product> productList = new ArrayList<>();
            while(rs.next()) {
                Product product = new Product();
                product.setProduct_id(rs.getInt("product_id"));
                product.setProduct_name(rs.getString("product_name"));
                product.setProduct_standard(rs.getString("product_standard"));
                product.setProduct_remain(rs.getInt("product_remain"));
                product.setProduct_price(rs.getFloat("product_price"));
                product.setProduct_img(rs.getString("product_img"));
                productList.add(product);
            }
            return productList;
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }finally {
            daoUtils.closeConnection(conn,pstmt, rs);
        }
    }

    @Override
    public List<Product> searchProductList(int page, int size, String search_key) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "select * from product where product_name like '%" + search_key +"%'limit ?, ?";
            pstmt= conn.prepareStatement(sql);
            pstmt.setInt(1, page * size);
            pstmt.setInt(2, size);
            rs = pstmt.executeQuery();
            List<Product> productList = new ArrayList<>();
            while(rs.next()) {
                Product product = new Product();
                product.setProduct_id(rs.getInt("product_id"));
                product.setProduct_name(rs.getString("product_name"));
                product.setProduct_standard(rs.getString("product_standard"));
                product.setProduct_remain(rs.getInt("product_remain"));
                product.setProduct_price(rs.getFloat("product_price"));
                product.setProduct_img(rs.getString("product_img"));
                productList.add(product);
            }
            return productList;
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }finally {
            daoUtils.closeConnection(conn,pstmt, rs);
        }
    }

    @Override
    public int countProduct() {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "select count(*) from product";
            pstmt= conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            rs.next();
            int count = rs.getInt(1);
            return count;
        }catch (SQLException e){
            e.printStackTrace();
            return -1;
        }finally {
            daoUtils.closeConnection(conn, pstmt, rs);
        }
    }

    public static void main(String[] args) {
        Product product = new Product();
//        product.setProduct_name("test_product_name");
//        product.setProduct_price(1.0f);
//        product.setProduct_remain(10);
//        product.setProduct_standard("test_product_standard");
//        product.setProduct_img("test_product_img");
        ProductDao productDao= new ProductDaoImpl();
//        productDao.insertProduct(product);
//        System.out.println(productDao.countProduct());
        System.out.println(productDao.getProductList(0, 5).size());
//        productDao.deleteProduct(2);
    }
}
