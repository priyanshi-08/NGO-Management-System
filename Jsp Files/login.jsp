<%-- 
    Document   : login
    Created on : 27 Jun, 2019, 10:22:46 AM
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
      <!--  <h1>Hello World!</h1>  -->
        <%
            String un=request.getParameter("name");
            String p=request.getParameter("pass");
            
       //     out.print(un+" "+ p);
            
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/db1");
                
                PreparedStatement ps=cn.prepareStatement("select * from  login where ussr=? and pass=?");
                ps.setString(1,un);
                ps.setString(2,p);
                
                ResultSet rs= ps.executeQuery();
                
                
                if(rs.next())
                {
                    session.setAttribute("usnm", un);
                    session.setAttribute("ut", rs.getString("type"));

                    String type=rs.getString("type");
                        if("donar".equalsIgnoreCase(type)){
                            response.sendRedirect("dprofile.jsp");
                        } 
                     else if("login".equals(type)){
                            response.sendRedirect("adminprofile.jsp");
                        }
                }
                else
                {
                    out.print("login fail");
                }
                
                cn.close();
            }
            catch(ClassNotFoundException ex)
            {
                out.print(ex);
            }
            catch(SQLException ex)
            {
                out.print(ex);
            }

        %>    
    </body>
</html>
