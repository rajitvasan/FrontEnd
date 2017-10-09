<%@ page language="java" contentType="text/html"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		 <link href="css/styles.css" rel="stylesheet" />
		 
		<title>FaShoes - Fashionable and Comfortable Shoes</title>
	</head>
    
	<body>
	
	<nav class="navbar navbar-inverse navbar-transparent">
  		<div class="container-fluid">
  	
    		<div class="navbar-header">
    			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>      
				</button>
         	</div>
         	
         	<a class="navbar-brand">
				<img src="<c:url value="/resources/images/FaShoesLogo.jpg" />" class="img-rounded" alt="Logo" style="max-width:125px;margin-top:-10px;max-height:40px">
            </a>
            <a class="navbar-brand">
	            	- For Fashionable and Comfortable Shoes
            </a>
         	
	        <div class="collapse navbar-collapse" id="myNavbar">	    	
    	    	<ul class="nav navbar-nav navbar-right">
        			<li><a href="#"><span class="glyphicon glyphicon-home"></span> Home </a></li>
	      			<li><a href="Register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
	      			<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      			<li><a href="#"><span class="glyphicon glyphicon-envelope"></span>Contact us </a></li>
			    </ul>
			</div>
		</div>	   
	  </nav>
	  
	  
	  <!--  Carousal  -->
	  
	  <div class="container">
		  <div id="myCarousel" class="carousel" data-ride="carousel">
		    <!-- Indicators -->
		    <ol class="carousel-indicators">
		      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		      <li data-target="#myCarousel" data-slide-to="1"></li>
		      <li data-target="#myCarousel" data-slide-to="2"></li>
		    </ol>
		    
		    <!--  Wrapper for slides  -->
		    <div class="carousel-inner">
				<div class="item active">
					<img src= "<c:url value="/resources/images/carousel-01.jpg" />" alt="CA0" style="width:100%; max-height: 400px">
	        	</div>
	
	    		<div class="item">
	      			<img src= "<c:url value="/resources/images/carousel-02.jpg" />" alt="CA1" style="width:100%; max-height: 400px">    				
	    		</div>
	
	    		<div class="item">
	      			<img src= "<c:url value="/resources/images/carousel-03.jpg" />" alt="CA2" style="width:100%; max-height: 400px">
	    		</div>
  			</div>
			
			 <!-- Left and right controls -->
			  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  
			  <a class="right carousel-control" href="#myCarousel" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right"></span>
			    <span class="sr-only">Next</span>
			  </a>  
		   </div>
	  </div>



<!-- Bottom Navigation Bar -->
  <nav class="navbar navbar-inverse navbar-fixed-bottom" style="background-color: #e3f2fd">
  
  	<div class="container-fluid">
    	<div class="navbar-header"> </div>
    
    <ul class="nav navbar-nav">
      <li><a href="#">Home</a></li>
      <li><a href="#">About us</a></li>
    </ul>
  	
  	</div>
  
</nav>
	</body>
</html>




<!--  

<html>
<body>
<h2>Hello World!</h2>
<a href="HelloPage?name1=Eric">Click Hello </a>
<h3>
<a href="Register?name1=Vishnu">Click Register</a>
 </h3>


</body>
</html>

-->