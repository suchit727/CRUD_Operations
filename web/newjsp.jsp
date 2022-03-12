<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    
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
  <body style=" overflow: hidden;">
  
  <div class="na">
  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Add User</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Users</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Update or delete user</a>
  </li>
</ul>
  </div>
<div class="tab-content" id="pills-tabContent">
    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
        
        <h1 style="position: relative; left: 585px;">Add User</h1><br><br>
        <div class="p1">
            <form name="Add_User" method="post" enctype="multipart/form-data" action="http://localhost:8080/CRUD/FileUploadServlet" >      
            <input id="t" type="Number" name="n1" value="" placeholder="User Id" /><br><br>
            <input id="t" type="text" name="t1" value="" placeholder="User Name" /><br><br>
            <input id="t" type="email" name="e1" value="" placeholder="Email"/><br><br>
            <input id="t" type="tel" name="t2" value="" placeholder="Contact"/><br><br>
            
            <input type="file"  name="file" required/><br><br> 
            <input type="text" value="C:\Users\Admin\Documents\NetBeansProjects\CRUD\web\upload" readonly name="destination"/><br><br>
           
            <input type="submit" class="btn btn-primary" style="position: relative;top: 30px; left:50px;" value="Add user" />
        
        </form>
        </div>
    </div>
  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
    <table width='100%' border='1'>
    <thead align='center'>
   
        <th><h2>Users Image</h2></th>
        <th><h2>User Id</h2></th>
        <th><h2>User Name</h2></th>
        <th><h2>Email Id</h2></th>
        <th><h2>Mobile Number</h2></th>
      <%
         
 Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud?zeroDateTimeBehavior=convertToNull", "root", "root");
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
 ResultSet rs=stmt.executeQuery("Select * from user_register");
        while(rs.next()){%>
         
        <tr>
            <td><b><h4><img src="upload/<%=rs.getString(5)%>" style="width: 150px;height: 200px;" alt=""/></h4></b></td>
           <td><b><h4><%=rs.getInt(1) %></h4></b></td>
           <td><b><h4><%=rs.getString(2)%></h4></b></td>
            <td><b><h4><%=rs.getString(3)%></h4></b></td>   
            <td><b><h4><%= rs.getLong(4)%></h4></b></td>  
             
         </tr>    
    
        <%}%>
  
    </table>
  </div>
        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
            <table width='100%' border='1'>
    <thead align='center'>
   
        <th><h2>Users Image</h2></th>
        <th><h2>User Id</h2></th>
        <th><h2>User Name</h2></th>
        <th><h2>Email Id</h2></th>
        <th><h2>Mobile Number</h2></th>
        <th><h2>Update</h2></th>
        <th><h2>Delete</h2></th>
        <form>
            <input type="hidden" name="id">
        </form>
      <%
         
 Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud?zeroDateTimeBehavior=convertToNull", "root", "root");
Statement stmt1=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
 ResultSet rs1=stmt1.executeQuery("Select * from user_register");
        while(rs1.next()){%>
         
        <tr>
            <td><b><h4><img src="upload/<%=rs1.getString(5)%>" style="width: 150px;height: 200px;" alt=""/></h4></b></td>
            <td><b><h4><%=rs1.getInt(1) %></h4></b></td>
           <td><b><h4><%=rs1.getString(2)%></h4></b></td>
            <td><b><h4><%=rs1.getString(3)%></h4></b></td>   
            <td><b><h4><%= rs1.getLong(4)%></h4></b></td>
            <td><b><h4><a href="newjsp1.jsp">edit</a></h4></b></td>
            <td><a class="btn-danger"  href="delete.jsp?id=<%=rs1.getInt(1)%>"> <b>Delete</b></a>
            </td>
            
        </tr>    
    
        <%}%>
  
        </div>
</div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>