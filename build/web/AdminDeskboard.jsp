<%@page import="foodiesaction.AdminAction"%>
<%@page import="foodiesaction.FeedbackAction"%>
<%@page import="foodiesaction.RegisterAction"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="foodiesaction.confirmAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    </head>
    <body style="background-color: #E9E9E9">
        
        <div id="header" style="height: 100px">
            <div class="row" style="width: 96%; left: 2%; position: fixed">        
                
                <div class="col-7 my-4" style="height: 100%; left: 4%">
                    <img src="icons/logo00.png">
                </div>
                <div class="col-5 my-4">
                    <ul class="nav navbar-expand-md bg-light" style="opacity: 75%">
                        
                        
                    </ul>
                </div>
            </div>
        </div>
        
        <div id="content" class="container-fluid">
            <div class="row text-white">
                
                <div class="col m-3" style="background-color: #EA1E63">
                    <div style="height: 100%; width: 20%; float: left; background-color: #CB1955"><img src="icons/earnings.png" class="p-2"></div>
                    <div class="pl-3" style="width: 80%; float: right">
                        Today's earnings
                        <%
                            AdminAction ac1=new AdminAction();
                            ResultSet rs1=ac1.getEarnings();
                            
                            float total=0;
                            
                            while(rs1.next()){
                                total=total+rs1.getFloat(1);
                            }
                            
                        %>
                        <h5 class="p-2">&#8377; <%=total%></h5>
                    </div>
                </div>
                    
                <div class="col m-3" style="background-color: #00BCD5">
                    <div style="height: 100%; width: 20%; float: left; background-color: #00A6B8"><img src="icons/customers.png" class="p-2"></div>
                    <div class="pl-3" style="width: 80%; float: right">
                        Total Customers
                        <% 
                             AdminAction ac2=new AdminAction();
                             ResultSet rs2=ac2.getCustomers();
                             
                             int i=0;
                             
                             if(rs2.next()){
                                 i=rs2.getInt(1);
                             }
                        %>
                        <h5 class="p-2"><%=i%></h5>
                    </div>
                </div>
                    
                <div class="col m-3" style="background-color: #8BC24A">
                    <div style="height: 100%; width: 20%; float: left; background-color: #78AC40"><img src="icons/today's order.png" class="p-2"></div>
                    <div class="pl-3" style="width: 80%; float: right">
                        Today's Orders
                        <%
                            AdminAction ac3=new AdminAction();
                             ResultSet rs3=ac3.getOrders();
                             
                             int j=0;
                             
                             if(rs3.next()){
                                 j=rs3.getInt(1);
                             }
                        %>
                        <h5 class="p-2"><%=j%></h5>
                    </div>
                </div>
                    
                <div class="col m-3" style="background-color: #FF9800">
                    <div style="height: 100%; width: 20%; float: left; background-color: #E18700"><img src="icons/_feedback.png" class="p-2"></div>
                    <div class="pl-3" style="width: 80%; float: right">
                        New Feedback
                        <%
                            AdminAction ac4=new AdminAction();
                            ResultSet rs4=ac4.getFeed();
                             
                            int k=0;
                             
                            if(rs4.next()){
                                k=rs4.getInt(1);
                            }
                        %>
                        <h5 class="p-2"><%=k%></h5>
                        
                    </div>
                </div>
                
            </div>

            <div class="row">
                <div class="col m-3 p-3" style="background-color: white; height: 100%">
                    <h4 class="text-center bg-dark text-white py-2">Received Orders List</h4>
                    
                    <table class="table text-center">
                        <thead>
                            <th>Order Id</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Mobile</th>
                            <th>Amount</th>
                            <th>Status</th>
                            <th colspan="2">Verify</th>
                        </thead>
                        <tr style="border-bottom:2px solid"></tr>
                        <tbody>
                        <%
                            confirmAction ac=new confirmAction();
                            ResultSet rs=ac.getOrderDetails();
                            
                            while(rs.next())
                            {
                                String s1="Confirmed";
                                String s2="Cancelled";
                                
                        %>    
                            <tr>
                                <td><%=rs.getInt(1)%></td>
                                <td class="px-0"><%=rs.getDate(5)%></td>
                                <td class="px-0"><%=rs.getTime(5)%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td style="color: <% if(rs.getString(4).equals("Confirmed")){   %>#8BC24A<%} else if(rs.getString(4).equals("Cancelled")){  %>#EA1E63<% }else{ %>#FF9800<% } %>       "><%=rs.getString(4)%></td>
                                
                                <td><a href="ConfirmStatusServlet?order_id=<%=rs.getInt(1)%>&status=<%=s1%>"><img src="icons/confirm.png"></a></td>
                                <td><a href="ConfirmStatusServlet?order_id=<%=rs.getInt(1)%>&status=<%=s2%> "><img src="icons/close.png"></a></td>
                            </tr>
                            
                        <%
                            }    
                        %>    
                        </tbody>
                    </table>
                    
                </div>
                
                <div class="col-3 m-3 p-3" style="background-color: white; height: 100%">
                    <h4 class="text-center py-2 bg-dark text-white">Order Statistics</h4>
                    
                    <div class="row text-white">
                        <div class="mx-3 mt-3" style="width: 100%; float: left; background-color: #8BC24A">
                                <div style="height: 100%; width: 20%; float: left; background-color: #78AC40">
                                    <img src="icons/confirmed.png" class="p-2">
                                </div>
                            <div class="pl-3" style="width: 80%; float: right">
                                    Confirmed Orders
                                    <%
                                            AdminAction ac5=new AdminAction();
                                            ResultSet rs5=ac5.getConfirmedStatus();

                                            int a=0;

                                            if(rs5.next()){
                                                a=rs5.getInt(1);
                                            }
                                        %>
                                        <h5 class="p-2"><%=a%></h5>
                                </div>
                            </div>
                        
                        <div class="mx-3 mt-3" style="width: 100%; float: left; background-color: #FF9800">
                            <div style="height: 100%; width: 20%; float: left; background-color: #E18700">
                                <img src="icons/pendin.png" class="p-2">
                            </div>
                            <div class="pl-3" style="width: 80%; float: right">
                                Pending Orders
                                <%
                                    AdminAction ac6=new AdminAction();
                                    ResultSet rs6=ac6.getPendingStatus();

                                    int b=0;

                                    if(rs6.next()){
                                        b=rs6.getInt(1);
                                    }
                                %>
                                <h5 class="p-2"><%=b%></h5>
                            </div>
                        </div>
                        
                        <div class="mx-3 mt-3" style="width: 100%; float: left; background-color: #EA1E63">
                            <div style="height: 100%; width: 20%; float: left; background-color: #CB1955">
                                <img src="icons/cancelled.png" class="p-2">
                            </div>
                            <div class="pl-3" style="width: 80%; float: right">
                                Cancelled Orders
                                <%
                                    AdminAction ac7=new AdminAction();
                                    ResultSet rs7=ac7.getCancelledStatus();

                                    int c=0;

                                    if(rs7.next()){
                                        c=rs7.getInt(1);
                                    }
                                %>
                                <h5 class="p-2"><%=c%></h5>
                            </div>
                        </div>
                                
                    </div>
                </div>
                
            </div>

            <div class="row">
                
                <div class="col m-3 p-3" style="background-color: white; height: 100%">
                    <h4 class="text-center bg-dark text-white py-2">Today's Hot Menu</h4>
                    
                    
                </div>
                
                <div class="col-7 m-3 p-3" style="background-color: white">
                    <h4 class="text-center bg-dark text-white py-2">Our Menu</h4>
                    <table class="table text-center">
                        <thead>
                            <th>Code</th>
                            <th>Category</th>
                            <th>Item Name</th>
                            <th>Price</th>
                        </thead>
                        <tr style="border-bottom:2px solid"></tr>
                        <tbody>
                            <%
                                AdminAction ac8=new AdminAction();
                                ResultSet rs8=ac8.getMenu();
                                
                                while(rs8.next()){
                                                                
                            %>    
                            <tr>
                                <td><%=rs8.getInt(1)%></td>
                                <td><% 
                                        if(rs8.getInt(1)>=101 && rs8.getInt(1)<=110){
                                    %>
                                    Andhra Cuisines
                                    <%
                                        }
                                        else if(rs8.getInt(1)>=111 && rs8.getInt(1)<=120){
                                    %>
                                    Gujarati Cuisines
                                    <%
                                        }
                                        else if(rs8.getInt(1)>=121 && rs8.getInt(1)<=130){
                                    %>
                                    Maharashtrian Cuisines
                                    <%
                                        }
                                        else if(rs8.getInt(1)>=131 && rs8.getInt(1)<=140){
                                    %>
                                    Punjabi Cuisines
                                    <%
                                        }
                                        else if(rs8.getInt(1)>=141 && rs8.getInt(1)<=150){
                                    %>
                                    Rajasthani Cuisines
                                    <%
                                        }
                                        else if(rs8.getInt(1)>=151 && rs8.getInt(1)<=160){
                                    %>
                                    Uttar Pradesh Cuisines
                                    <%
                                        }
                                        else if(rs8.getInt(1)>=201 && rs8.getInt(1)<=210){
                                    %>
                                    Shakes
                                    <%
                                        }
                                        else if(rs8.getInt(1)>=211 && rs8.getInt(1)<=220){
                                    %>
                                    Fruit Smoothies
                                    <%
                                        }
                                        else if(rs8.getInt(1)>=221 && rs8.getInt(1)<=230){
                                    %>
                                    Mocktails
                                    <%
                                        }
                                        else if(rs8.getInt(1)>=301 && rs8.getInt(1)<=310){
                                    %>
                                    Cakes & Pastries
                                    <%
                                        }
                                    %>
                                </td>
                                <td><%=rs8.getString(2)%></td>
                                <td><%=rs8.getInt(3)%></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                    
                </div>
                
            </div>
        </div>
        
        <div id="footer" style="height: 100px; width: 100%">
            <%@include file="Footer.jsp" %>
        </div>
            
    </body>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    
</html>
