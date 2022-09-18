package foodiesservlet;

import foodiesaction.FeedbackAction;
import foodiesaction.RegisterAction;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String mob=request.getParameter("mob");
        String pwd=request.getParameter("pwd");
        
        RegisterAction ac=new RegisterAction();
        if(ac.registerUser(fname, lname, mob, pwd))
        {
            FeedbackAction fa=new FeedbackAction();
            fa.insertFeed(mob);
            response.sendRedirect("Login.jsp?msg=Signed Up Successfully!!  Login Now...");
        }
        
    }
}
