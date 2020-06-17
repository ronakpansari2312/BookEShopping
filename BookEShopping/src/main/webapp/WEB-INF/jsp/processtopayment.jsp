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

<font color="green">${message}</font>
<form method="post" action="/order">
<input value="${quan}" name="quan"/>
	<table>
	
		<tr>
			<td><input type="text" value="${userid}" name="userid" readonly="true"/></td>
		</tr>
		<tr>
			<td><input type="text" value="${bookname}" name="bookname"  readonly="true"/></td>
		</tr>
		<tr>
			<td><label>CARD NUMBER</label></td>
			<td><input type="text" placeholder="0000-0000-0000"  pattern="[0-9]{4}-[0-9]{4}-[0-9]{4}" name="cardnumber" required="required"/></td>
		</tr>
		<tr>
			<td><label>CVV</label></td>
			<td><input type="password" pattern="[0-9]{3}" name="cvv" required="required"/> </td>
		</tr>
		<tr>
			<td><label>EXPIRY DATE:</label></td>
			<td><input type="date" name="date" required="required"></td>
		</tr>
	</table>
	<input type="submit"/>
</form>
</body>
</html>