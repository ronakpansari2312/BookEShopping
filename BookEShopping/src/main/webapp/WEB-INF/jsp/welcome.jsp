 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>HOME PAGE</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <base href="resources\">
        <style type="text/css">
        section{
            background-color: white;

        }
        
        .carousel,
		.item,
		.active {
		    height: 100%;
		    margin-bottom: 20px;
		}
		
		.carousel-inner > .item > img {
		  width:1540px;
		  height:610px;
		}

		
		/* Background images are set within the HTML using inline CSS, not here */
		
		.fill {
		    width: 100%;
		    height: 20%;
		    background-position: center;
		    -webkit-background-size: cover;
		    -moz-background-size: cover;
		    background-size: 100%;
		    -o-background-size: cover;
		}

        </style>
    </head>
    <body>
    
    
    <nav class="navbar navbar-default bg-white">  
  <div class="container-fluid">  
    <div class="navbar-header">  
      <a class="navbar-brand" href="#"><b>Book E Shopping</b></a> 
      
    </div>  
    <ul class="nav navbar-nav navbar-right">  
       
      <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>  
      <li><a href="/registeruser"><span class="glyphicon glyphicon-user"></span>Register as user</a></li>  
      <li><a href="/registeradmin"><span class="glyphicon glyphicon-user"></span>Register as admin</a></li>  
    </ul>  
  </div>  
</nav>  
    
<div class="container">  
  
</div>  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
    
<section>
<!-- Carousel code 2-->
<div id="myCarousel2" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img class="fill" src="https://wallpaperplay.com/walls/full/8/1/6/162424.jpg" alt="Mens" id="img" width:100%>
    </div>

    <div class="item">
      <img class="fill" src="https://wallpaperplay.com/walls/full/6/a/6/162429.jpg" alt="Mens" id="img" width:100%>
    </div>

    <div class="item">
      <img class="fill" src="https://wallpaperplay.com/walls/full/e/c/a/162419.jpg" alt="Mens" id="img" width:100%>
    </div>

    

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel2" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel2" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</section>

</body>
</html>




