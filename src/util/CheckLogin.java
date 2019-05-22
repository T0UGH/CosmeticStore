package util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class CheckLogin {
    public static boolean checkAdminLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session=request.getSession();
        if(session == null || session.getAttribute("login") == null){
            response.sendRedirect(request.getContextPath()+"/admin/loginPage");
            return false;
        }else {
            return true;
        }
    }

    public static boolean checkUserLogin(HttpServletRequest request){
        HttpSession session=request.getSession();
        if(session == null || session.getAttribute("user") == null){
            return false;
        }else {
            return true;
        }
    }
}
