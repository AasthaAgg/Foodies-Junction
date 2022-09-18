package foodiesservlet;

import foodiesaction.confirmAction;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ConfirmStatusServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        boolean b;
        
        int order_id=Integer.parseInt(request.getParameter("order_id"));
        String status=request.getParameter("status");
        
        confirmAction ac=new confirmAction();
        
        if(status.equalsIgnoreCase("Confirmed")){
            b=ac.statusConfirm("Confirmed",order_id);
        }
        else if(status.equals("Cancelled")){
            b=ac.statusConfirm("Cancelled",order_id);
        }
        else{
            b=ac.statusConfirm("Pending", order_id);
        }
        
        if(b==true){
            response.sendRedirect("AdminDeskboard.jsp");
        }
        
    }
}
