package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    Class.forName("org.sqlite.JDBC");
    Connection con=null;
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    try{
    Class.forName("org.sqlite.JDBC");
     con = DriverManager.getConnection("jdbc:sqlite:C://Users//Nishant//Desktop//proj//mnnit.sqlite");
    Statement st1 = con.createStatement();
    Statement st2 = con.createStatement();
    ResultSet rs1,rs2;
    rs1 = st1.executeQuery("select * from userdata where uname='" + userid + "' and pass='" + pwd + "'");
    rs2 = st2.executeQuery("select * from admindata where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs1.next()) 
    {
         if(userid.equals(rs1.getString(3))){
            session.setAttribute("userid", userid);
            response.sendRedirect("Uhome.jsp");}
  
    }
    else if (rs2.next()) 
    {
         if(userid.equals(rs2.getString(3))){
            session.setAttribute("userid", userid);
            response.sendRedirect("Ahome.jsp");}
  
    }

   
    else
        out.println("Invalid password <a href='index.jsp'>try again</a>");
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
