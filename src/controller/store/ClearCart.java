package controller.store;

import dao.CartItemDao;
import dao.CartItemDaoImpl;
import dao.OrderDao;
import dao.OrderDaoImpl;
import pojo.CartItem;
import pojo.User;
import pojo.Order;
import util.CheckLogin;
import util.Convert;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@SuppressWarnings("ALL")
public class ClearCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter writer = response.getWriter();
        if(!CheckLogin.checkUserLogin(request)){
            writer.println("{\"code\":0}");
        }else{
            User user = (User)request.getSession().getAttribute("user");
            CartItemDao cartItemDao = new CartItemDaoImpl();
            List<CartItem> cart = cartItemDao.getCart(user.getUserId());
            Order order = Convert.convert(cart);
            order.setUser_id(user.getUserId());
            OrderDao orderDao = new OrderDaoImpl();
            orderDao.insertOrder(order);
            cartItemDao.deleteCart(user.getUserId());
            writer.println("{\"code\":1}");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
