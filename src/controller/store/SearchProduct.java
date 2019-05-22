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
import java.util.List;

@SuppressWarnings("ALL")
public class SearchProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        SELECT * FROM [user] WHERE u_name LIKE '%三%'
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String searchKey = request.getParameter("search_key");
        if(searchKey == null){
            searchKey = "";
        }
        String page = request.getParameter("page_num");
        ProductDao productDao = new ProductDaoImpl();
        List<Product> productList = productDao.searchProductList(0, 4, searchKey);
        request.setAttribute("productList", productList);
        request.setAttribute("page_num", 0);
        request.setAttribute("product_amount", 4);
        request.setAttribute("page_amount", 1);
        request.getRequestDispatcher("multiProduct.jsp").forward(request, response);
    }
}
