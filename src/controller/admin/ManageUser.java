package controller.admin;

import util.CheckLogin;
import dao.UserDao;
import dao.UserDaoImpl;
import pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@SuppressWarnings("ALL")
public class ManageUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(!CheckLogin.checkAdminLogin(request, response)){
            return;
        }
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        UserDao userDao = new UserDaoImpl();
        List<User> userList =  userDao.getAllUser();
        request.setAttribute("userList", userList);
        PrintWriter writer = response.getWriter();
        request.getRequestDispatcher("manageUser.jsp").forward(request, response);
    }
}
