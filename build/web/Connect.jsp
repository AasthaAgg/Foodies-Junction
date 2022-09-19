<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connect</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    </head>
    <body style="background-image: url(img/contact.jpg); background-size: cover; background-repeat: no-repeat">
        <div class="container-fluid">
            <div id="header" style="height: 100px">
                <%@include file="Header.jsp" %>
            </div>
            <div class="container row" style="height: 10px"></div>
            <div id="content" class="container-fluid row">
                <div class="col-md-6 text-center bg-light" style="height: 100%; left:2%; opacity: 80%; position: relative; top: 50px">
                    <br><h1>Know Us</h1><br>
                    <h5>At Foodies Junction, We wish to offer our special tradition of Indian Cuisines with innovative take on traditional cooking methods and the legacy of our shared food here.</h5>
                    <br>
                    <h4><img src="icons/contact.png"> : +91 9867543201</h4>
                    <h4><img src="icons/email.png"> : <a href="#">foodiesjunction@hotmail.com</a></h4>
                    <h4><img src="icons/store.png"> : The Great Garden, Court Road, Saharanpur, UP</h4>
                    <br>
                    <div id="social">
                        <a href="#"><img src="icons/"></a>
                        <a href="#"><img src="icons/"></a>
                        <a href="#"><img src="icons/"></a>
                        <a href="#"><img src="icons/"></a>
                    </div>
                    <br>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-5 bg-light" style="float: right; opacity: 95%">
                    <form>
                        <fieldset class="p-3">
                            <h1 class="text-center">Get In Touch</h1><br>
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" name="name" placeholder="Your Name" id="name" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="mail">Email</label>
                                <input type="email" name="mail" placeholder="Your Mail" id="mail" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="mob">Mobile</label>
                                <input type="number" name="mob" placeholder="Your Mobile" id="mob" class="form-control">
                            </div>
                            <div id="msg">
                                <label for="msg">Message</label> <br>
                                <textarea rows="5" cols="70" placeholder="Type Your Message Here!"  id="msg"></textarea>
                            </div>
                            <div class="text-center">
                                <input type="submit" class="btn-lg btn-success" value="Send Message">
                            </div>
                        </fieldset>
                    </form>
                </div>
                
            </div>
            <div id="footer" style="height: 100px; width: 100%">
                <%@include file="Footer.jsp" %>
            </div>
        </div>
    </body>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/jquery.js" type="text/javascript"></script>
</html>