<%@page import="foodiesaction.CuisinesAction"%>
<%
    
    String mob=session.getAttribute("mobile").toString();
    String code=request.getParameter("code");
    if(!mob.equals(""))
    {
        CuisinesAction ac=new CuisinesAction();
        ac.addItem(mob, code);
        response.sendRedirect("Menu.jsp");   
    }
    else
    {
        response.sendRedirect("Login.jsp");
    }

%>