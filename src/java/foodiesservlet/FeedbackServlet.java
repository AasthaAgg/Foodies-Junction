package foodiesservlet;

import foodiesaction.FeedbackAction;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FeedbackServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String r=request.getParameter("rate");
        
        int rate=Integer.parseInt(r);
        
        String mobile=request.getParameter("mob");
        String field=request.getParameter("field");
                
        FeedbackAction ac=new FeedbackAction();
        ac.updateFeed(rate,mobile,field);
        
        response.sendRedirect("Feedback.jsp");
    }

}
