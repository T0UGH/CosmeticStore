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
import java.io.PrintWriter;
import java.util.List;

public class ManageProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(!CheckLogin.checkAdminLogin(request, response)){
            return;
        }
        String page = request.getParameter("page_num");
        int pageNum = page == null ? 0 : Integer.parseInt(page);
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        ProductDao productDao = new ProductDaoImpl();
        List<Product> productList = productDao.getProductList(pageNum * 10, 10);
        request.setAttribute("productList", productList);
        PrintWriter writer = response.getWriter();
        request.getRequestDispatcher("manageProduct.jsp").forward(request, response);
    }
}
