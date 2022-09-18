package foodiesservlet;

import foodiesaction.LoginAction;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String mob=request.getParameter("mob");
        String pwd=request.getParameter("pwd");
        
        LoginAction ac=new LoginAction();
        boolean b=ac.loginUser(mob, pwd);
                
        if(b==true)
        {
            HttpSession sess=request.getSession();
            sess.setAttribute("mobile", mob);
            response.sendRedirect("Menu.jsp");
        }
        else
        {
            response.sendRedirect("Login.jsp?msg=Invalid user or password!! Try again.");
        }
        
        
    }
}
