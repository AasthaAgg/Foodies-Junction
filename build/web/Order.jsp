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
    <body style="background-image: url('img/aa.jpeg'); background-repeat: no-repeat; background-size: cover; height: 100%; width: 100%">
        <div class="container-fluid">
            <%
                String mobile=session.getAttribute("mobile").toString();
                int count=1;
            
            %>
            <div id="header" style="height: 100px">
                <%@include file="Header.jsp" %>
            </div>
            
            <div id="content" class="container">
                <form method="post" action="ConfirmOrder.jsp"> 
                <fieldset class="border px-5">
                    <legend class="w-auto"><h2>Your Choices</h2></legend>
                    
                    <table class="table text-center bg-light">
                    <thead>
                        <th>Code</th>
                        <th>Food</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Delete Order</th>
                    </thead>
                    <tbody>
                        <tr style="border-bottom: 3px solid black">
                        <%
                              CuisinesAction ac=new CuisinesAction();
                              ResultSet rs=ac.getFoodCode(mobile) ;
                               
                              while(rs.next())
                              {
                                  ResultSet rs1= ac.getFoodDetail(rs.getInt(1));
                                
                                  while(rs1.next())
                                  {
                                      
                        %>
                        <tr>
                            <td style="text-align: center"><input style="width: 80px; border: none; text-align: center; background-color: #F8F9FA" type="text" value="<%=rs1.getInt(1) %>" name="code<%=count%>" readonly></td>
                            <td><%=rs1.getString(2)%></td>
                            <td>&#8377; <%=rs1.getInt(3)%></td>
                            <td> <input type="number" value="1" name="q<%=count++%>" style="width: 50px; text-align: center"></td>
                            <td><a href="DeleteItemServlet?codeno=<%=rs1.getInt(1) %>" onclick="return confirm('Are you sure want to delete Order')"><img src="icons/del.png" style="width: 30px; height:30px;"></a></td>
                        </tr>
                        
                        <%
                                 
                                  }
                              }

                         %>
                    </tbody>
                </table>
                    
                    <input type="text" value="<%=count-1%>" name="total" hidden>
                    <div class="text-center">
                       <input type="submit" value="Confirm" class="btn-lg btn-success">
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