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
<body>
      <div class = "container"> 
          <form method="post" action="Ushow.jsp" >
            
           <img src="index.jpg" alt="Smiley face" height="100" width="1150"> 
               <br>
             <br>
            <a class ="btn btn-primary" href="Uhome.jsp" role="button"> UserHome</a>
            <a class ="btn btn-primary" href="logout.jsp" role="button"> Logout</a>
            <input type="text" name="email" value="" required="">
            <input type="submit" value="See Detail" class="btn btn-success"/>
            <p class="text-right"><strong>WELCOME USER <%=session.getAttribute("userid")%></p>
          
        </form>
            <br><br><br><br>
        
        
            <form method="post" action="paperdis.jsp" > 
               
                <div class="row">
                         <div class ="col-md-12">
                             Online Programming Test
                   <br><br>
                        <input type="submit" value="Click Here For Start Test" class="btn btn-success" />
                      
                 
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