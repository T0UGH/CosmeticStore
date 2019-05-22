package controller.store;

import dao.UserDao;
import dao.UserDaoImpl;
import pojo.User;
import util.CheckLogin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@SuppressWarnings("ALL")
public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            request.setCharacterEncoding("utf-8");
            User user = new User();
            user.setUserId(request.getParameter("user_id"));
            user.setPassword(request.getParameter("user_password"));
            user.setIs_banned(false);
            user.setUser_name(request.getParameter("user_name"));
            user.setUser_address(request.getParameter("user_address"));
            user.setUser_tel(request.getParameter("user_tel"));
            UserDao userDao = new UserDaoImpl();
            userDao.insertUser(user);
            //这个需要改到首页
            response.sendRedirect(request.getContextPath()+"/store/index");
        }catch (NumberFormatException e){
            e.printStackTrace();
            response.sendRedirect(request.getContextPath()+"/store/registerPage");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
