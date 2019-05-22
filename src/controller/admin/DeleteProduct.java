package controller.admin;

import util.CheckLogin;
import dao.ProductDao;
import dao.ProductDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DeleteProduct")
public class DeleteProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            if(!CheckLogin.checkAdminLogin(request, response)){
                return;
            }
            request.setCharacterEncoding("utf-8");
            response.setCharacterEncoding("utf-8");
            int product_id = Integer.parseInt(request.getParameter("product_id"));
            ProductDao productDao = new ProductDaoImpl();
            productDao.deleteProduct(product_id);
            PrintWriter writer = response.getWriter();
            response.setContentType("text/plain");
            writer.println("{\"code\": 1}");
        }catch (NumberFormatException e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
