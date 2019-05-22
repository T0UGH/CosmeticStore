package controller.store;

import dao.CartItemDao;
import dao.CartItemDaoImpl;
import pojo.CartItem;
import pojo.User;
import util.CheckLogin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class MyPage extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(CheckLogin.checkUserLogin(request)){
            HttpSession session = request.getSession();
            User user =  (User)session.getAttribute("user");
            request.setAttribute("user", user);
            request.getRequestDispatcher("myPage.jsp").forward(request, response);
        }else{
            response.sendRedirect(request.getContextPath()+"/store/fail");
        }
    }
}
