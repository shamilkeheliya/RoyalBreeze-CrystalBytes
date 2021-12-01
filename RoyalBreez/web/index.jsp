<%-- 
    Document   : index
    Created on : Nov 30, 2021, 9:37:50 PM
    Author     : ASUS
--%>

<%@page import="model.connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
            connection conn = new connection();
            conn.createConnection();
            
            conn.sqlCommand("insert into contact_us(id) values(1)");
        %>
    </body>
</html>
