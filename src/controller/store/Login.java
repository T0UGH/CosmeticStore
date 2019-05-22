package controller.store;

import dao.UserDao;
import dao.UserDaoImpl;
import pojo.User;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user_id = request.getParameter("user_id");
        String password = request.getParameter("password");
        UserDao userDao = new UserDaoImpl();
        User user = userDao.getUser(user_id);
        if(user != null && user.getPassword().equals(password)){
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.sendRedirect(request.getContextPath()+"/store/index");
        }else{
            response.sendRedirect(request.getContextPath()+"/store/fail");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
