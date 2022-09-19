<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome!</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    </head>
    <body style="background-color: #FFBF14; height: 100%; width: 99%">
        <div id="header" style="height: 100px">
            <%@include file="Header.jsp" %>
        </div>
            <%
                 HttpSession sess=request.getSession();
                 
                 sess.setAttribute("mobile","");
                 
            %>
        <div class="background" style="width: 98%; margin-left: 1%">                                                 
            <div class="row">
                        <div class="col-sm-2 p-1">
                            <img src="img/00.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/01.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/03.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/04.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/05.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/06.jpg" height="100%" width="100%">
                        </div>
                    </div>
                    
            <div class="row">
                        <div class="col-sm-2 p-1">
                            <img src="img/00.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/01.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/00.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/03.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/04.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/05.jpg" height="100%" width="100%">
                        </div>
                    </div>

            <div class="row">
                        <div class="col-sm-2 p-1">
                            <img src="img/18.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/19.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/20.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/01.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/00.jpg" height="100%" width="100%">
                        </div>
                        <div class="col-sm-2 p-1">
                            <img src="img/03.jpg" height="100%" width="100%">
                        </div>
                    </div>
            
            <div class="content text-center p-2" style="position: absolute; top: 25%; width: 50%; margin-left: 25%">
                <div class="transbox bg-light " style="opacity: 75%; border-radius: 25px">
                <h1>WELCOME</h1> <br>
                <h3>to</h3><br>
                <h1>FOODIES JUNCTION</h1><br>
                <h3>The Future Of Tradition</h3><br>
                </div>
                <a href="Menu.jsp">
                    <div class="btn btn-success btn-lg mt-4" style="width: 40%">Get Started</div>
                </a>
            </div>
            
        </div>
        
        <div id="footer">
            <%@include file="Footer.jsp" %>
        </div>
    </body>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/jquery.js" type="text/javascript"></script>
</html>