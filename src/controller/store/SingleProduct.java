package controller.store;

import dao.ProductDao;
import dao.ProductDaoImpl;
import pojo.Product;
import pojo.User;
import util.CheckLogin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SingleProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            int product_id = Integer.parseInt(request.getParameter("product_id"));
            ProductDao productDao = new ProductDaoImpl();
            Product product = productDao.getProduct(product_id);
            User user = (User) request.getSession().getAttribute("user");
            request.setAttribute("product", product);
            request.setAttribute("user", user);
            request.getRequestDispatcher("product.jsp").forward(request, response);
        }catch (NumberFormatException e){
            e.printStackTrace();
        }
    }
}
