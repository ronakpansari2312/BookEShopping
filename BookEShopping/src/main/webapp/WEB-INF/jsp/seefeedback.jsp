<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
form{
width:50%;
border:2px solid;
text-align:center;
margin:20px;
  padding:20px;
}
h5
{
text-align:center;
}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-color:lightgray;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: right;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
form {
    width: 600px;
    margin: 0 auto;
}
td
{
    padding:0 15px;
}
</style>
</head>
<body>
<div class="topnav">

  <a href="/registeruser"><span class="glyphicon glyphicon-user"></span>Register as user</a>
 <a href="/registeradmin"><span class="glyphicon glyphicon-user"></span>Register as admin</a>
  <a href="/login"><span class="glyphicon glyphicon-log-in"></span>Login</a>
  <a href="/welcome">Home</a>
</div>
 <div>
</body>
</html>





<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "bookshopping";
String userId = "root";
String password = "root";

//try {
// Class.forName(driverName);
//} catch (ClassNotFoundException e) {
//e.printStackTrace();
//}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<h2 align="center"><font><strong>Feedback</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr>
<td><b>userName</b></td>
<td><b>contactNo</b></td>
<td><b>feedback</b></td>

</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM feedback";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("userName") %></td>
<td><%=resultSet.getString("contactNo") %></td>
<td><%=resultSet.getString("feedback") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>