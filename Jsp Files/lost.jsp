<%-- 
    Document   : lost
    Created on : 3 Jul, 2019, 9:21:02 AM
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
        <form action="lostpw.jsp" method="post">
           <input type="text" name="seca" placeholder="Enter Name">
           <br>
           <input type="text" name="seca" placeholder="Enter Email">
           <br>
           <input type="submit" name="mysa" value="submit">
       </form>
     <!--   
       <% 
          
           String un=request.getParameter("name");
          
           String m="";
           
           try {
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/db1");
           PreparedStatement ps= cn.prepareStatement("select * from login where ussr=?");
           ps.setString(1, un);
           ResultSet rs=ps.executeQuery();
           if(rs.next()) {
               
               m=rs.getString("sq");
               out.print("Security Question : " + rs.getString("sq"));
           }
       %>
   
       <form action="chksq.jsp" method="post">
           <input type="text" name="seca" placeholder="Enter Security Answer">
           <br>
           <input type="submit" name="mysa" width="20px">
       </form>  
       <%
         cn.close();
                }
                catch(Exception ex)
                {
                    out.print(ex);
                }  
       %>
    </body>
</html>
