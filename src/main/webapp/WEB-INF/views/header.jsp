<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>header</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
   
    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
    
<!-- CSS Style Files  -->
  <link rel="stylesheet" href="<c:url value='/resources/css/navbarcolor.css'></c:url>">
  <link rel="stylesheet" href="<c:url value='/resources/css/backgroundimage.css'></c:url>">
</head>
<body>
<div class="navbar">
<nav class="navbar navbar-default" id="navcolor">
<div  class="navbar-header">
<a href="" class="navbar-brand"><img src="<c:url value='/resources/images/niit.jfif'></c:url>" height="29px" width="60px"></a>
<button type="button" class="navbar-toggle collapsed" 
   data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
</div>
<div class="collapse navbar-collapse" id="collapse-example">
<ul class="nav navbar-nav" id="links">
<li><a href="<c:url value='/'></c:url>"><span class="glyphicon glyphicon-home"></span>Home</a></li>
<li><a href="<c:url value='/all/getallproducts'></c:url>">Browse all products</a></li>
<security:authorize access="hasRole('ROLE_ADMIN')">
<li><a href="<c:url value='/admin/getproductform'></c:url>">Add Product</a></li>
<li><a href="<c:url value='/all/AddCategory'></c:url>">Add Category</a></li>
<li><a href="<c:url value='/all/AddSupplier'></c:url>">Add Supplier</a></li>
       <li><a href="<c:url value='/all/ViewCategory'></c:url>">View Category</a></li>
       <li><a href="<c:url value='/all/ViewSupplier'></c:url>">View Supplier</a></li>
       
</security:authorize>
<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Select By Category
			<span class="caret"></span></a>
			<ul class="dropdown-menu">
			<c:forEach items="${categories}" var="category">
				<li>
					<a href="<c:url value='/all/searchByCategory?searchCondition=${category.categoryName }'></c:url>">${category.categoryName }</a>
				</li>
			</c:forEach>
				<li>
				<a href="<c:url value='/all/searchByCategory?searchCondition=All'></c:url>">All</a>
				</li>
			
			</ul>
			</li>
			<ul class="nav navbar-nav navbar-right">
<c:if test="${pageContext.request.userPrincipal.name==null }">			
<li><a href="<c:url value='/all/getregistrationform'></c:url>">Sign Up</a></li>
<li><a href="<c:url value='/login'></c:url>"><span class="glyphicon glyphicon-log-in"></span>Sign In</a></li>
</c:if>
</ul>
<c:if test="${pageContext.request.userPrincipal.name!=null }">
<security:authorize access="hasRole('ROLE_USER')">
<li><a href="<c:url value='/cart/getcartitems'></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span>(${cartSize })</a></li>
</security:authorize>
<ul class="nav navbar-nav navbar-right">
<li><a href="<c:url value='/j_spring_security_logout'></c:url>"><span class="glyphicon glyphicon-log-out"></span>Sign Out</a></li>
</ul>
<li><a href="">Welcome ${pageContext.request.userPrincipal.name }</a></li>
</c:if>
<li><a href="<c:url value='/aboutus'></c:url>">About Us</a></li>
</ul>
</div>
</nav>
</div>
</body>
</html>