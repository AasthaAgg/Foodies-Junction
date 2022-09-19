<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link href="css/Order.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    </head>
    <body style="background-image: url('img/bg_signup.jpg'); background-size: cover">
            
        <div>
            <div id="header" style="height: 100px">
                <%@include file="Header.jsp" %>
            </div>
            
            <div id="content" style="height: 630px; width: 100%">
                
                <div id="right" class="container" style="width: 40%; float: right; margin-right: 3%">
                    <fieldset class="border px-5">
                    <legend class="w-auto" style="color: white">Sign Up</legend>
                    
                    <br><h6 class="text-center" style="color:white">If you already have an Account <a href="Login.jsp">LOGIN</a></h6><br>
                    
                    <form method="post" action="RegisterServlet">
                        <div class="form-group">
                            <label style="color: white">First Name</label>
                            <input type="text" name="fname" placeholder="First Name" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label style="color: white">Last Name</label>
                            <input type="text" name="lname" placeholder="Last Name" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label style="color: white">Mobile No.</label>
                            <input type="tel" pattern=".{10}" name="mob" placeholder="Mobile No" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label style="color: white">Enter Password</label>
                            <input type="password" name="pwd" placeholder="Password" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label style="color: white">Confirm Password</label>
                            <input type="password" name="cpwd" placeholder="Password" class="form-control"/>
                        </div>
                        <div class="form-group text-center">
                            <button type="submit" class="btn-lg btn-info px-5"><b>Sign Up</b></button>
                        </div>        
                    </form>
                
                </fieldset>
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
