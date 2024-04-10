<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  		<style>
		    .container {
		      max-width: 500px;
		    }
		    #header {
		        background: linear-gradient(to right, purple, #6600cc); /* Gradient background */
		        color: white;
		        padding: 20px;
		        text-align: center;
		    }
		    .login-button-container {
		        display: flex;
		        justify-content: space-between;
		        width: 100%;
		    }
		
		    .btn {
		        flex: 1;
		        margin-right: 5px;
		    }
		
		    .btn:last-child {
		        margin-right: 0;
		    }
		
		
		  </style>
	</head>
	<body>
	
		<div id="Trainee-login">
          <section id="signin" class="container mt-2">
            <h2 class="text-center sign-in-title">Trainee Sign In</h2>
            <form action="/home" method="post">
              <div class="form-group mt-2">
                <input type="text" class="form-control" id="id" placeholder="Enter your id" required name="id">
              </div>
              <div class="form-group mt-2">
                <input type="text" class="form-control" id="name" placeholder="Enter your name" required name="name">
              </div>
              <div class="form-group mt-2">
                <input type="text" class="form-control" id="city" placeholder="Enter your city" required name="city">
              </div>
              <div class="login-button-container">
                <input type="submit" class="btn btn-primary mt-2" value="Sign In">
                <input type="reset" value="Clear" class="btn btn-warning mt-2">
              </div>
              <p class="mt-2 mb-0" style="text-align: left;"> <%=request.getAttribute("msg") %> </p>
            </form>
          </section>
        </div>
		
	</body>
</html>