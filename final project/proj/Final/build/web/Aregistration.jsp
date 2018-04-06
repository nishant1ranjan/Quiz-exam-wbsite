<%-- 
    Document   : registration
    Created on : Jun 23, 2017, 10:10:16 AM
    Author     : PGLAB
--%>
<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String aname = request.getParameter("aname");
    String email = request.getParameter("email");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    try{
    Class.forName("org.sqlite.JDBC");
    Connection con = DriverManager.getConnection("jdbc:sqlite:F://project//final project//proj//mnnit.sqlite");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into admindata(adminname, email, uname, pass,City,State,adminname) values ('" + aname + "','" + email + "','" + user + "','" + pwd + "','" + city + "','" + state + "','" + aname + "')");
    if (i > 0) {
        session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
        //out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }}catch(Exception e){
    out.println(e.toString());
    }
%>