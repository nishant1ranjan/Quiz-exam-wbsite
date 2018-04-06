<%-- 
    Document   : success
    Created on : Jun 23, 2017, 10:11:36 AM
    Author     : PGLAB
--%>

<html>
    <head>
    <title>Bootstrap 101 Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    </head>
<body >
    
      <div class = "container"> 
          <form method="post" action="Ushow.jsp" >
            
           <img src="index.jpg" alt="Smiley face" height="100" width="1150"> 
               <br>
             <br>
            <a class ="btn btn-primary" href="Uhome.jsp" role="button"> UserHome</a>
            <a class ="btn btn-primary" href="logout.jsp" role="button"> Logout</a>
            
            <p class="text-right"><strong>WELCOME USER <%=session.getAttribute("userid")%></p>
          
        </form>
            
        
        
        <table border=2 width=600 color=red>
            <tr>
                <td colspan=2 align=center>
                    <h5><b>Instructions:
                </td>
            </tr>
            <tr>
                <td colspan=2 align=>
                    <h5>1)  Total number of questions : 10.
                </td>
            </tr>
            <tr>
                <td colspan=2 align=>
                    <h5>2)  Time alloted : 10 minutes.
                </td>
            </tr>
            <tr>
                <td colspan=2 align=>
                    <h5>3)  Each question carry 1 mark and 1 mark deducted for no negative answer.
                </td>
            </tr>
            <tr>
                <td colspan=2 align=>
                    <h5>4)  DO NOT refresh the page.
                </td>
            </tr>
            <tr>
                <td colspan=2 align=>
                    <h5>5)  All the best :-).
                </td>
            </tr>
        </table>
            <br><br><br>
         <form method="post" action="uploadpaper.jsp" > 
                Select Subject
                  <select name="subject">
                        <option value="C">C</option>
                        <option value="C++">C++</option>
                        <option value="Java">Java</option>
                        <option value="Python">Python</option>     
                  </select> 
                <br><br>
                <div class="row">
                         <div class ="col-md-12">
                  
                   
                        <input type="submit" value="Start Exam" class="btn btn-success" />
                      
                 
                     </div>
                     </div>
                  
               </form>  
</html

<%
	if(session.getAttribute("userid")!=null)
	{
		String un=(String)session.getAttribute("userid");
		
	}
	else
		response.sendRedirect("login.jsp");
%>