<%@page import="java.sql.ResultSet"%>
<%@page import="foodiesaction.CuisinesAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    </head>
    <body style="background-image: url('img/aa.jpeg'); background-repeat: no-repeat; background-size: cover; height: 100%">
        <div class="container-fluid">
            <%
                String mobile=session.getAttribute("mobile").toString();
                int count=Integer.parseInt(request.getParameter("total"));
                int i=1;
                CuisinesAction ac=new CuisinesAction();
                while(i<=count)
                {
                   int code=Integer.parseInt(request.getParameter("code"+i));
                   int q=Integer.parseInt(request.getParameter("q"+i));
                   
                   ac.foodOrderQuantity(code,q,mobile);
                    
                   i++;
                }
            %>
            
            <div id="header" style="height: 100px">
                <%@include file="Header.jsp" %>
            </div>
            
            <div id="content" class="container">
                <form method="post" action="payment.jsp"> 
                <fieldset class="border px-5">
                    <legend class="w-auto"><h2>Bill Receipt</h2></legend>
                    
                    <input type="text" value="<%=mobile%>" name="mobile" hidden/>    
                    <table class="table text-center bg-light">
                    <thead>
                        <th>Code</th>
                        <th>Food</th>
                        <th>Price Per Unit</th>
                        <th>Quantity</th>
                        <th>Total Price</th>
                    </thead>
                    <tr style="border-bottom:2px solid black">
                    <tbody>
                        <%
                             // CuisinesAction ac=new CuisinesAction();
                              ResultSet rs=ac.getFoodCode(mobile) ; 
                              int totalbill=0;
                              while(rs.next())
                              {
                                  ResultSet rs1= ac.getFoodDetail(rs.getInt(1));
                                  ResultSet rs2= ac.getFoodQuantity(rs.getInt(1),mobile);
             
                                  while(rs1.next() && rs2.next())
                                  {
                        %>
                        
                        <tr>
                            <td><%=rs1.getInt(1) %></td>
                            <td><%=rs1.getString(2)%></td>
                            <td>&#8377; <%=rs1.getInt(3)%></td>
                            <td><%=rs2.getInt(1)%></td>
                            <td>&#8377; <%=rs1.getInt(3)*rs2.getInt(1)%></td>
                        </tr>
                        
                        <%
                                  totalbill=totalbill+(rs1.getInt(3)*rs2.getInt(1));
                                  }
                              }
                         %>
                    <tr style="border-top:2px solid black">
                        <td colspan="4"><h6>Sub Total</h6></td>
                        <td>&#8377; <%=totalbill%></td>
                    </tr>
    
                    <tr>
                        <td colspan="4"><h6>Tax (5%)</h6></td>
                        <td>&#8377; <%=((0.05)*totalbill)%></td>
                    </tr>
                                                           
                    <tr style="border-top:3px solid black">
                        <td colspan="4"><h4>Total Bill</h4></td>
                        <td style="width: 10%"><h4><input type="text" value="<%=totalbill+((0.05)*totalbill)%>" name="amount" style="border:none; text-align: center; background-color: #F8F9FA" readonly></h4></td>
                    </tr>
                    </tbody>
                </table>
           
                    <div class="text-center">
                        <input type="submit" value="Confirm Order" class="btn-lg btn-success">
                    </div>
                </fieldset> 
                </form>   
                
            </div>
            <div id="footer" style="height: 100px; width: 100%; position: fixed; bottom: 0">
                <%@include file="Footer.jsp" %>
            </div>
        </div>
    </body>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/jquery.js" type="text/javascript"></script>
</html>