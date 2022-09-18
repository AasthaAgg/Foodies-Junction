package foodiesservlet;

import foodiesaction.CuisinesAction;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DeleteItemServlet extends HttpServlet {
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
            
        String code=request.getParameter("codeno");
        
        int codeno =Integer.parseInt(code);
        CuisinesAction ac=new CuisinesAction();
        
        if(ac.deleteOrder(codeno))
        {
            response.sendRedirect("Order.jsp");
        }
        
        
    }

}
