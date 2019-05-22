package controller.store;

import dao.CartItemDao;
import dao.CartItemDaoImpl;
import dao.ProductDao;
import dao.ProductDaoImpl;
import pojo.CartItem;
import pojo.Product;
import pojo.User;
import util.CheckLogin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddCart")
public class AddCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter writer = response.getWriter();
        try{
            if(!CheckLogin.checkUserLogin(request)){
                writer.println("{\"code\":0}");
            }else{
                User user = (User)request.getSession().getAttribute("user");
                int product_id = Integer.parseInt(request.getParameter("product_id"));
                CartItemDao cartItemDao = new CartItemDaoImpl();
                CartItem cartItem = new CartItem();
                cartItem.setProduct_id(product_id);
                cartItem.setUser_id(user.getUserId());
                cartItemDao.insertCartItem(cartItem);
                writer.println("{\"code\":1}");
            }

        }catch (NumberFormatException e){
            e.printStackTrace();
            writer.println("{\"code\":0}");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
