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
<font color="green">${msg}</font>

	<form method="post" action="/updatebookdetails">
	<input name="bookcode" value="${bookcode}"/>
	
		<table>
			<tr>
				<td><label>Rate</label> </td>
				<td><input type="text" name="rate" 
				placeholder="Enter the Rate" required="required" pattern="[0-9]+" title="enter number only" value="${rate}"/></td>
			</tr>
			<tr>
				<td><label>Discount</label> </td>
				<td><input type="text" name="dis"
				placeholder="Enter the Discount (if any) " pattern="[0-9]+" title="enter number only" value="${dis}"/></td>
			</tr>
			<tr>
				<td><label>No. Of Copies Available:</label> </td>
				<td><input type="number" name="available"
				placeholder="Enter the no of copiesavailable" pattern="[0-9]+" title="Enter number only" value="${available}"/></td>
			</tr>
			<tr>
				<td><label>No. Of Copies Returned:</label> </td>
				<td><input type="number" name="returned"
				placeholder="Enter the no of copiesreturned" pattern="[0-9]+" title="enter number only" value="${return}"/></td>
			</tr>
		</table>
		<input type="submit"/>
	</form>
		
</body>
</html>