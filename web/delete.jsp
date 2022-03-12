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
            try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud?zeroDateTimeBehavior=convertToNull", "root", "root");
            int req_id = Integer.parseInt(request.getParameter("id"));
            PreparedStatement ps = conn.prepareStatement("delete from user_register where id=?");
            ps.setInt(1, req_id);
            int i = ps.executeUpdate();

          
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("newjsp.jsp");
                requestDispatcher.forward(request, response);
            }
            catch(Exception e){
            out.println(e);
            }
            
        %>
    </body>
</html>
