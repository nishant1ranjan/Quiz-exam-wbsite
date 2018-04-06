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
    
    
    
    <body background="b2.jpg">
      <div class = "container"> 
        <form method="post" action="Aregistration.jsp" >
            
           <img src="index.jpg" alt="Smiley face" height="100" width="1150"> 
               <br>
             <br>
             <a class ="btn btn-primary" href="home.jsp" role="button"> Home</a>
             
             <a class ="btn btn-primary" href="index.jsp" role="button"> Login</a>
           
             <a class ="btn btn-primary" href="aboutus.jsp" role="button"> About Us</a><br>
                <div class ="col-md-6">    
            <table border="4" width="40%" cellpadding="5" align = "right" class ="table table-bordered">
                <thead>
                     <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <th colspan="2">Enter Admin Information Here</th>
                    </tr>
                </thead>
                <tbody>
                     <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>Admin Name</td>
                        <td><input type="text" name="aname" value="" required=""/></td>
                    </tr>
                     </div>
                     </div>

                     <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" required=""/></td>
                    </tr>
                     </div>
                     </div>
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
                        <td>State</td>
                        <td><select name="state">
                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                                    <option value="Assam">Assam</option>
                                    <option value="Bihar">Bihar</option>
                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                    <option value="Goa">Goa</option>
                                    <option value="Karnataka">Karnataka</option>
                                    <option value="Maharashtra">Maharashtra</option>
                              </select> </td>
                    </tr>
                     </div>
                     </div>
                
                                <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>City</td>
                        <td><select name="city">
                                    <option value="Allahabd">Allahabd</option>
                                    <option value="Agara">Agara</option>
                                    <option value="Kanpur">Kanpur</option>
                                    <option value="Lucknow">Lucknow</option>
                                    <option value="Faizabad">Faizabad</option>
                                    <option value="Sahibabad">Sahibabad</option>
                                    <option value="Azamgardh">Azamgardh</option>
                                    <option value="Azmer">Azmer</option>
                              </select> </td>
                    </tr>
                     </div>
                     </div>
                
                     <div class="row">
                         <div class ="col-md-12">
                    <tr>
                        <td>Upload Photo</td>
                        <td><input type="file" id="exampleInputFile"></td>
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
                    <div class="row">
                         <div class ="col-md-12">
                    <tr>
                    
                    
                        <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
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
    
