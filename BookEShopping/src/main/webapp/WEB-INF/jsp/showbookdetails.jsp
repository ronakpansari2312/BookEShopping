<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<title>Resource List</title>
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
<h2>Resource List</h2>
<font color="green">${msg}</font>
<%
try {

String connectionURL = "jdbc:mysql://localhost:3306/bookshopping";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "root");
statement = connection.createStatement();
String QueryString = "SELECT * from bookdetails";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
<TR>
<TH>Book Name</TH>
<TH>Book Code</TH>
<TH>Book Description</TH>
<TH>Author</TH>
<TH>Category</TH>
<TH>Type</TH>
<TH>Option</TH>
<TH>Rate</TH>
<TH>Discount</TH>
<th>no of copies available</th>
<th>no of copies sold</th>
<th>no of copies returned</th>
<th>ARCHIEVE</th>
</TR>
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getString(1)%></TD>
<TD><a href="/showbook?bookcode=<%=rs.getString(2)%>"><%=rs.getString(2)%></a></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>
<TD><%=rs.getString(7)%></TD>
<TD><%=rs.getString(8)%></TD>
<TD><%=rs.getInt(9)%></TD>
<TD><%=rs.getInt(10)%></TD>
<TD><%=rs.getInt(11)%></TD>
<TD><%=rs.getInt(12)%></TD>
<TD><%=rs.getString(13)%></TD>

<td><a href="/archieve?bookcode=<%=rs.getString(2)%>">Archive</a></td>
<td><a href="/unarchieve?bookcode=<%=rs.getString(2)%>">Undo archive</a></td>
</TR>
<% } %>
<%

rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</TABLE>
</body>
</html>