<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
label {
  
  
  
  text-align: left;
  width: 100px;
  line-height: 10spx;
  
}

input {
  height: 25px;
  
  
}
form{
width:50%;
border:1px solid;
text-align:center;
margin:20px;
  padding:20px;
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
</style>

</head>
<body>
<div class="topnav">
  <a href="/registeruser"><span class="glyphicon glyphicon-user"></span>Register as user</a>
 <a href="/registeradmin"><span class="glyphicon glyphicon-user"></span>Register as admin</a>
  <a href="/login"><span class="glyphicon glyphicon-log-in"></span>Login</a>
  
</div>

	<font color="green">${msg}</font>
	<form:form method="post" modelAttribute="bookdetails"
		action="/addbookdetails">
		<fieldset>
			<form:label path="bookName">Book Name</form:label>
			<form:input type="text" placeholder="Enter the Book Name"
				required="required" path="bookName" />
		</fieldset><br>
		<fieldset>
			<form:label path="bookCode">Book Code</form:label>
			<form:input type="text" path="bookCode"
				placeholder="Enter the Book Code" required="required" />
		</fieldset><br>
		<fieldset>
			<form:label path="bookDesc">Book Description</form:label>
			<form:input type="text" path="bookDesc"
				placeholder="Enter the Book Description" required="required" />
		</fieldset><br>
		<fieldset>
			<form:label path="author">Author</form:label>
			<form:input type="text" path="author" placeholder="Enter the Author"
				required="required" />
		</fieldset><br>
		<fieldset>
			<form:label path="bookcategory">Category</form:label>
			<form:select required="required" path="bookcategory">
				<option value="Fiction">Fiction</option>
				<option value="Horror">Horror</option>
				<option value="Personalitydevlopment">Personality
					devlopment</option>
				<option value="Reference">Reference</option>
				<option value="Novel">Novel</option>
				<option value="Comic">Comic</option>
				<option value="Kidsbook">Kidsbook</option>
				<option value="Etc">Etc</option>
			</form:select>
		</fieldset><br>
		<fieldset>
			<form:label path="booktype">Type</form:label>
			<form:select required="required" path="booktype">
				<option value="EBook">EBook</option>
				<option value="Hardcopy">Hardcopy</option>
			</form:select>
		</fieldset><br>
		<fieldset>
			<form:label path="buyingoption">Option</form:label>
			<form:select required="required" path="buyingoption">
				<option value="Renting">Renting</option>
				<option value="tobuy">BUY</option>
				<option value="rent/buy">Rent/BUY</option>
			</form:select>
		</fieldset><br>
		<fieldset>
			<form:label path="bookrate">Rate</form:label>
			<form:input type="text" path="bookrate" placeholder="Enter the Rate"
				required="required" pattern="[0-9]+" title="enter number only" />
		</fieldset><br>
		<fieldset>
			<form:label path="discount">Discount</form:label>
			<form:input type="text" path="discount"
				placeholder="Enter the Discount (if any) " pattern="[0-9]+"
				title="enter number only" />
		</fieldset><br>
		<fieldset>
			<form:label path="noofcopiesavailable">No. Of Copies Available:</form:label>
			<form:input type="number" path="noofcopiesavailable"
				placeholder="Enter the no of copiesavailable" value='0' min='0'
				pattern="[0-9]+" title="enter number only" />
		</fieldset><br>
		<fieldset>
			<form:label path="noofcopiessold">No. Of Copies Sold:</form:label>
			<form:input type="number" path="noofcopiessold"
				placeholder="Enter the no of copiessold" value='0' min='0'
				pattern="[0-9]+" title="enter number only" />
		</fieldset><br>
		<fieldset>
			<form:label path="noofcopiesreturned">No. Of Copies Returned:</form:label>
			<form:input type="number" path="noofcopiesreturned"
				placeholder="Enter the no of copiesreturned" value='0' min='0'
				pattern="[0-9]+" title="enter number only" />
		</fieldset><br>
		<fieldset>
			<form:label path="bookpreview">Book Preview:</form:label>
			<form:input type="text" path="bookpreview"
				placeholder="Enter the book link" />
		</fieldset><br>
		<input type="submit" />
	</form:form>

</body>
</html>
