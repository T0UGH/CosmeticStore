package dao;

import pojo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@SuppressWarnings("ALL")
public class UserDaoImpl implements UserDao {
    private DaoUtils daoUtils = DaoUtils.getInstance();

    @Override
    public User getUser(String user_id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "select * from user where user_id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user_id);
            rs = pstmt.executeQuery();
            rs.next();
            User user = new User();
            user.setUserId(rs.getString("user_id"));
            user.setPassword(rs.getString("password"));
            user.setIs_banned(rs.getBoolean("is_banned"));
            user.setUser_name(rs.getString("user_name"));
            user.setUser_address(rs.getString("user_address"));
            user.setUser_tel(rs.getString("user_tel"));
            return user;
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }finally {
            daoUtils.closeConnection(conn,pstmt, rs);
        }

    }

    @Override
    public List<User> getAllUser() {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "select * from user";
            pstmt= conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            List<User> userList = new ArrayList<>();
            while(rs.next()) {
                User user = new User();
                user.setUserId(rs.getString("user_id"));
                user.setPassword(rs.getString("password"));
                user.setIs_banned(rs.getBoolean("is_banned"));
                user.setUser_name(rs.getString("user_name"));
                user.setUser_address(rs.getString("user_address"));
                user.setUser_tel(rs.getString("user_tel"));
                userList.add(user);
            }
            return userList;
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }finally {
            daoUtils.closeConnection(conn,pstmt, rs);
        }
    }

    @Override
    public List<User> getBanUser(boolean isBan) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "select * from user where is_banned = ?";
            pstmt= conn.prepareStatement(sql);
            pstmt.setBoolean(1, isBan);
            rs = pstmt.executeQuery();
            List<User> userList = new ArrayList<>();
            while(rs.next()) {
                User user = new User();
                user.setUserId(rs.getString("user_id"));
                user.setPassword(rs.getString("password"));
                user.setIs_banned(rs.getBoolean("is_banned"));
                user.setUser_name(rs.getString("user_name"));
                user.setUser_address(rs.getString("user_address"));
                user.setUser_tel(rs.getString("user_tel"));
                userList.add(user);
            }
            return userList;
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }finally {
            daoUtils.closeConnection(conn,pstmt, rs);
        }
    }

    @Override
    public void insertUser(User user) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "insert into user(user_id,password,is_banned, user_name" +
                    ", user_address, user_tel) values(?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getUserId());
            pstmt.setString(2, user.getPassword());
            pstmt.setBoolean(3, user.isIs_banned());
            pstmt.setString(4, user.getUser_name());
            pstmt.setString(5, user.getUser_address());
            pstmt.setString(6, user.getUser_tel());
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
    public void updateUser(User user) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "update user set password = ?, is_banned = ?, user_name = ?" +
                    ", user_address = ?, user_tel = ? where user_id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getPassword());
            pstmt.setBoolean(2, user.isIs_banned());
            pstmt.setString(3, user.getUser_name());
            pstmt.setString(4, user.getUser_address());
            pstmt.setString(5, user.getUser_tel());
            pstmt.setString(6, user.getUserId());
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
    public void deleteUser(String user_id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = daoUtils.getConnection();
            String sql = "delete from user where user_id = ?";
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

    public static void main(String[] args) {
        User user = new User();
        user.setUserId("test3好好");
        user.setPassword("Neusoft123-");
        user.setIs_banned(false);
        UserDao userDao = new UserDaoImpl();
//        userDao.deleteUser("test3好好");
        List<User> users = userDao.getAllUser();
        for (User temp : users) {
            System.out.println(temp);
        }
        System.out.println(userDao.getUser("test1"));
    }
}
