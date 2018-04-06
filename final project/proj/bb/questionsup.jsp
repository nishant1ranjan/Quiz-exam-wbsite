<%-- 
    Document   : reg
    Created on : Jun 23, 2017, 10:09:38 AM
    Author     : PGLAB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            
      <div class = "container"> 
          <form method="post" action="insertques.jsp" >
           
             
                <div class ="col-md-6">    
            <table border="4" width="40%" cellpadding="5" align = "right" class ="table table-bordered">
                <thead>
                     <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <th colspan="2">Upload Question Paper</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>Select Subject</td>
                        <td><select name="subject">
                                    <option value="C">C</option>
                                    <option value="C++">C++</option>
                                    <option value="Java">Java</option>
                                    <option value="Python">Python</option>
                                    
                              </select> </td>
                    </tr>
                     </div>
                     </div>
                
                
                     <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>Question No.</td>
                        <td><input type="text" name="qno" value="" /></td>
                    </tr>
                     </div>
                     </div>
                

                     <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>Question</td>
                        <td><input type="text" name="question" value="" /></td>
                    </tr>
                     </div>
                     </div>
                
                     
                     <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>Option 1</td>
                        <td><input type="text" name="option1" value="" /></td>
                    </tr>
                     </div>
                     </div>
                
                
                <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>Option 2</td>
                        <td><input type="text" name="option2" value="" /></td>
                    </tr>
                     </div>
                     </div>
                
                
                <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>Option 3</td>
                        <td><input type="text" name="option3" value="" /></td>
                    </tr>
                     </div>
                     </div>
                
                <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>Option 4</td>
                        <td><input type="text" name="option4" value="" /></td>
                    </tr>
                     </div>
                     </div>
                
                
                <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>Corrent Option </td>
                        <td><input type="text" name="answer" value="" /></td>
                    </tr>
                     </div>
                     </div>
                
                <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>Corrent Answer </td>
                        <td><input type="text" name="ans" value="" /></td>
                    </tr>
                     </div>
                     </div>
                
                <div class="row">
                         <div class ="col-md-12">
                  
                    <tr>
                        <td><input type="submit" value="Submit" class="btn btn-success" /></td>
                        <td><input type="reset" value="Reset" class="btn btn-danger" /></td>
                    </tr>
                     </div>
                     </div>
                
                
                </tbody>
            </table>
            
            
                </div>
                    
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