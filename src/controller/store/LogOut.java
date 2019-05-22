package controller.store;

import pojo.User;
import util.CheckLogin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LogOut extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(CheckLogin.checkUserLogin(request)){
            HttpSession session = request.getSession();
            session.setAttribute("user", null);
            response.sendRedirect(request.getContextPath()+"/store/index");
        }else{
            response.sendRedirect(request.getContextPath()+"/store/fail");
        }
    }
}
