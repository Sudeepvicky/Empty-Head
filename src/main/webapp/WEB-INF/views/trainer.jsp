<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	<body>
		<div class="card" style="width: 18rem;">
		  <img src="https://img.pikbest.com/origin/09/20/30/73zpIkbEsTwkU.png!sw800" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Email : <%=request.getAttribute("email") %></h5>
		    <h5 class="card-title">Password : <%=request.getAttribute("password") %></h5>
		    <p class="card-text"><%=request.getAttribute("msg") %></p>
		    <button class="btn btn-warning"><a href="/login" style="text-decoration: none;">Logout</a></button>
		  </div>
		</div>
	</body>	
</html>