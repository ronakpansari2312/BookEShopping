<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
  width: 200px;
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
 
 <h5>All fields are mandatory</h5>
 <form:form class="border-class" method="post" modelAttribute="registerclass" action="/register">
  <fieldset>
   <form:label path="firstName">First Name:</form:label>
   <form:input type="text"
    placeholder="Enter Your First Name" required="required" pattern="[A-Za-z]+"
    path="firstName"/>
  </fieldset><br>
  <fieldset>
   <form:label path="lastName">Last Name:</form:label>
   <form:input type="text" path="lastName"
    placeholder="Enter Your Last Name" required="required" pattern="[A-Za-z]+"/>
  </fieldset><br>
  <fieldset>
   <form:label path="dob">Date Of Birth:</form:label>
   <form:input path="dob" type="date" required="required"/>
  </fieldset><br>
  <fieldset>
   <form:label path="gender">Gender:</form:label>
   <form:select required="required" path="gender">
    <option value="male">Male</option>
    <option value="female">Female</option>
   </form:select>
  </fieldset><br>
  <fieldset>
   <form:label path="contactNo">Contact Number:</form:label>
   <form:input type="tel" path="contactNo"
    pattern="[7-9]{1}[0-9]{9}" required="required"/>
  </fieldset><br>
  <fieldset>
   <form:label path="email">Email:</form:label>
   <form:input type="email" path="email" required="required" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="not a valid email"/>
  </fieldset><br>
  <fieldset>
   <form:label path="userCategory">User Category:</form:label>
   <form:input path="userCategory" value="${category}" readonly="true"/>
  </fieldset><br>
  <fieldset>
   <form:label path="userId">User Id:</form:label>
   <form:input path="userId" type="text" value="${userId}" readonly="true"/>
  </fieldset><br>
  <fieldset>
   <form:label path="password">Password:</form:label>
   <form:input path="password" type="password" required="required"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"/>
  </fieldset><br>
  <fieldset>
   <form:label path="petname">What is your Pet name?</form:label>
   <form:input path="petname" required="required"/>
  </fieldset><br>
  <fieldset>
   <form:label path="favteachername">Who is your favourite childhood teacher?</form:label>
   <form:input path="favteachername" required="required"/>
  </fieldset><br>
  <fieldset>
   <form:label path="schoolname">What is your School Name?</form:label>
   <form:input path="schoolname" required="required"/>
  </fieldset><br>
  <input type="submit"/>
 </form:form>
 <h2><font color="green">${msg}</font></h2>
 
</body>
</html>
