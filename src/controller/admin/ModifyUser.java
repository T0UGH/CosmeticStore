package controller.admin;

import util.CheckLogin;
import dao.UserDao;
import dao.UserDaoImpl;
import pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@SuppressWarnings("ALL")
public class ModifyUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            if(!CheckLogin.checkAdminLogin(request, response)){
                return;
            }
            request.setCharacterEncoding("utf-8");
            User user = new User();
            user.setUserId(request.getParameter("user_id"));
            user.setPassword(request.getParameter("password"));
            user.setIs_banned(Boolean.parseBoolean(request.getParameter("is_banned")));
            user.setUser_name(request.getParameter("user_name"));
            user.setUser_address(request.getParameter("user_address"));
            user.setUser_tel(request.getParameter("user_tel"));
            UserDao userDao = new UserDaoImpl();
            userDao.updateUser(user);
        }catch (NumberFormatException e){
            e.printStackTrace();

        }finally {
            response.sendRedirect(request.getContextPath()+"/admin/manageUser");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
