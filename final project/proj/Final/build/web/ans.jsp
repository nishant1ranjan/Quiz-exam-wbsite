<%-- 
    Document   : registration
    Created on : Jun 23, 2017, 10:10:16 AM
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
          <form method="post" action="seeresult.jsp" >
            
           <img src="index.jpg" alt="Smiley face" height="100" width="1150"> 
               <br>
             <br>
            <a class ="btn btn-primary" href="Uhome.jsp" role="button"> UserHome</a>
            <a class ="btn btn-primary" href="logout.jsp" role="button"> Logout</a>
            
            <p class="text-right"><strong>WELCOME USER <%=session.getAttribute("userid")%></p>
          
             
<%
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


  
%>
<br><br>
<div class="row">
                         <div class ="col-md-12">
                  
                    
                      <input type="submit" value="See Correct Answer" class="btn btn-success" />
                        
                    
                     </div>
                     </div>
</div> 
    </body>
</html>


<%
	if(session.getAttribute("userid")!=null)
	{
		String un=(String)session.getAttribute("userid");
		
	}
	else
		response.sendRedirect("login.jsp");
%>