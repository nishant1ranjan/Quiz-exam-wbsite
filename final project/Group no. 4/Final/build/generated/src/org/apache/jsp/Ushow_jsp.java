package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Ushow_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <title>Bootstrap 101 Template</title>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    \t<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\t<script src= \"script/jquery.min.js\"></script>\n");
      out.write("\t<script src= \"js/bootstrap.min.js\"></script> \n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <body background=\"b2.jpg\">\n");
      out.write("          <div class = \"container\"> \n");
      out.write("        <form method=\"post\" action=\"Ushow.jsp\" >\n");
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
      out.write("      \n");
      out.write("        <br><br><br>\n");

    Class.forName("org.sqlite.JDBC");
    Connection con=null;
    String email = request.getParameter("email");    
   
    try{
    Class.forName("org.sqlite.JDBC");
    
    con = DriverManager.getConnection("jdbc:sqlite:C://Users//Nishant//Desktop//proj//mnnit.sqlite");
    Statement st1 = con.createStatement();
    ResultSet rs1;
    rs1 = st1.executeQuery("select * from userdata where email='" + email + "'");
    out.println("<div class =col-md-6>");
    out.println("<table width=500px border=2 style=font-family:arial; font-size:14px align =right class=table table-bordered>");
    while (rs1.next()) 
    {
         String email1=rs1.getString(2);
      
             
                    out.println("<div class=row>");
                    out.println("<div class =col-md-12>");  
                    out.println("<th colspan=2>Hiiii  " + email + "</th>"); 
                    
                    out.println("<div class=row>");
                    out.println("<div class =col-md-12>"); 
                    out.println("<tr>");
                    out.println("<th> Name </th>");
                    out.println("<td align=center>" + rs1.getString("username") + "</td>");
                    
                    out.println("<div class=row>");
                    out.println("<div class =col-md-12>"); 
                    out.println("<tr>");
                    out.println("<th> Username </th>");
                    out.println("<td align=center>" + rs1.getString("uname") + "</td>");
                    
                    out.println("<div class=row>");
                    out.println("<div class =col-md-12>"); 
                    out.println("<tr>");
                    out.println("<th> Password </th>");
                    out.println("<td align=center>" + rs1.getString("pass") + "</td>");
                    
                    out.println("<div class=row>");
                    out.println("<div class =col-md-12>"); 
                    out.println("<tr>");
                    out.println("<th> Email </th>");
                    out.println("<td align=center>" + rs1.getString("email") + "</td>");
                    
                    out.println("<div class=row>");
                    out.println("<div class =col-md-12>"); 
                    out.println("<tr>");
                    out.println("<th> City </th>");
                    out.println("<td align=center>" + rs1.getString("City") + "</td>");
                    
                    out.println("<div class=row>");
                    out.println("<div class =col-md-12>"); 
                    out.println("<tr>");  
                    out.println("<th> State </th>");
                    out.println("<td align=center>" + rs1.getString("State") + "</td>");
                    
                    
      out.write("\n");
      out.write("                    <td>\n");
      out.write("\t\t\t<a href=\"Uupdate.jsp?email=");
      out.print(email1 );
      out.write("\" ><span class=\"glyphicon glyphicon-pencil\"></span></a>\n");
      out.write("                    </td>\n");
      out.write("                    ");

                    
                    out.println("<tr>");                     
                    out.println("</tr>");  
                    out.println("<tr>");
                                     
                                        
                    
                                       
                    out.println("</tr>"); 
        
  
    }     
    
    }
    catch(Exception e){}
    finally {
        if (con != null) {
        try {
            con.close(); // <-- This is important
             } catch (SQLException e) {
      /* handle exception */
    }
  }   }



      out.write("\n");
      out.write("        </form>\n");
      out.write("</div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
