package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <title>Bootstrap 101 Template</title>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    <body background=\"b2.jpg\">\n");
      out.write("   \n");
      out.write("             <div class = \"container\"> \n");
      out.write("        <form method=\"post\" action=\"login.jsp\" >\n");
      out.write("             <img src=\"index.jpg\" alt=\"Smiley face\" height=\"100\" width=\"1150\"> \n");
      out.write("             <br>\n");
      out.write("             <br>\n");
      out.write("            <a class =\"btn btn-primary\" href=\"home.jsp\" role=\"button\"> Home</a>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <a class =\"btn btn-primary\" href=\"aboutus.jsp\" role=\"button\"> About Us</a>\n");
      out.write("\n");
      out.write("            <div class=\"btn-group\" role=\"group\">\n");
      out.write("                <div class=\"dropdown\">\n");
      out.write("                    <button class=\"btn btn-primary dropdown-toggle\" type=\"button\" data-toggle=\"dropdown\">Registration\n");
      out.write("                    <span class=\"caret\"></span></button>\n");
      out.write("                        <ul class=\"dropdown-menu\">\n");
      out.write("                            <li><a href=\"Ureg.jsp\">User</a></li>\n");
      out.write("                            <li><a href=\"Areg.jsp\">Admin</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("             <br>\n");
      out.write("             <br>\n");
      out.write("             \n");
      out.write("                   <div class =\"col-md-6\">              \n");
      out.write("                 <table width=\"500px\" border=\"2\" style=\"font-family:arial; font-size:14px\" align =\"right\" class=\"table table-bordered\">\n");
      out.write("                     <div class=\"row\">\n");
      out.write("                         <div class =\"col-md-12\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr >\n");
      out.write("                        <th colspan=\"2\">Login Here</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                </div>\n");
      out.write("                     </div>\n");
      out.write("                <tbody>\n");
      out.write("                      <div class=\"row\">\n");
      out.write("                         <div class =\"col-md-12\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>User Name</td>\n");
      out.write("                        <td><input type=\"text\" name=\"uname\" value=\"\" required=\"\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    </div>\n");
      out.write("                     </div>\n");
      out.write("                      <div class=\"row\">\n");
      out.write("                         <div class =\"col-md-12\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Password</td>\n");
      out.write("                        <td><input type=\"password\" name=\"pass\" value=\"\" required=\"\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    </div>\n");
      out.write("                     </div>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                      <div class=\"row\">\n");
      out.write("                         <div class =\"col-md-12\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td><input type=\"submit\" value=\"Login\" class=\"btn btn-success\" /></td>\n");
      out.write("                        <td><input type=\"reset\" value=\"Reset\" class=\"btn btn-danger\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    </div>\n");
      out.write("                     </div>\n");
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("              </div>  \n");
      out.write("        </form>\n");
      out.write("               </div> \n");
      out.write("    </body>\n");
      out.write("</html>");
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
