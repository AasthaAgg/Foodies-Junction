package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Header.jsp");
    _jspx_dependants.add("/Footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"main\">\n");
      out.write("            <div id=\"header\" style=\"height: 100px\">\n");
      out.write("                ");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Header</title>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\" style=\"background: transparent\">\n");
      out.write("            <div class=\"row\" style=\"width: 96%; left: 2%; position: fixed\">        \n");
      out.write("                \n");
      out.write("                <div class=\"col-7 my-4\" style=\"height: 100%; left: 4%\">\n");
      out.write("                    <img src=\"icons/logo00.png\">\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div class=\"col-5 my-4\">\n");
      out.write("                    <ul class=\"nav navbar-expand-md bg-light\" style=\"opacity: 75%\">\n");
      out.write("                        <li class=\"nav-item p-2\">\n");
      out.write("                            <a class=\"nav-link\" href=\"Home.jsp\"><img src=\"icons/home.png\"></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item p-2\">\n");
      out.write("                            <a class=\"nav-link\" href=\"Menu.jsp\"><img src=\"icons/Menu.png\"></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item p-2\">\n");
      out.write("                            <a class=\"nav-link\" href=\"Order.jsp\"><img src=\"icons/order.png\"></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item p-2\">\n");
      out.write("                            <a class=\"nav-link\" href=\"Status.jsp\"><img src=\"icons/Status.png\"></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item p-2\">\n");
      out.write("                            <a class=\"nav-link\" href=\"Feedback.jsp\"><img src=\"icons/feed.png\"></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item p-2\">\n");
      out.write("                            <a class=\"nav-link\" href=\"Connect.jsp\"><img src=\"icons/contact.png\"></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item p-2\">\n");
      out.write("                            <a class=\"nav-link\" href=\"Login.jsp\"><img src=\"icons/profile.png\"></a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("                ");

                          String msg=request.getParameter("msg");
                          out.print(msg);
 
                
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("                    <fieldset class=\"border px-5\">\n");
      out.write("                    <legend class=\"w-auto\">Login</legend>\n");
      out.write("                    \n");
      out.write("                    <br><h6 class=\"text-center\">Don't have an Account <a href=\"SignUp.jsp\">Sign Up</a></h6><br>\n");
      out.write("                    \n");
      out.write("                    <form method=\"post\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Enter Mobile No.</label>\n");
      out.write("                            <input type=\"tel\" pattern=\".{10}\" name=\"mob\" placeholder=\"Mobile No\" class=\"form-control\"/>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Enter Password</label>\n");
      out.write("                            <input type=\"password\" name=\"pwd\" placeholder=\"Password\" class=\"form-control\"/>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group text-center\">\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-info px-5\">LOGIN</button>\n");
      out.write("                        </div>        \n");
      out.write("                    </form>\n");
      out.write("                \n");
      out.write("                </fieldset>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div id=\"footer\" style=\"height: 100px; width: 100%\">\n");
      out.write("                ");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Footer</title>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"copyright container-fluid text-center p-4 bg-light\" style=\"width: 94%; position: relative; bottom: 20px; opacity: 75%; \">\n");
      out.write("            &copy; Copyright <strong><span>Foodies Junction</span></strong>. All Rights Reserved\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    <script src=\"js/bootstrap.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"js/jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("     <script src=\"js/bootstrap.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"js/jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
