<%-- 
    Document   : logout
    Created on : Jun 23, 2017, 10:11:59 AM
    Author     : PGLAB
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>