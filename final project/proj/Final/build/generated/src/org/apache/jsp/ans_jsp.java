package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class ans_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("   \n");
      out.write("\t<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\t<script src= \"script/jquery.min.js\"></script>\n");
      out.write("\t<script src= \"js/bootstrap.min.js\"></script> \n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      <div class = \"container\"> \n");
      out.write("          <form method=\"post\" action=\"seeresult.jsp\" >\n");
      out.write("            \n");
      out.write("           <img src=\"index.jpg\" alt=\"Smiley face\" height=\"100\" width=\"1150\"> \n");
      out.write("               <br>\n");
      out.write("             <br>\n");
      out.write("            <a class =\"btn btn-primary\" href=\"Uhome.jsp\" role=\"button\"> UserHome</a>\n");
      out.write("            <a class =\"btn btn-primary\" href=\"logout.jsp\" role=\"button\"> Logout</a>\n");
      out.write("            \n");
      out.write("            <p class=\"text-right\"><strong>WELCOME USER ");
      out.print(session.getAttribute("userid"));
      out.write("</p>\n");
      out.write("          \n");
      out.write("             \n");

     int j = 1, cnt = 0, fal = 0, i=1;

    Connection con = null;
    ResultSet resultSet = null;
    Statement st = null;
    try 
    {
      Class.forName("org.sqlite.JDBC");
      con =DriverManager.getConnection("jdbc:sqlite:C:/Users/ASHU/Desktop/JSP/jsp_db.sqlite");
      st = con.createStatement();
      resultSet = st.executeQuery("select answer from Level1 where qno<=10");
      String k=request.getParameter("opt"+ j+ "");
      
      while (resultSet.next()) {
        //if (request.getParameter("opt" + j).equals(resultSet.getString(1)))
          if (request.getParameter("opt" + j+"")!=null){
             if (request.getParameter("opt" + j).equals(resultSet.getString("answer")))
          { 
              cnt++;
             
               //i = st.executeUpdate("insert into ans(ans1) values ('" + k + "')");
              // i=st.executeU9pdate("insert into Level1(ans) values ('" + k + "')");
          }
             else
                 fal++;
          j++;   
      }
          else 
              j++;
      }
      
     
     out.println("<table border=2 width=600 color=red>");
     
     out.println("<tr>");
    out.println("<td colspan=2 align=center>" + "Result Displayed " + "</td>");  
    out.println("</tr>");
    
     out.println("<tr>");
    out.println("<td align=center>" + "Number of Questions Attempt: " + "</td>");                    
    out.println("<td align=justify>" + (cnt+fal) + "</td>");
    out.println("</tr>");

    out.println("<tr>");
    out.println("<td align=center>" + "Number of Questions Right: " + "</td>");                    
    out.println("<td align=justify>" + cnt + "</td>");
    out.println("</tr>");
    
    out.println("<tr>");
    out.println("<td align=center>" + "Number of Questions Wrong: " + "</td>");                    
    out.println("<td align=justify>" + fal + "</td>");
    out.println("</tr>");
    
    out.println("<tr>");
    out.println("<td align=center>" + "your marks are: " + "</td>");                    
    out.println("<td align=justify>" + (cnt-fal) + "</td>");
    out.println("</tr>");
               
                          
 out.println("</table>");
                

    } catch (Exception e) 
            {
      e.printStackTrace();
    }


  

      out.write("\n");
      out.write("<br><br>\n");
      out.write("<div class=\"row\">\n");
      out.write("                         <div class =\"col-md-12\">\n");
      out.write("                  \n");
      out.write("                    \n");
      out.write("                      <input type=\"submit\" value=\"See Correct Answer\" class=\"btn btn-success\" />\n");
      out.write("                        \n");
      out.write("                    \n");
      out.write("                     </div>\n");
      out.write("                     </div>\n");
      out.write("</div> \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
