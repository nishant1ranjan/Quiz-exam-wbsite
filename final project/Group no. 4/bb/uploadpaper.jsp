<%@ page contentType="text/html" %>
<%@ page import="java.sql.*" %>
<%@ page import="org.sqlite.*" %>
<%@ page import="java.awt.Button" %>
 
<!DOCTYPE html>
<html>
    <head runat="server">
    <title>Bootstrap 101 Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src= "script/jquery.min.js"></script>
	<script src= "js/bootstrap.min.js"></script> 
         <script language ="javascript" >
        var tim;
       
        var min = 1;
        var sec = 10;
        var f = new Date();
        function f1() {
            f2();
            document.getElementById("starttime").innerHTML = "Your started your Exam at " + f.getHours() + ":" + f.getMinutes();
             
          
        }
        function f2() {
            if (parseInt(sec) > 0) {
                sec = parseInt(sec) - 1;
                document.getElementById("showtime").innerHTML = "Your Left Time  is :"+min+" Minutes ," + sec+" Seconds";
                tim = setTimeout("f2()", 1000);
            }
            else {
                if (parseInt(sec) == 0) {
                    min = parseInt(min) - 1;
                    if (parseInt(min) == 0) {
                        clearTimeout(tim);
                        location.href = "ans.jsp";
                        
                    }
                    else {
                        sec = 60;
                        document.getElementById("showtime").innerHTML = "Your Left Time  is :" + min + " Minutes ," + sec + " Seconds";
                        tim = setTimeout("f2()", 1000);
                    }
                }
               
            }
        }
    </script>
       
    </head>
     <body onload="f1()" >
      <div class = "container"> 
          <form name= f12 method="post" action="ans.jsp" >
            
           <img src="index.jpg" alt="Smiley face" height="100" width="1150"> 
               <br>
             <br>
            <a class ="btn btn-primary" href="Uhome.jsp" role="button"> UserHome</a>
            <a class ="btn btn-primary" href="logout.jsp" role="button"> Logout</a>
            
            <p class="text-right"><strong>WELCOME USER <%=session.getAttribute("userid")%></p>
            
   
<form id="form1" runat="server">
<div>
        <div id="starttime"></div><br />
        <div id="endtime"></div><br />
        <div id="showtime"></div>
  <br />
</div>
</form>

<%
    Connection con = null;
    ResultSet resultSet = null;
    Statement st = null;
    int j=1;
    try {
      Class.forName("org.sqlite.JDBC");
      con = DriverManager.getConnection("jdbc:sqlite:C://Users//ASHU//Desktop//Ashu//mnnit.sqlite");
      st = con.createStatement();
      String subject = request.getParameter("subject"); 
      resultSet = st.executeQuery("select qno,question,option1,option2,option3,option4 from Level1 where qno<=10 and subject='" + subject + "'");
     // out.println("<form action=ansurl name=ans method=get>");
      out.println("<table width=600 color=red>");
      while (resultSet.next()) {

        int k = resultSet.getInt(1);

                    out.println("<tr>");
                    out.println("<td align=center>" + j +")  "+ "</td>");                    
                    out.println("<td align=justify>" + resultSet.getString(2) + "</td>");
                    out.println("</tr><br><br>");
                    
                    out.println("<tr>");
                    out.println("<td align=center></td>");
                    out.println("<td align=justify><input type=radio name=opt" + j + " value=1 />a)<b>" + resultSet.getString(3) +
                   "</b> &nbsp;&nbsp;<br><br></td>");
                    out.println("</tr>");
                    
                    out.println("<tr>");
                    out.println("<td align=center></td>");
                    out.println("<td align=justify><input type=radio name=opt" + j + " value=1 />a)<b>" + resultSet.getString(4) +
                   "</b> &nbsp;&nbsp;<br><br></td>");
                    out.println("</tr>");
                    
                    out.println("<tr>");
                    out.println("<td align=center></td>");
                    out.println("<td align=justify><input type=radio name=opt" + j + " value=1 />a)<b>" + resultSet.getString(5) +
                   "</b> &nbsp;&nbsp;<br><br></td>");
                    out.println("</tr>");
                    
                    out.println("<tr>");
                    out.println("<td align=center></td>");
                    out.println("<td align=justify><input type=radio name=opt" + j + " value=1 />a)<b>" + resultSet.getString(6) +
                   "</b> &nbsp;&nbsp;<br><br></td>");
                    out.println("</tr>");
        
        // out.println( "opt"+ j + "</b><br><br><br> ");
        j++;


      }
      out.println("</table>");
                
      out.println("<input type=submit name=submit value=submit>");
 

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