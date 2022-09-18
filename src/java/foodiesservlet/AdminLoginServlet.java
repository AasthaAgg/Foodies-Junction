package foodiesservlet;

import foodiesaction.AdminLoginAction;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AdminLoginServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String mob=request.getParameter("mob");
        String pwd=request.getParameter("pwd");
        
        AdminLoginAction ac=new AdminLoginAction();
        boolean b=ac.adminLogin(mob, pwd);
        
        if(b==true)
        {
            HttpSession sess=request.getSession();
            sess.setAttribute("adminmobile", mob);
            response.sendRedirect("AdminDeskboard.jsp");
        }
        else
        {
            response.sendRedirect("Admin.jsp?msg=Invalid user or password!! Try again..");
        }
        
         
        
        
    }

}
