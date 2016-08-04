<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap css files  -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>INSERT</title>
</head>




<body>
	<div class="jumbotron" style="padding: 50px; margin: 0px">
		<h1>INSERT PRODUCT</h1>
		<h2>ADMIN</h2>
	</div>

	<div class="btn-group btn-group-justified">
  <div class="btn-group">
    <button type="button" class="btn btn-primary">View Products</button>
  </div>
  <div class="btn-group">
   <form action="addcategory">
<button type="submit" class="btn btn-primary">Add Category</button>
</form>
  </div>
   <div class="btn-group">
   <form action="addproduct">
<button type="submit" class="btn btn-primary">Add Products</button>
</form>
  </div>
 </div>
 


<div>
<c:choose>
    <c:when test="${ADDPRODUCTISCLICKED}">
       <c:import url="/WEB-INF/jsp/AdminProductRegister.jsp"></c:import>
    </c:when>
    <c:otherwise>
       
    </c:otherwise>
</c:choose>

<c:choose>
    <c:when test="${ADDCATEGORYISCLICKED}">
       <c:import url="/WEB-INF/jsp/AdminCategorytRegister.jsp"></c:import>
    </c:when>
    <c:otherwise>
       
    </c:otherwise>
</c:choose>
</div>

</body>
</html>