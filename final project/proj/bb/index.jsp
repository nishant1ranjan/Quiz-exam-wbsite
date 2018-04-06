<%-- 
    Document   : index
    Created on : Jun 23, 2017, 10:08:34 AM
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
    <body background="b2.jpg">
   
             <div class = "container"> 
        <form method="post" action="login.jsp" >
             <img src="index.jpg" alt="Smiley face" height="100" width="1150"> 
             <br>
             <br>
            <a class ="btn btn-primary" href="home.jsp" role="button"> Home</a>
            
            
            <a class ="btn btn-primary" href="aboutus.jsp" role="button"> About Us</a>

            <div class="btn-group" role="group">
                <div class="dropdown">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Registration
                    <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li><a href="Ureg.jsp">User</a></li>
                            <li><a href="Areg.jsp">Admin</a></li>
                        </ul>
                </div>
            </div>
             <br>
             <br>
             
                   <div class ="col-md-6">              
                 <table width="500px" border="2" style="font-family:arial; font-size:14px" align ="right" class="table table-bordered">
                     <div class="row">
                         <div class ="col-md-12">
                <thead>
                    <tr >
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                </div>
                     </div>
                <tbody>
                      <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" required=""/></td>
                    </tr>
                    </div>
                     </div>
                      <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" required=""/></td>
                    </tr>
                    </div>
                     </div>
                
                
                
                      <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td><input type="submit" value="Login" class="btn btn-success" /></td>
                        <td><input type="reset" value="Reset" class="btn btn-danger"/></td>
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