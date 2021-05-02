<%-- 
    Document   : signup
    Created on : 29 Jun, 2019, 12:34:01 AM
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
        <%
            
            
            String nm= request.getParameter("fname");
            String add= request.getParameter("addr");
            String em= request.getParameter("email");            
            String p= request.getParameter("pswd");
            String mn= request.getParameter("mobno");
            String ag=request.getParameter("age");
            String im=request.getParameter("image");
            String occu=request.getParameter("oc");
            String gen=request.getParameter("g");
            String sec=request.getParameter("sq");
            String se=request.getParameter("sa");
            
            
            out.print(nm+ " "+ add + " " + em + " "+ p + " "+mn + " "+ ag + " "+im+ " "+occu + " " + gen);
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/db1");
                
                PreparedStatement ps=cn.prepareStatement("select max(d_id) from donar");
                ResultSet rs= ps.executeQuery();
                int x=1001;
                if(rs.next())
                {
                    if(rs.getString(1)!=null)
                    {
                        x=rs.getInt(1)+1;
                    }
                }
                
                 ps=cn.prepareStatement("insert into donar values(?,?,?,?,?,?,?,?,?,0,?)");
                ps.setString(1, nm);
                ps.setInt(2, x);
                ps.setInt(3, Integer.parseInt(ag));
                ps.setString(4, gen);
                ps.setString(5, add);
                ps.setString(6, em);
                ps.setString(7, p);              
                ps.setString(8, im);
                ps.setString(9, occu);
                
                ps.setLong(10, Long.parseLong(mn));
                
                ps.executeUpdate();
                
                
                ps=cn.prepareStatement("insert into login values(?,?,?,'Donar',?)");
                ps.setString(1, nm);
                ps.setString(2, p);
                ps.setString(3, sec);
                ps.setString(4, se);
                
                
                
                ps.executeUpdate();
                
                cn.close();
                
                
                response.sendRedirect("index.html");
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
