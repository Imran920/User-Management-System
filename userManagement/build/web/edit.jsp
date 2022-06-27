
<%@page import="com.usermanagement.UserData.User"%>
<%@page import="com.usermanagement.ConnectDb.ConnectionDb"%>
<%@page import="com.usermanagement.Dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <link href="StyleSheet/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <%@include file="normal_nav.jsp" %>
        <% int id=Integer.parseInt(request.getParameter("id")); %>
        
        <% UserDao udao=new UserDao(ConnectionDb.getConnection());
           User u=udao.getUser(id);
           
        %>
        <main class="primary-background" style="padding-bottom: 50px">
            <div class="container">
                <div class="col-md-6 offset-md-2">
                    <div class="card">
                        <div class="card-header text-center primary-background text-white">
                            <span class="fa fa-3x fa-user-plus"></span>
                            <br>
                           Edit Here 
                        </div>
                        <div class="card-body">
                            <form id="reg-form" class="form" action="update" method="POST">
                                <div class="form-group">
                     <input type="hidden" class="form-control" name="id"  value="<%= u.getId()%>" >
                     </div>
                     <div class="form-group">
                     <label for="user_name">User Name</label>
                     <input name="name" type="text" class="form-control" id="user_name" <%= u.getName()%> required aria-describedby="emailHelp" placeholder="Enter user name">
                     </div>
              <div class="form-group">
    <label for="exampleInputNumber">Phone</label>
    <input name="phone" type="number" class="form-control" id="exampleInputNumber" value="<%= u.getPhone()%>" required placeholder="Enter mobile number">
  </div>
  
  <div class="form-group">
 <label for="start">Date of birth</label>
<input type="date" name="dob" value="<%= u.getDob()%>" required >
                               </div>
     
  <div class="form-group">
        <label>Select City</label>
                  <select class="form-control" name="city" value="<%= u.getCity()%>">
                      <option selected disabled="">--Select city--</option>
                      <option>Butwal</option>
                      <option>Kathmandu</option>
                      <option>Nepalgunj</option>
                      <option>Pokhara</option>
                      
                  </select>
              </div>
                        <br>
  <button id="submit-btn" type="submit" class="btn btn-primary">Register</button>
  <button id="reset-btn" type="reset" class="btn btn-primary">Cancel</button>
                            </form>
                    </div>
                    
                </div>
            </div>   
        </main>
                      
      <script
			  src="https://code.jquery.com/jquery-3.6.0.min.js"
			  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
			  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        
    </body>
</html>
