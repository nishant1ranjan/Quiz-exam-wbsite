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
          <form method="post" action="Ashow.jsp" >
            
           <img src="index.jpg" alt="Smiley face" height="100" width="1150"> 
               <br>
             <br>
            <a class ="btn btn-primary" href="Ahome.jsp" role="button"> AdminHome</a>
            <input type="text" name="email" value="" required="">
            <input type="submit" value="See Detail" class="btn btn-success"/>
          <a class ="btn btn-primary" href="logout.jsp" role="button"> Logout</a>
          <p class="text-right"><strong>WELCOME ADMIN <%=session.getAttribute("userid")%></p>



        </form>
<br>
            <br><br>
            <br>

<form method="post" action="Ashow.jsp" >
        
        </form>
            Upload Question Paper
            <br>
            <br>
            <a class ="btn btn-primary" href="questionsup.jsp" role="button"> Click Here</a>

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
