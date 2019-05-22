package controller.store;

import dao.ProductDao;
import dao.ProductDaoImpl;
import pojo.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@SuppressWarnings("ALL")
public class MultiProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page_num");
        int pageNum = page == null ? 0 : Integer.parseInt(page);
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        ProductDao productDao = new ProductDaoImpl();
        List<Product> productList = productDao.getProductList(pageNum, 4);
        int product_amount = productDao.countProduct();
        request.setAttribute("productList", productList);
        request.setAttribute("page_num", pageNum);
        request.setAttribute("product_amount", product_amount);
        request.setAttribute("page_amount", (int)(Math.ceil((double)product_amount / 4)));
        request.getRequestDispatcher("multiProduct.jsp").forward(request, response);
    }
}
