<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>--- Trainee Credentails ---</h1>
		<h1>Email : <%=request.getAttribute("email") %></h1>
		<h1>Password : <%=request.getAttribute("password") %></h1>
		
		
	</body>	
</html>