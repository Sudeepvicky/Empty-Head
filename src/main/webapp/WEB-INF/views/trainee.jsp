<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<%-- <h1>--- Trainee Credentails ---</h1>
		<h1>Email : <%=request.getAttribute("email") %></h1>
		<h1>Password : <%=request.getAttribute("password") %></h1> --%>
		
		<h1>--- Trainee Credentails ---</h1>
		
		<%
	if (request.getAttribute("first_name") != null) {
	%>
	<h2>Trainee Signup Successful</h2>
		<p>
		First Name:
		<%=request.getAttribute("first_name")%>
		</p>
		<p>
		Last Name:
		<%=request.getAttribute("last_name")%>
		</p>
		<p>
		DOB:
		<%=request.getAttribute("dob")%>
		</p>
		<p>
		Expertise:
		<%=request.getAttribute("feild_of_study")%>
		years
		</p>
		<p>
		Email:
		<%=request.getAttribute("email")%>
		</p>
		<p>
		Password:
		<%=request.getAttribute("password")%>
		
		</p>
	<%
	} else if (request.getAttribute("email") != null) {
	%>
	<h2> Trainee Login is Successful</h2>
		<p>
		Email:
		<%=request.getAttribute("email")%>
		</p>
		<p>
		Password:
		<%=request.getAttribute("password")%>
		
		</p>
	<%
	}
	%>
<!-- till this line -->
		
	</body>
</html>