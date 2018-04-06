<%-- 
    Document   : login
    Created on : Jun 23, 2017, 10:11:13 AM
    Author     : PGLAB
--%>

<%@ page import ="java.sql.*" %>
<%
    Class.forName("org.sqlite.JDBC");
    Connection con=null;
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    try{
    Class.forName("org.sqlite.JDBC");
     con = DriverManager.getConnection("jdbc:sqlite:C://Users//ASHU//Desktop//Ashu//mnnit.sqlite");
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
    if (rs2.next()) 
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


%>