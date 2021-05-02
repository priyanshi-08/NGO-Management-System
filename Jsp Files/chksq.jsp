<%-- 
    Document   : chksq
    Created on : 3 Jul, 2019, 10:11:57 AM
    Author     : ABHIJEET
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%@page import="java.sql.*"%>
    <body>
        <h1>Hello World!</h1>
        <% 
           String ab=request.getParameter("seca");
           try {
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/db1");
           PreparedStatement ps= cn.prepareStatement("select * from login where ussr=?");
           ps.setString(1, ab);
           ResultSet rs=ps.executeQuery();
           if(rs.next()) {
               
           }
        %>   
    </body>
</html>
