<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <style>
        .na{
            background: black;
           
        }
       .p1{ position: relative;left: 580px;}
     
    </style>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
      <!-- Example single danger button -->
 <div class="na">
<div class="btn-group">
  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Action
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="newjsp.jsp">Home</a>
    
  </div>

</div>
 </div>
       <h1 style="position: relative; left: 585px;">Update User</h1><br><br>
      <div class="p1">
    <form name="Add_User" method="post"  action="http://localhost:8080/CRUD/update.jsp" >      
            <input id="t" type="Number" name="n1" value="" placeholder="User Id" /><br><br>
            <input id="t" type="text" name="t1" value="" placeholder="User Name" /><br><br>
            <input id="t" type="email" name="e1" value="" placeholder="Email"/><br><br>
            <input id="t" type="tel" name="t2" value="" placeholder="Contact"/><br><br>
            <input type="submit" class="btn btn-primary" style="position: relative;top: 30px; left:50px;" value="update" />
 
        
    </form>
  </div>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>