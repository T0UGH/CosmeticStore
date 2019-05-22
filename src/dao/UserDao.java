package dao;

import pojo.User;

import java.util.List;

public interface UserDao {
    User getUser(String user_id);
    void insertUser(User user);
    void updateUser(User user);
    void deleteUser(String user_id);
    List<User> getAllUser();
    List<User> getBanUser(boolean isBan);
}
