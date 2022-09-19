<%@page import="foodiesaction.confirmAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    </head>
    <body style="background-image: url('img/aa.jpeg'); background-size: cover">
        <%
            String mobile=session.getAttribute("mobile").toString();
            String amount=request.getParameter("amount");
            
            confirmAction ac=new confirmAction();
            ac.confirmOrder(mobile,amount);
        %>
        <div id="header" style="height: 100px">
                <%@include file="Header.jsp" %>
        </div>
            
        <div id='content'  class="container text-center text-white">
            <h3>SCAN TO PAY!!</h3><br>
            
            <img src="img/QR.jpeg">
            <h4>Amount Payable : &#8377; <% out.print(amount);  %>/-</h4>
        </div>
        
        <div id="footer" style="height: 100px; width: 100%; position: fixed; bottom: 0">
                <%@include file="Footer.jsp" %>
        </div>
    </body>
</html>
