<%-- 
    Document   : registration
    Created on : Jun 23, 2017, 10:10:16 AM
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
            
            
            
<%@ page import ="java.sql.*" %>
<%
    String subject = request.getParameter("subject");    
    String qno = request.getParameter("qno");
    String question = request.getParameter("question");
    String option1 = request.getParameter("option1");
    String option2 = request.getParameter("option2");
    String option3 = request.getParameter("option3");
    String option4 = request.getParameter("option4");
    String answer = request.getParameter("answer");
    String ans = request.getParameter("ans");
    
    try{
    Class.forName("org.sqlite.JDBC");
    Connection con = DriverManager.getConnection("jdbc:sqlite:C://Users//ASHU//Desktop//Ashu//mnnit.sqlite");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into Level1(qno,question,option1,option2,option3,option4,answer,ans,subject) values "
            + "('" + qno + "','" + question + "','" + option1 + "','" + option2 + "','" + option3 + "','" + option4 + "',"
            + "'" + answer + "','" + ans + "','" + subject + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        //response.sendRedirect("welcome.jsp");
       out.print("Paper Uploaded Successfully!");
    } else {
        response.sendRedirect("index.jsp");
    }}catch(Exception e)
    {
        out.println(e.toString());
    }
%>
<br>
            <br>
Upload Next Question
            
            <a class ="btn btn-primary" href="questionsup.jsp" role="button"> Click Here</a>
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