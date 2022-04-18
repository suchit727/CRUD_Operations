package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    \n");
      out.write("    <style>\n");
      out.write("        .na{\n");
      out.write("            background: black;\n");
      out.write("           \n");
      out.write("        }\n");
      out.write("       .p1{ position: relative;left: 580px;}\n");
      out.write("     \n");
      out.write("    </style>\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    <title>Hello, world!</title>\n");
      out.write("  </head>\n");
      out.write("  <body style=\" overflow: hidden;\">\n");
      out.write("  \n");
      out.write("  <div class=\"na\">\n");
      out.write("  <ul class=\"nav nav-pills mb-3\" id=\"pills-tab\" role=\"tablist\">\n");
      out.write("  <li class=\"nav-item\">\n");
      out.write("    <a class=\"nav-link active\" id=\"pills-home-tab\" data-toggle=\"pill\" href=\"#pills-home\" role=\"tab\" aria-controls=\"pills-home\" aria-selected=\"true\">Add User</a>\n");
      out.write("  </li>\n");
      out.write("  <li class=\"nav-item\">\n");
      out.write("    <a class=\"nav-link\" id=\"pills-profile-tab\" data-toggle=\"pill\" href=\"#pills-profile\" role=\"tab\" aria-controls=\"pills-profile\" aria-selected=\"false\">Users</a>\n");
      out.write("  </li>\n");
      out.write("  <li class=\"nav-item\">\n");
      out.write("    <a class=\"nav-link\" id=\"pills-contact-tab\" data-toggle=\"pill\" href=\"#pills-contact\" role=\"tab\" aria-controls=\"pills-contact\" aria-selected=\"false\">Update or delete user</a>\n");
      out.write("  </li>\n");
      out.write("</ul>\n");
      out.write("  </div>\n");
      out.write("<div class=\"tab-content\" id=\"pills-tabContent\">\n");
      out.write("    <div class=\"tab-pane fade show active\" id=\"pills-home\" role=\"tabpanel\" aria-labelledby=\"pills-home-tab\">\n");
      out.write("        \n");
      out.write("        <h1 style=\"position: relative; left: 585px;\">Add User</h1><br><br>\n");
      out.write("        <div class=\"p1\">\n");
      out.write("            <form name=\"Add_User\" method=\"post\" enctype=\"multipart/form-data\" action=\"http://localhost:8080/CRUD/FileUploadServlet\" >      \n");
      out.write("            <input id=\"t\" type=\"Number\" name=\"n1\" value=\"\" placeholder=\"User Id\" /><br><br>\n");
      out.write("            <input id=\"t\" type=\"text\" name=\"t1\" value=\"\" placeholder=\"User Name\" /><br><br>\n");
      out.write("            <input id=\"t\" type=\"email\" name=\"e1\" value=\"\" placeholder=\"Email\"/><br><br>\n");
      out.write("            <input id=\"t\" type=\"tel\" name=\"t2\" value=\"\" placeholder=\"Contact\"/><br><br>\n");
      out.write("            \n");
      out.write("            <input type=\"file\"  name=\"file\" required/><br><br> \n");
      out.write("            <input type=\"text\" value=\"C:\\Users\\Admin\\Documents\\NetBeansProjects\\CRUD\\web\\upload\" readonly name=\"destination\"/><br><br>\n");
      out.write("           \n");
      out.write("            <input type=\"submit\" class=\"btn btn-primary\" style=\"position: relative;top: 30px; left:50px;\" value=\"Add user\" />\n");
      out.write("        \n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("  <div class=\"tab-pane fade\" id=\"pills-profile\" role=\"tabpanel\" aria-labelledby=\"pills-profile-tab\">\n");
      out.write("    <table width='100%' border='1'>\n");
      out.write("    <thead align='center'>\n");
      out.write("   \n");
      out.write("        <th><h2>Users Image</h2></th>\n");
      out.write("        <th><h2>User Id</h2></th>\n");
      out.write("        <th><h2>User Name</h2></th>\n");
      out.write("        <th><h2>Email Id</h2></th>\n");
      out.write("        <th><h2>Mobile Number</h2></th>\n");
      out.write("      ");

         
 Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud?zeroDateTimeBehavior=convertToNull", "root", "root");
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
 ResultSet rs=stmt.executeQuery("Select * from user_register");
        while(rs.next()){
      out.write("\n");
      out.write("         \n");
      out.write("        <tr>\n");
      out.write("            <td><b><h4><img src=\"upload/");
      out.print(rs.getString(5));
      out.write("\" style=\"width: 150px;height: 200px;\" alt=\"\"/></h4></b></td>\n");
      out.write("           <td><b><h4>");
      out.print(rs.getInt(1) );
      out.write("</h4></b></td>\n");
      out.write("           <td><b><h4>");
      out.print(rs.getString(2));
      out.write("</h4></b></td>\n");
      out.write("            <td><b><h4>");
      out.print(rs.getString(3));
      out.write("</h4></b></td>   \n");
      out.write("            <td><b><h4>");
      out.print( rs.getLong(4));
      out.write("</h4></b></td>  \n");
      out.write("             \n");
      out.write("         </tr>    \n");
      out.write("    \n");
      out.write("        ");
}
      out.write("\n");
      out.write("  \n");
      out.write("    </table>\n");
      out.write("  </div>\n");
      out.write("        <div class=\"tab-pane fade\" id=\"pills-contact\" role=\"tabpanel\" aria-labelledby=\"pills-contact-tab\">\n");
      out.write("            <table width='100%' border='1'>\n");
      out.write("    <thead align='center'>\n");
      out.write("   \n");
      out.write("        <th><h2>Users Image</h2></th>\n");
      out.write("        <th><h2>User Id</h2></th>\n");
      out.write("        <th><h2>User Name</h2></th>\n");
      out.write("        <th><h2>Email Id</h2></th>\n");
      out.write("        <th><h2>Mobile Number</h2></th>\n");
      out.write("        <th><h2>Update</h2></th>\n");
      out.write("        <th><h2>Delete</h2></th>\n");
      out.write("        <form>\n");
      out.write("            <input type=\"hidden\" name=\"id\">\n");
      out.write("        </form>\n");
      out.write("      ");

         
 Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud?zeroDateTimeBehavior=convertToNull", "root", "root");
Statement stmt1=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
 ResultSet rs1=stmt1.executeQuery("Select * from user_register");
        while(rs1.next()){
      out.write("\n");
      out.write("         \n");
      out.write("        <tr>\n");
      out.write("            <td><b><h4><img src=\"upload/");
      out.print(rs1.getString(5));
      out.write("\" style=\"width: 150px;height: 200px;\" alt=\"\"/></h4></b></td>\n");
      out.write("            <td><b><h4>");
      out.print(rs1.getInt(1) );
      out.write("</h4></b></td>\n");
      out.write("           <td><b><h4>");
      out.print(rs1.getString(2));
      out.write("</h4></b></td>\n");
      out.write("            <td><b><h4>");
      out.print(rs1.getString(3));
      out.write("</h4></b></td>   \n");
      out.write("            <td><b><h4>");
      out.print( rs1.getLong(4));
      out.write("</h4></b></td>\n");
      out.write("            <td><b><h4><a href=\"newjsp1.jsp\">edit</a></h4></b></td>\n");
      out.write("            <td><a class=\"btn-danger\"  href=\"delete.jsp?id=");
      out.print(rs1.getInt(1));
      out.write("\"> <b>Delete</b></a>\n");
      out.write("            </td>\n");
      out.write("            \n");
      out.write("        </tr>    \n");
      out.write("    \n");
      out.write("        ");
}
      out.write("\n");
      out.write("  \n");
      out.write("        </div>\n");
      out.write("</div>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
