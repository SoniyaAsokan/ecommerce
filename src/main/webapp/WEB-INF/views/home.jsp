<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
 <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<link rel="stylesheet" href="resources/css/index.css">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Home</title>
</head>
<body>
<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
	<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	<li data-target="#myCarousel" data-slide-to="1" ></li>
	<li data-target="#myCarousel" data-slide-to="2" ></li>
	<li data-target="#myCarousel" data-slide-to="3" ></li>
</ol>
<div class="carousel-inner" role="listbox">
	<div class="item active">
			<img src="resources/images/img1.jfif" alt="first" height="0%" width="100%" class="img-circle"></img>
			  <div class="container">
                  <div class="carousel-caption">
                        <h1>WELCOME TO THE CAR STORE</h1>
                        <p>Here You Can Browse And Buy Cars.Order Now For Your Amazing New Arrivals</p>
                  </div>
             </div>
    </div >
	<div class="item">
			<img src="resources/images/img2.jfif" alt="second" height="0%" width="100%" class="img-circle"></img>
			  <div class="container">
                  <div class="carousel-caption">
                       <h1>The Car Store.</h1>
                       <p>online shopping can make your life more easier</p>
                  </div>
            </div>
    </div>
	<div class="item ">
			<img src="resources/images/img3.jpg" alt="three" height="0%" width="100%" class="img-circle"></img>
			   <div class="container">
                  <div class="carousel-caption">
                       <h1>The Car You Love</h1>
                       <p>live Freely,Work Happily And Drive Safely!!</p>
                  </div>
            </div>
    </div>
	<div class="item">
			<img src="resources/images/img4.jfif" alt="four" height="0%" width="100%" class="img-circle"></img>
			   <div class="container">
                 <div class="carousel-caption">
                        <h1>Any car can be a "cool" car</h1>
                        <p>your life,your car...you own it!!</p>
                 </div>
           </div>
    </div>
    <div class="item">
        <img src="resources/images/img5.jfif" alt="Picture5" height="0%" width="100%" class="img-circle">
      		<div class="container">
      			<div class="carousel-caption">
                         <h1>Any car can be a "cool" car</h1>
                         <p>your life,your car...you own it!!</p>
            	</div>
            </div>            
      </div>
</div>
	    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
</div>
</body>
</html>