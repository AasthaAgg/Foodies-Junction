<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    </head>
    <body style="background-image: url('img/bg_login.jpg'); background-size: cover">
        <div id="main">
            <div id="header" style="height: 100px">
                <%@include file="Header.jsp" %>
            </div>
                <%
                          String msg=request.getParameter("msg");
                          if(msg!=null){
                %>
                <center><h4 style="color: white"><%out.print(msg);}%></h4></center>
                <div class="container">
                    
                    <fieldset class="border px-5">
                        <legend class="w-auto" style="color: white">User Login</legend>

                        <br>
                        <h6 class="text-center" style="color: white">Don't have an Account? <a href="SignUp.jsp">Sign Up</a></h6>
                        <br>

                        <form method="post" action="LoginServlet">
                            <div class="form-group">
                                <label style="color: white">Enter Mobile No.</label>
                                <input type="tel" pattern=".{10}" name="mob" placeholder="Mobile No" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label style="color: white">Enter Password</label>
                                <input type="password" name="pwd" placeholder="Password" class="form-control"/>
                            </div>
                            <div class="form-group text-center">
                                <button type="submit" class="btn-lg btn-info px-5"><b>LOGIN</b></button>
                            </div>        
                        </form>
                
                    </fieldset>
                </div>
            
            <div id="footer" style="height: 100px; width: 100%; position: fixed; bottom: 0">
                <%@include file="Footer.jsp" %>
            </div>
        </div>
    </body>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
</html>
