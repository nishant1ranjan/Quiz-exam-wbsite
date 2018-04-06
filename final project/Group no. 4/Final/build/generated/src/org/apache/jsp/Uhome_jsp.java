package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Uhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <title>Bootstrap 101 Template</title>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("<body>\n");
      out.write("      <div class = \"container\"> \n");
      out.write("          <form method=\"post\" action=\"Ushow.jsp\" >\n");
      out.write("            \n");
      out.write("           <img src=\"index.jpg\" alt=\"Smiley face\" height=\"100\" width=\"1150\"> \n");
      out.write("               <br>\n");
      out.write("             <br>\n");
      out.write("            <a class =\"btn btn-primary\" href=\"Uhome.jsp\" role=\"button\"> UserHome</a>\n");
      out.write("            <a class =\"btn btn-primary\" href=\"logout.jsp\" role=\"button\"> Logout</a>\n");
      out.write("            <input type=\"text\" name=\"email\" value=\"\" required=\"\">\n");
      out.write("            <input type=\"submit\" value=\"See Detail\" class=\"btn btn-success\"/>\n");
      out.write("            <p class=\"text-right\"><strong>WELCOME USER ");
      out.print(session.getAttribute("userid"));
      out.write("</p>\n");
      out.write("          \n");
      out.write("        </form>\n");
      out.write("            <br><br><br><br>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("            <form method=\"post\" action=\"paperdis.jsp\" > \n");
      out.write("               \n");
      out.write("                <div class=\"row\">\n");
      out.write("                         <div class =\"col-md-12\">\n");
      out.write("                             Online Programming Test\n");
      out.write("                   <br><br>\n");
      out.write("                        <input type=\"submit\" value=\"Click Here For Start Test\" class=\"btn btn-success\" />\n");
      out.write("                      \n");
      out.write("                 \n");
      out.write("                     </div>\n");
      out.write("                     </div>\n");
      out.write("                  \n");
      out.write("               </form>  \n");
      out.write("</html\n");
      out.write("\n");

	if(session.getAttribute("userid")!=null)
	{
		String un=(String)session.getAttribute("userid");
		
	}
	else
		response.sendRedirect("login.jsp");

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
