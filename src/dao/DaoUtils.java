package dao;

import java.sql.*;

public class DaoUtils {

    private static final String url = "jdbc:mysql://localhost:3306/cosmetic_store?"
            + "user=root&password=123456"
            + "&useUnicode=true&characterEncoding=UTF8"
            + "&useLegacyDatetimeCode=false&serverTimezone=UTC";
    private static DaoUtils daoUtils = null;
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private DaoUtils() {
    }

    public static DaoUtils getInstance(){
        if(daoUtils == null){
            daoUtils = new DaoUtils();
        }
        return daoUtils;
    }

    public Connection getConnection() {
        Connection connection=null;
        try {
            connection=DriverManager.getConnection(url);
        }catch(SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void closeConnection(Connection conn, Statement statement, ResultSet rs){
        try {
            if(rs!=null){
                rs.close();
            }
            if(statement != null) {
                statement.close();
            }
            if(conn != null) {
                conn.close();
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
