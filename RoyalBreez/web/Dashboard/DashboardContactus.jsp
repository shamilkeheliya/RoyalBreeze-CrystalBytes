<%-- 
    Document   : DashboardContactus
    Created on : Dec 5, 2021, 1:00:20 AM
    Author     : Hashini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "royalbreez";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DASHBOARD - CONTACT US</title>
    </head>
    <body style="margin: 35px;">
        <ul class="nav nav-pills nav-fill">
            <li class="nav-item">
              <a class="nav-link active" href="#">Contact Us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="DashboardCustomers.jsp">Customers</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="DashboardRoomReservation.jsp">Rooms Reservation</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="DashboardHallReservation.jsp">Halls Reservation</a>
            </li>
        </ul>
        
        
<table class="table table-striped">
    
     <thead>
     <tbody>
    <tr>
      <th scope="col">Customer ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Message</th>
      <th scope="col">Seen</th>
      <th scope="col">Date</th>
      
      
    </tr>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from contact_us";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
    <td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("message") %></td>
<td><%=resultSet.getString("seen") %></td>
<td><%=resultSet.getString("date") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tbody>
</table>
    </body>
</html>
