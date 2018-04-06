<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
   <link href="css/bootstrap.min.css" rel="stylesheet">
   <script src="script/jquery.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
</head>
<body background="b2.jpg">
<div class="container">
    <img src="index.jpg" alt="Smiley face" height="100" width="1150"> 
               <br>
             <br>
             <a class ="btn btn-primary" href="Uhome.jsp" role="button"> UserHome</a>
            <a class ="btn btn-primary" href="logout.jsp" role="button"> Logout</a>
            <p class="text-right"><strong>WELCOME USER <%=session.getAttribute("userid")%></p>
<div class="row">
<div class="col-md-2 ">
</div>
<div class="col-md-8 ">
<%
	String ema=request.getParameter("email");
	try{
	Class.forName("org.sqlite.JDBC");
    
        Connection con = DriverManager.getConnection("jdbc:sqlite:C://Users//ASHU//Desktop//Ashu//mnnit.sqlite");
	Statement st=con.createStatement();
	String sql="select *  from userdata where email='"+ema+"'";
	ResultSet rs=st.executeQuery(sql);
	rs.next();
	%>
        <form action="" method="post"  role="form"  >
            <table class="table">
            <tr>
		<td>ID</td>
		<td><input type="text" name="t1" value="<%=rs.getInt(7) %>"  /></td>
            </tr>	
            <tr>
		<td>Name</td>
		<td><input type="text" name="t2" value="<%=rs.getString(1) %>" /></td>
            </tr>
            <tr>
		<td>Email</td>
		<td><input type="text" name="t3" value="<%=rs.getString(2) %>" /></td>
            </tr>
            <tr>
		<td>Username</td>
		<td><input type="text" name="t4" value="<%=rs.getString(3) %>" /></td>
            </tr>	
            <tr>
		<td>Password</td>
		<td><input type="text" name="t5" value="<%=rs.getString(4) %>" /></td>
            </tr>	
            <tr>
		<td>City</td>
		<td><input type="text" name="t6" value="<%=rs.getString(5) %>" /></td>
            </tr>	
            <tr>
		<td>State</td>
		<td><input type="text" name="t7" value="<%=rs.getString(6) %>" /></td>
            </tr>      	
            <tr>
		<td></td>
		<td><input type="submit" value="Update" name="btn_update" class="btn btn-success" /></td>
            </tr>
            <tr>
            <td colspan="2">
            </td>
            </tr>
	<td colspan="2">
	<%
	if(request.getParameter("btn_update")!=null)
	{
		Class.forName("org.sqlite.JDBC");
    
                Connection conn = DriverManager.getConnection("jdbc:sqlite:C://Users//ASHU//Desktop//Ashu//mnnit.sqlite");
                Statement stt=con.createStatement();
		String idd=request.getParameter("t1");
		String name=request.getParameter("t2");
		String email=request.getParameter("t3");
		String uname=request.getParameter("t4");
		String pass=request.getParameter("t5");
                String city=request.getParameter("t6");
		String state=request.getParameter("t7");
		String sq="update userdata set id='"+idd+"',username='"+name+"',email='"+email+"',uname='"+uname+"',pass='"+pass+"',City='"+city+"',State='"+state+"' where email='"+email+"'";
		int res=stt.executeUpdate(sq);
		if(res!=0){
			//response.sendRedirect("Ushow.jsp");
                    out.println("Data Updated Succesfully");}
                
                conn.close();
	}		
	%>
	</td>
	</tr>
	</form>			
	<%
            con.close();
	}catch(Exception e)
	{
		out.println(e.toString());
	}
%>
</div>

<div class="col-md-2 ">
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