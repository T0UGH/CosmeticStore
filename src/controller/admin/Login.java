package controller.admin;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user_id = request.getParameter("user_id");
        String password = request.getParameter("password");
        if(user_id.equals("admin")&&password.equals("admin")){
            HttpSession session=request.getSession();
            session.setAttribute("login", "login");
            response.sendRedirect(request.getContextPath()+"/admin/manageUser");
        }else{
            response.sendRedirect(request.getContextPath()+"/admin/loginPage");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
