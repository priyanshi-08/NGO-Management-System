<%-- 
    Document   : logout
    Created on : 3 Jul, 2019, 12:51:53 AM
    Author     : ABHIJEET
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
        %>
        
        <jsp:forward page="index.html"/>

    </body>
</html>
