<%-- 
    Document   : update
    Created on : Mar 12, 2022, 11:29:06 AM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud?zeroDateTimeBehavior=convertToNull", "root", "root");
            
             int id=Integer.parseInt(request.getParameter("n1"));
            String user=request.getParameter("t1");
            String email=request.getParameter("e1");
           
            Long con=Long.parseLong(request.getParameter("t2"));
            
            PreparedStatement ps=conn.prepareStatement("update user_register set name=?,email=?,contact=? where id=?" );
            
            ps.setString(1, user);
            ps.setString(2, email);
            ps.setLong(3, con);
            ps.setInt(4, id);
          int i=ps.executeUpdate();
            
               RequestDispatcher rds=request.getRequestDispatcher("//newjsp.jsp");
            rds.forward(request, response);
            
         
        
        
        
        
        
        %>
    </body>
</html>
