<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
border:2px solid;
text-align:center;
margin:20px;
  padding:20px;
}
body {
background-image:url("https://images.hdqwalls.com/download/open-road-sky-5k-r3-1920x1080.jpg");
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
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
p
{
text-align:center;
color:white;

}
a
{	
	color:black;
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
  <a href="/welcome">Home</a>
</div>
 <div>
 <br><br>
  <form method="POST" action="/login">
  <font color="red">${errorMessage}</font>
   <div>
    <fieldset>
     <label>User Id:-</label> <input type="text" name="userid"
      placeholder="Enter UserId" required="required">
    </fieldset>
   </div>
   <br>
   <div>
    <fieldset>
     <label>Password:-</label> <input type="password" name="pswrd"
      placeholder="Enter Password" required="required">
    </fieldset>
   </div>
   <br>
   <input type="submit" value="Login">
   <br>
   
   <br>
   <b><a href="/forgotpassword">FORGOT PASSWORD</a></b>&nbsp&nbsp&nbsp&nbsp&nbsp
  
 <b><a href="/forgotuserid">FORGOT USERID</a></b> 
   
  </form>
  <br><br>
  
 <!--  <br><br>
  <a href="/forgotpassword">FORGOT PASSWORD</a>
  <br><br>
  <a href="/forgotuserid">FORGOT USERID</a>
  --> 
 </div>
 
 
<footer>
  <p><b>&#169 2020 Copyright:Cognizant</b>
  </p>
</footer>
</body>
</html>