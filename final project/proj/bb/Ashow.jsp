<%-- 
    Document   : login
    Created on : Jun 23, 2017, 10:11:13 AM
    Author     : PGLAB
--%>

<%@ page import ="java.sql.*" %>
<html>
    <head>
    <title>Bootstrap 101 Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src= "script/jquery.min.js"></script>
	<script src= "js/bootstrap.min.js"></script> 
    
    </head>
    
    
    
    <body>
      <div class = "container"> 
          <form method="post" action="Ashow.jsp" >
            
           <img src="index.jpg" alt="Smiley face" height="100" width="1150"> 
               <br>
             <br>
             <a class ="btn btn-primary" href="Ahome.jsp" role="button"> AdminHome</a>
            
          <a class ="btn btn-primary" href="logout.jsp" role="button"> Logout</a>
          <p class="text-right"><strong>WELCOME ADMIN <%=session.getAttribute("userid")%></p>



        </form>
<%
    Class.forName("org.sqlite.JDBC");
    Connection con=null;
    String email = request.getParameter("email");    
   
    try{
    Class.forName("org.sqlite.JDBC");
    
    con = DriverManager.getConnection("jdbc:sqlite:C://Users//ASHU//Desktop//Ashu//mnnit.sqlite");
    Statement st1 = con.createStatement();
    ResultSet rs1;
    rs1 = st1.executeQuery("select * from admindata where email='" + email + "'");
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
                    out.println("<td align=center>" + rs1.getString("adminname") + "</td>");
                    
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
                    
                    %>
                    <td>
			<a href="Aupdate.jsp?email=<%=email1 %>" ><span class="glyphicon glyphicon-pencil"></span></a>
                    </td>
                    <%
                    
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


%>
        </form>
</div>
    </body>
</html
<%
	if(session.getAttribute("userid")!=null)
	{
		String un=(String)session.getAttribute("userid");
		
	}
	else
		response.sendRedirect("login.jsp");
%>