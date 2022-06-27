
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user register page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <link href="StyleSheet/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
   <body>
       <%@include file="nevigation.jsp" %>

<main class="primary-background" style="padding-bottom: 50px">
            <div class="container">
                <div class="col-md-6 offset-md-2">
                    <div class="card">
                        <div class="card-header text-center primary-background text-white">
                            <span class="fa fa-3x fa-user-plus"></span>
                            <br>
                           Register Here 
                        </div>
                        <div class="card-body">
                           <form id="reg-form" action="RegistrationServlet" method="POST">
                               
                               <div class="form-group">
    <label for="user_name">User Name</label>
    <input name="name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter user name">
    
  </div>
                               
                               
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    
  </div>
                               
                               
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-group">
    <label for="exampleInputNumber">Phone</label>
    <input name="phone" type="number" class="form-control" id="exampleInputNumber" placeholder="Enter mobile number">
  </div>
  <div class="form-group">
 <label for="start">Date of birth</label>
<input type="date" id="date" name="DOB"
       value="2018-07-22"
       min="1960-01-01" max="2022-12-31">
                               </div>
        
    <div class="form-group">
        <label>Select City</label>
                  <select class="form-control" name="city">
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
