package controller.admin;

import util.CheckLogin;
import dao.ProductDao;
import dao.ProductDaoImpl;
import pojo.Product;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@SuppressWarnings("ALL")
public class ModifyProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            if(!CheckLogin.checkAdminLogin(request, response)){
                return;
            }
            request.setCharacterEncoding("utf-8");
            Product product = new Product();
            product.setProduct_id(Integer.parseInt(request.getParameter("product_id")));
            product.setProduct_name(request.getParameter("product_name"));
            product.setProduct_remain(Integer.parseInt(request.getParameter("product_remain")));
            product.setProduct_standard(request.getParameter("product_standard"));
            product.setProduct_img(request.getParameter("product_img"));
            product.setProduct_price(Float.parseFloat(request.getParameter("product_price")));
            ProductDao productDao = new ProductDaoImpl();
            productDao.updateProduct(product);
        }catch (NumberFormatException e){
            e.printStackTrace();

        }finally {
            response.sendRedirect(request.getContextPath()+"/admin/manageProductPage");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
