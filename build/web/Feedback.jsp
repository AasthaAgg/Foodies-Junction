<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="foodiesaction.FeedbackAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    </head>
    
    <body style="background-image: url(img/03.jpg); background-size: cover; background-repeat: no-repeat">
        <div class="container-fluid">
            <div id="header" style="height: 100px">
                <%@include file="Header.jsp" %>
            </div>
            
            <div id="content">
                <div class="bg-light p-5" style="width: 80%; opacity: 70%">
                    <div id="blockhead" class="text-center">
                        <h1>FOOD EVALUATION</h1>
                        <h4>Please evaluate our Food</h4><br>
                    </div>
                    <div id="blockcontent">
                        
                        <form method="post">
                            <h5>Were you satisfied with the following aspects of our food:</h5>
                            <table class="table table-borderless">
                                
                                <thead>
                                    <tr  class="text-center">
                                        <th scope="col"></th>
                                        <th scope="col">Very Unsatisfied</th>
                                        <th scope="col">Unsatisfied</th>
                                        <th scope="col">Neutral</th>
                                        <th scope="col">Satisfied</th>
                                        <th scope="col">Very Satisfied</th>
                                    </tr>
                                </thead>
                                
                                <%
                                    String mobile=session.getAttribute("mobile").toString();
                                    
                                    FeedbackAction ac=new FeedbackAction();
                                    ResultSet rs=ac.getFeed(mobile);
                                    if(rs.next())
                                    {    
                                      
                                %>
                                
                                <tbody class="text-center">
                                    
                                    <tr>
                                        <th scope="row" class="text-left">Quality of Food</th>
                                        <td><a href="FeedbackServlet?rate=1&mob=<%=mobile%>&field=<%="quality"%>"><img src="icons/Rate_1.png" <% if(rs.getInt(2)==1){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td>
                                        <td><a href="FeedbackServlet?rate=2&mob=<%=mobile%>&field=<%="quality"%>"><img src="icons/Rate_2.png" <% if(rs.getInt(2)==2){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=3&mob=<%=mobile%>&field=<%="quality"%>"><img src="icons/Rate_3.png" <% if(rs.getInt(2)==3){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=4&mob=<%=mobile%>&field=<%="quality"%>"><img src="icons/Rate_4.png" <% if(rs.getInt(2)==4){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=5&mob=<%=mobile%>&field=<%="quality"%>"><img src="icons/Rate_5.png" <% if(rs.getInt(2)==5){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                    </tr>
                                    <tr>
                                        <th scope="row" class="text-left">Service</th>
                                        <td><a href="FeedbackServlet?rate=1&mob=<%=mobile%>&field=<%="service"%>"><img src="icons/Rate_1.png" <% if(rs.getInt(3)==1){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td>
                                        <td><a href="FeedbackServlet?rate=2&mob=<%=mobile%>&field=<%="service"%>"><img src="icons/Rate_2.png" <% if(rs.getInt(3)==2){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=3&mob=<%=mobile%>&field=<%="service"%>"><img src="icons/Rate_3.png" <% if(rs.getInt(3)==3){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=4&mob=<%=mobile%>&field=<%="service"%>"><img src="icons/Rate_4.png" <% if(rs.getInt(3)==4){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=5&mob=<%=mobile%>&field=<%="service"%>"><img src="icons/Rate_5.png" <% if(rs.getInt(3)==5){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                    </tr>
                                    <tr>
                                        <th scope="row" class="text-left">Value of Money</th>
                                        <td><a href="FeedbackServlet?rate=1&mob=<%=mobile%>&field=<%="money"%>"><img src="icons/Rate_1.png" <% if(rs.getInt(4)==1){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=2&mob=<%=mobile%>&field=<%="money"%>"><img src="icons/Rate_2.png" <% if(rs.getInt(4)==2){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=3&mob=<%=mobile%>&field=<%="money"%>"><img src="icons/Rate_3.png" <% if(rs.getInt(4)==3){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=4&mob=<%=mobile%>&field=<%="money"%>"><img src="icons/Rate_4.png" <% if(rs.getInt(4)==4){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=5&mob=<%=mobile%>&field=<%="money"%>"><img src="icons/Rate_5.png" <% if(rs.getInt(4)==5){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                    </tr>
                                    <tr>
                                        <th scope="row" class="text-left">Response Time</th>
                                        <td><a href="FeedbackServlet?rate=1&mob=<%=mobile%>&field=<%="time"%>"><img src="icons/Rate_1.png" <% if(rs.getInt(5)==1){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=2&mob=<%=mobile%>&field=<%="time"%>"><img src="icons/Rate_2.png" <% if(rs.getInt(5)==2){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=3&mob=<%=mobile%>&field=<%="time"%>"><img src="icons/Rate_3.png" <% if(rs.getInt(5)==3){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=4&mob=<%=mobile%>&field=<%="time"%>"><img src="icons/Rate_4.png" <% if(rs.getInt(5)==4){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=5&mob=<%=mobile%>&field=<%="time"%>"><img src="icons/Rate_5.png" <% if(rs.getInt(5)==5){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                    </tr>
                                    <tr>
                                        <th scope="row" class="text-left">Overall Experience</th>
                                        <td><a href="FeedbackServlet?rate=1&mob=<%=mobile%>&field=<%="experience"%>"><img src="icons/Rate_1.png" <% if(rs.getInt(6)==1){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=2&mob=<%=mobile%>&field=<%="experience"%>"><img src="icons/Rate_2.png" <% if(rs.getInt(6)==2){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=3&mob=<%=mobile%>&field=<%="experience"%>"><img src="icons/Rate_3.png" <% if(rs.getInt(6)==3){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=4&mob=<%=mobile%>&field=<%="experience"%>"><img src="icons/Rate_4.png" <% if(rs.getInt(6)==4){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                        <td><a href="FeedbackServlet?rate=5&mob=<%=mobile%>&field=<%="experience"%>"><img src="icons/Rate_5.png" <% if(rs.getInt(6)==5){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                    </tr>
                                </tbody>
                                    
                            </table>
                            
                        </form>
                        
                        <br>
                        <h5>Would you like to celebrate:</h5>
                        <table class="table table-borderless">
                            <thead>
                                <tr class="text-center">
                                    <th scope="col"></th>
                                    <th scope="col">YES</th>
                                    <th scope="col">No</th>
                                </tr>
                            </thead>
                            
                            <tbody>
                                <tr>
                                    <th scope="row">Birthday Party</th>
                                    <td class="text-center"><a href="FeedbackServlet?rate=1&mob=<%=mobile%>&field=<%="birthday"%>"><img src="icons/Rate_5.png" <% if(rs.getString(7).equals("Yes")){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                    <td class="text-center"><a href="FeedbackServlet?rate=2&mob=<%=mobile%>&field=<%="birthday"%>"><img src="icons/Rate_1.png" <% if(rs.getString(7).equals("No")){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                </tr>
                                <tr>
                                    <th scope="row">Wedding Anniversary</th>
                                    <td class="text-center"><a href="FeedbackServlet?rate=1&mob=<%=mobile%>&field=<%="anniversary"%>"><img src="icons/Rate_5.png" <% if(rs.getString(8).equals("Yes")){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                    <td class="text-center"><a href="FeedbackServlet?rate=2&mob=<%=mobile%>&field=<%="anniversary"%>"><img src="icons/Rate_1.png" <% if(rs.getString(8).equals("No")){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                </tr>
                                <tr>
                                    <th scope="row">Other Party</th>
                                    <td class="text-center"><a href="FeedbackServlet?rate=1&mob=<%=mobile%>&field=<%="other"%>"><img src="icons/Rate_5.png" <% if(rs.getString(9).equals("Yes")){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                    <td class="text-center"><a href="FeedbackServlet?rate=2&mob=<%=mobile%>&field=<%="other"%>"><img src="icons/Rate_1.png" <% if(rs.getString(9).equals("No")){ %> class="border rounded-circle" style="background-color: #FEE86E" <% } %>></a></td> 
                                </tr>
                            </tbody>
                            
                                <% 
                                    }
                                %>     
                        </table>
                    </div>
                        
                    </div>
                </div>
            </div>
            
            <div id="footer" style="height: 100px; width: 100%">
                <%@include file="Footer.jsp" %>
            </div>
        </div>
    </body>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
</html>
