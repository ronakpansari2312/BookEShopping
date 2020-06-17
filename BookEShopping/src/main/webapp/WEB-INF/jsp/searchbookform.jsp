<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
label {
  
  
  
  text-align: left;
  width: 100px;
  line-height: 10spx;
  
}

input {
  height: 25px;
  
  
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
<form method="POST" action="/searchbookform">

<div>
<fieldset>
<label>Book Name</label> <input type="text" name="bookname"
placeholder="Enter book name" >
</fieldset>
</div>
<div>
<fieldset>
<label>Author</label> <input type="text" name="author"
placeholder="enter author name">
</fieldset>
</div>
<input type="submit" placeholder="Submit"> 

</form>
<table>
<thead>
<tr>
<td><b>bookName</b></td>
<td><b>bookCode</b></td>
<td><b>bookDesc</b></td>
<td><b>author</b></td>
<td><b>bookcategory</b></td>
<td><b>booktype</b></td>
<td><b>buyingoption</b></td>
<td><b>bookrate</b></td>
<td><b>discount</b></td>
</tr>
</thead>
<tbody>
<c:forEach items="${list}" var="book">
					<tr>
						<td>${book.bookName}</td>
						<td>${book.bookCode}</td>
						<td>${book.bookDesc}</td>
						<td>${book.author}</td>
						<td>${book.bookcategory}</td>
						<td>${book.booktype}</td>
						<td>${book.buyingoption}</td>
						<td>${book.bookrate}</td>
						<td>${book.discount}</td>
					</tr>
</c:forEach>

</tbody>
</table>

</div>
</body>
</html>

