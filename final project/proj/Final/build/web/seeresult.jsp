<%@ page contentType="text/html" %>
<%@ page import="java.sql.*" %>
<%@ page import="org.sqlite.*" %>
<%@ page import="java.awt.Button" %>
 
<!DOCTYPE html>
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
          <form method="post" action="Ushow.jsp" >
            
           <img src="index.jpg" alt="Smiley face" height="100" width="1150"> 
               <br>
             <br>
            <a class ="btn btn-primary" href="Uhome.jsp" role="button"> UserHome</a>
            <a class ="btn btn-primary" href="logout.jsp" role="button"> Logout</a>
            
            <p class="text-right"><strong>WELCOME USER <%=session.getAttribute("userid")%></p>
          
        </form>
            
             <div class = "container"> 
                 <form method="post" action=""><br><br> 
                     
             
<%
                Connection con = null;
    ResultSet resultSet = null;
    Statement st = null;
    int j=1;
    try {
      Class.forName("org.sqlite.JDBC");
      con =DriverManager.getConnection("jdbc:sqlite:C:/Users/ASHU/Desktop/JSP/jsp_db.sqlite");
      st = con.createStatement();
      resultSet = st.executeQuery("select qno,question,option1,option2,option3,option4,ans from Level1 where qno<=10");
     // out.println("<form action=ansurl name=ans method=get>");
      while (resultSet.next()) {

        int k = resultSet.getInt(1);

        out.println(k + ").");
        out.println("<b><font size=3>" + resultSet.getString(2) + "</font></b><br><br>");
        out.println("<input type=radio name=opt" + j + " value=1 />a)<b>" + resultSet.getString(3) +
                   "</b> &nbsp;&nbsp;");
        out.println("<input type=radio name=opt" + j + " value=2 />b)<b>" + resultSet.getString(4) +
                   "</b> &nbsp;&nbsp;");
        out.println("<input type=radio name=opt" + j + " value=3 />c)<b>" + resultSet.getString(5) +
                   "</b> &nbsp;&nbsp;");
        out.println("<input type=radio name=opt" + j + " value=4 />d)<b>" + resultSet.getString(6) +
                   "</b><br><br><br> ");
        //out.println("Correct Answer is:" + resultSet.getString(8) + "</b><br><br><br> ");
        out.println( "Correct Ans is: "+ resultSet.getString("ans")+ "</b><br><br><br> ");
        
        j++;


      }
      
 

    } catch (Exception e) {
      e.printStackTrace();
    }
            %>
            
			
  </form>
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