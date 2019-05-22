package controller.store;

import dao.CartItemDao;
import dao.CartItemDaoImpl;
import pojo.CartItem;
import pojo.User;
import util.CaculateCart;
import util.CheckLogin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


public class Cart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(CheckLogin.checkUserLogin(request)){
            HttpSession session = request.getSession();
            User user =  (User)session.getAttribute("user");
            CartItemDao cartItemDao = new CartItemDaoImpl();
            List<CartItem> cart = cartItemDao.getCart(user.getUserId());
            request.setAttribute("cart", cart);
            request.getRequestDispatcher("cart.jsp").forward(request, response);
        }else{
            response.sendRedirect(request.getContextPath()+"/store/fail");
        }
    }
}
