<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome to Empty Head</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <style>
    .container {
      max-width: 500px;
    }
    #header {
        /* background: linear-gradient(to right, purple, #6600cc); /* Gradient background */
        
        /*padding: 20px;
        text-align: center;*/
        
        position: fixed;
	    top: 0;
	    left: 0;
	    width: 100%;
	    background-color: rgba(255, 255, 255, 0.7); /* Adjust transparency as needed */
	    padding: 10px; /* Adjust padding as needed */
	    z-index: 1000; /* Ensure it appears above other content */
        
    }

    .btn {
        flex: 1;
        margin-right: 5px;
    }

    .btn:last-child {
        margin-right: 0;
    }
    
    
    body {
        background-image: url('https://img.freepik.com/free-photo/digital-art-young-students-attending-school_23-2151065172.jpg?t=st=1712769322~exp=1712772922~hmac=57d18dd77ca458b9d12d06a1ef6973107cc3c8f0f7118d7a127a67e3cb615ece&w=740'); /* Replace 'path/to/your/image.jpg' with the actual path to your image */
        background-size: cover;
        background-position: center;
        height: 150vh;
    }
    #cards{
		  position: absolute;
		  top: 100%;
		  left: 50%;
		  transform: translate(-50%, -10%);
		  width: 50%;  /* Adjust width as needed */
		}
		
		.a_:hover{
		      cursor: pointer;
		    }


  </style>
</head>
<body>
	
    <div id="header" class="d-flex justify-content-between align-items-center">
      <h1 ><a href="/login" style="color: black;  text-decoration: none;"> EmptyHead </a> </h1>
      <div>
      	  
          <b><a href="/login" style="color: black; text-decoration: none; margin-right: 30px;">Home</a></b> 
          <b><a class="a_" style="color: black; text-decoration: none; margin-right: 30px;" onclick="showSection('about')">About Us</a></b>
          <b><a class="a_" style="color: black; text-decoration: none; margin-right: 30px;" onclick="showSection('contact')">Contact Us</a></b>
      </div>
  </div>
<p id="trainee_usernames" style="display:none;"><%=request.getAttribute("trainee_usernames") %></p>
<p id="trainer_usernames" style="display:none;"><%=request.getAttribute("trainer_usernames") %></p>
  <section id="welcome" class="text-center mt-5" style="position:relative;">
    <div id="cards" style="margin-top:10%">
    
      <div class="mt-4 container rounded" id="signupButtons" style=" background-color:white;background-color: rgba(255, 255, 255, 0.5);">
        <br>
        <h1>Welcome to Empty Head</h1>
	    <p>Where you can learn coding</p>
        <div class="login-button-container">
          <button class="btn btn-primary mr-2"  onclick="Trainee()" >Trainee</button>
          <button class="btn btn-secondary mr-2" onclick="Trainer()">Trainer</button>
          <button class="btn btn-success" onclick="Admin()">Admin</button>
        </div>
        <div id="Trainee-login">
          <section id="signin" class="container mt-2">
            <h2 class="text-center sign-in-title">Trainee Sign In</h2>
            <form action="/Trainee_login" method="post">
              <div class="form-group mt-2">
                <input type="email" class="form-control" id="email" placeholder="Enter email or username" required name="email">
              </div>
              
              <!-- <div class="form-group mt-2">
                <input type="password" class="form-control" id="traine_login_password" placeholder="Password" required name="password">
              </div> -->

              <div class="input-group mt-2">
                <input type="password" class="form-control" placeholder="Password" aria-label="Recipient's username" aria-describedby="basic-addon2" id="traine_login_password" name="traine_login_password">
                <div class="input-group-append">
                  <button type="button" class="input-group-text" id="basic-addon2"  onclick="show_password('traine_login_password')">view</button>
                </div>
              </div>


              <div class="login-button-container">
                <input type="submit" class="btn btn-primary mt-2" value="Sign In">
                <input type="reset" value="Clear" class="btn btn-warning mt-2">
              </div>
              <p class="mt-2 mb-0" style="text-align: left;"><a onclick="Trainee_signup()" href="#">Register?</a></p>
            </form>
          </section>
        </div>

        <div id="Trainee-signup" style="display: none;">
          <section id="traineeSignup">
            <div class="container mt-2">
                <h2 class="text-center">Trainee Sign Up</h2>
                <form action="/Trainee-signup" method="post">
                
                  <div class="input-group mt-2">
					  <input type="text" class="form-control" placeholder="Username" aria-label="Recipient's username" aria-describedby="basic-addon2" id="trainee_username" name="trainee_username">
					  <div class="input-group-append">
					    <button type="button" class="input-group-text" id="basic-addon2"  onclick="check_trainee_username('trainee_username','trainee_usernames','trainee_signup_details')">Check</button>
					  </div>
				  </div>
				  
                  <div id="trainee_signup_details" style="display:none;">
                  	
                  	<div class="form-group mt-2">
	                    <input type="text" class="form-control" id="firstname" placeholder="First Name" required name="first_name">
	                  </div>
	                  <div class="form-group mt-2">
	                    <input type="text" class="form-control" id="lastname" placeholder="Last Name" required name="last_name">
	                  </div>
	                  
	                  
	                  
	                  <div class="form-group mt-2">
	                    <input type="date" class="form-control" id="dob" min="1990-01-01"  required name="dob">
	                  </div>
	                  <div class="form-group mt-2">
	                    <input type="text" class="form-control" id="fieldOfStudy" placeholder="Field of Study" required name="feild_of_study">
	                  </div>
	                  <div class="form-group mt-2">
	                    <input type="email" class="form-control" id="email" placeholder="Email Id" required name="email">
	                  </div>


                      <div class="input-group mt-2">
                        <input type="password" class="form-control" placeholder="Password" aria-label="Recipient's username" aria-describedby="basic-addon2" id="trainee_password" name="trainee_password" required>
                        <div class="input-group-append">
                          <button type="button" class="input-group-text" id="basic-addon2"  onclick="show_password('trainee_password')">view</button>
                        </div>
                     </div>



	                  <!-- <div class="form-group mt-2">
	                    <input type="password" class="form-control" id="trainee_password" placeholder="Password" required name="password">
	                  </div> -->
	                  
                      
                      
                      
                      
                      <!-- <div class="form-group mt-2">
	                    <input type="password" class="form-control" id="trainee_conpas" placeholder="Confirm Password" required name="confirm_password">
	                  </div> -->

                    
                      <div class="input-group mt-2">
                        <input type="password" class="form-control" placeholder="Password" aria-label="Confirm passowrd" aria-describedby="basic-addon2" id="trainee_conpas" name="trainee_conpas" required>
                        <div class="input-group-append">
                          <button type="button" class="input-group-text" id="basic-addon2"  onclick="show_password('trainee_conpas')">view</button>
                        </div>
                     </div>





	                  <div class="form-group mt-2" style="text-align: left;">
	                    <input type="checkbox" name="trainee_confirm_password" id="trainee_confirm_password" onclick="match_password('trainee_password','trainee_conpas','trainee_confirm_password','trainee_submit_btn')"/>
	                    <label for="trainee_confirm_password">Check Password</label>
	                  </div>
	                  <!-- Add other trainee form fields here -->
	                  <p style="color: red;display: none;" class="mt-2" id="trainee_passsord_msg">Passowrd not matched</p>
	                  <div class="login-button-container">
	                    <input type="submit" class="btn btn-primary mt-2" value="Sign In" id="trainee_submit_btn" disabled>
	                    <input type="reset" value="Clear" class="btn btn-warning mt-2">
	                  </div>
	                  <p class="mt-2 mb-0" style="text-align: left;"><a onclick="Trainee()" href="#">Already having account?</a></p>
	                  <!-- <button type="submit" class="btn btn-primary">Submit</button> -->
	                  	
                  </div>	
                  
                </form>
          </section>
        </div>


        <div id="Trainer-login" style="display: none;"> 
          <section id="signin" class="container mt-2">
            <h2 class="text-center sign-in-title">Trainer Sign In</h2>
            <form action="/Trainer_login" method="post"> 
              <div class="form-group mt-2">
                <input type="email" class="form-control" id="email" placeholder="Enter email or username" required name="email">
              </div>
              <!-- <div class="form-group mt-2">
                <input type="password" class="form-control" id="trainer_login_password" placeholder="Password" required name="password">
              </div> -->

              <div class="input-group mt-2">
                <input type="password" class="form-control" placeholder="Password" aria-label="Recipient's username" aria-describedby="basic-addon2" id="trainer_login_password" name="trainer_login_password" required>
                <div class="input-group-append">
                  <button type="button" class="input-group-text" id="basic-addon2"  onclick="show_password('trainer_login_password')">view</button>
                </div>
             </div>

              <div class="login-button-container">
                <input type="submit" class="btn btn-primary mt-2" value="Sign In">
                <input type="reset" value="Clear" class="btn btn-warning mt-2">
              </div>
              <p class="mt-2 mb-0" style="text-align: left;"> <a a onclick="Trainer_signup()" href="#">Register?</a></p>
            </form>
          </section>
        </div>

        <div id="Trainer-signup" style="display: none;"> 
          <section id="trainerSignup" class="container mt-2">
            <h2 class="text-center">Trainer Sign Up</h2>
            <form action="/Trainer-signup" method="post">
            
            	<div class="input-group mt-2">
					  <input type="text" class="form-control" placeholder="Username" aria-label="Recipient's username" aria-describedby="basic-addon2" id="trainer_username" name="trainer_username">
					  <div class="input-group-append">
					    <button class="input-group-text" id="basic-addon2"  onclick="check_trainee_username('trainer_username','trainer_usernames','trainer_signup_details')">Check</button>
					  </div>
				  </div>
			<div id="trainer_signup_details" style="display:none;">
			
				<div class="form-group mt-2">
	                <input type="text" class="form-control" id="firstname" placeholder="First Name" required name="first_name">
	              </div>
	              <div class="form-group mt-2">
	                <input type="text" class="form-control" id="lastname" placeholder="Last Name" required name="last_name">
	              </div>
	              <div class="form-group mt-2">
	                <input type="date" class="form-control" id="dob" min="1950-01-01" required name="DOB">
	              </div>
	              <div class="form-group mt-2">
	                <input type="text" class="form-control" id="areaOfExpertise" placeholder="Area of Expertise" required name="expertise">
	              </div>
	              
	              <div class="mt-2">
					  <input class="form-control" type="file" id="formFile">
					</div>
	              
	              <div class="form-group mt-2">
	                <input type="email" class="form-control" id="email" placeholder="Email Id" required name="email">
	              </div>


                  <div class="input-group mt-2">
                    <input type="password" class="form-control" placeholder="Password" aria-label="Recipient's username" aria-describedby="basic-addon2" id="triner_signup_password" name="triner_signup_password" required>
                    <div class="input-group-append">
                      <button type="button" class="input-group-text" id="basic-addon2"  onclick="show_password('triner_signup_password')">view</button>
                    </div>
                 </div>

	              <!-- <div class="form-group mt-2">
	                <input type="password" class="form-control" id="triner_signup_password" placeholder="Password" required name="password">
	              </div> -->
	              
                  
                  <div class="input-group mt-2">
                    <input type="password" class="form-control" placeholder="Password" aria-label="Recipient's username" aria-describedby="basic-addon2" id="trainer_signup_confirm_password" name="trainer_signup_confirm_password" required>
                    <div class="input-group-append">
                      <button type="button" class="input-group-text" id="basic-addon2"  onclick="show_password('trainer_signup_confirm_password')">view</button>
                    </div>
                 </div>


                  <!-- <div class="form-group mt-2">
	                <input type="password" class="form-control" id="trainer_signup_confirm_password" placeholder="Confirm Password" required name="confirm_password">
	              </div> -->

	              
                  
                  <div class="form-group mt-2" style="text-align: left;">
	                <input type="checkbox" name="trainer_confirm_password" id="trainer_confirm_password" onclick="match_password('triner_signup_password','trainer_signup_confirm_password','trainer_confirm_password','trainer_submit_btn')"/>
	                <label for="trainer_confirm_password">Check Password</label>
	              </div>
	                
	              <!-- Add other trainee form fields here -->
	              <p style="color: red;display: none;" class="mt-2" id="trainer_passsord_msg">Passowrd not matched</p>
	              <!-- Add other trainer form fields here -->
	              <div class="login-button-container">
	                <input type="submit" class="btn btn-primary mt-2" value="Sign In" id="trainer_submit_btn" disabled>
	                <input type="reset" value="Clear" class="btn btn-warning mt-2">
	              </div>
	              <p class="mt-2 mb-0" style="text-align: left;"><a onclick="Trainer()" href="#">Already having account?</a></p>
				
			</div>
			
            </form>
          </section>
        </div>


        <div id="Admin-login" style="display: none;"> 
          <section id="adminSignin" class="container mt-2">
            <h2 class="text-center sign-in-title">Admin Sign In</h2>
            <form action="/Admin_login" method="post">
              <div class="form-group mt-2">
                <input type="text" class="form-control" id="adminEmail" placeholder="Username" required name="email">
              </div>
              
              
              <!-- <div class="form-group mt-2">
                <input type="password" class="form-control" id="adminPassword" placeholder="Password" required name="password">
              </div> -->

              <div class="input-group mt-2">
                <input type="password" class="form-control" placeholder="Password" aria-label="Recipient's username" aria-describedby="basic-addon2" id="adminPassword" name="adminPassword" required>
                <div class="input-group-append">
                  <button type="button" class="input-group-text" id="basic-addon2"  onclick="show_password('adminPassword')">view</button>
                </div>
             </div>


              <div class="login-button-container">
                <input type="submit" class="btn btn-primary mt-2" value="Sign In">
                <input type="reset" value="Clear" class="btn btn-warning mt-2">
              </div>
            </form>
          </section>
        </div>
        <br>
    </div>

  </section>

  <section id="about" class="text-center mt-5" style="display: none; padding:8%; position:fixed; width:100%">
    <div class="container rounded" style="background-color:white;background-color: rgba(255, 255, 255, 0.5); padding:2%;">
      <h1>About Us</h1>
      <p>EmptyHead is your one-stop shop for managing training programs.  Trainers can create courses, assign trainees, and upload materials. Trainees can enroll, access content, track progress, and get notified of deadlines.  Everyone benefits from feedback and performance analysis.</p>
    </div>
  </section>
  
  <section id="contact" class="text-center mt-5" style="display: none; padding:8%; position:fixed; width:100%">
    <div class="container rounded" style="background-color:white;background-color: rgba(255, 255, 255, 0.5); padding: 2%;">
      <h1>Contact Us</h1>
      <p>We'd love to hear from you! If you have any questions, feedback, or suggestions for EmptyHead, please feel free to reach out to us using the following methods:
		<br>      
		Email: empty_head@gmail.com
		<br>
		Stay Connected: While we don't have social media links at this moment, you're always welcome to reach out via email. We look forward to connecting with you!</p>
    </div>
  </section>

  <script>
    function showSection(sectionId) {
      document.querySelectorAll('section').forEach(section => {
        section.style.display = 'none';
      });
      document.getElementById(sectionId).style.display = 'block';
    }

    // function OTP(){
    //   document.getElementById('welcome').style.display = 'none';
    //   document.getElementById('otp_validation').style.display = 'block';
    // }

    function Trainee(){
      document.getElementById('Trainee')
      document.getElementById('Trainee-login').style.display = 'block';
      document.getElementById('Trainee-signup').style.display = 'none';
      document.getElementById('Trainer-signup').style.display = 'none';
      document.getElementById('Trainer-login').style.display = 'none';
      document.getElementById('Admin-login').style.display = 'none';
    }
    function Trainee_signup(){
      document.getElementById('Trainee-login').style.display = 'none';
      document.getElementById('Trainee-signup').style.display = 'block';
      document.getElementById('Trainer-signup').style.display = 'none';
      document.getElementById('Trainer-login').style.display = 'none';
      document.getElementById('Admin-login').style.display = 'none';
      document.getElementById('trainee_passsord_msg').style.display = 'none';
      document.getElementById('trainee_signup_details').style.display = 'none';
    }

    function Trainer(){
      document.getElementById('Trainee-login').style.display = 'none';
      document.getElementById('Trainee-signup').style.display = 'none';
      document.getElementById('Trainer-signup').style.display = 'none';
      document.getElementById('Trainer-login').style.display = 'block';
      document.getElementById('Admin-login').style.display = 'none';
    }

    function Trainer_signup(){
      document.getElementById('Trainee-login').style.display = 'none';
      document.getElementById('Trainee-signup').style.display = 'none';
      document.getElementById('Trainer-signup').style.display = 'block';
      document.getElementById('Trainer-login').style.display = 'none';
      document.getElementById('Admin-login').style.display = 'none';
      document.getElementById('trainer_signup_details').style.display = 'none';
    }

    function Admin(){
      document.getElementById('Trainee-login').style.display = 'none';
      document.getElementById('Trainee-signup').style.display = 'none';
      document.getElementById('Trainer-signup').style.display = 'none';
      document.getElementById('Trainer-login').style.display = 'none';
      document.getElementById('Admin-login').style.display = 'block';
    }

    function match_password(passowrd,confirm_password,checkbox,button){
        var pass = document.getElementById(passowrd).value;
        var cnf_pass = document.getElementById(confirm_password).value;
        var check = document.getElementById(checkbox).checked;
        if(check){
            if(pass != cnf_pass){
                alert('password not matched');
                document.getElementById(checkbox).checked = false;
                return;
            }
            if(pass == cnf_pass && pass == ''){
                alert("password can't be empty");
                document.getElementById(checkbox).checked = false;
                return;
            }
            document.getElementById(button).disabled = false;
            return;
        }
        document.getElementById(button).disabled = true;
        return;
    }
    
    function check_trainee_username(usr,usrnames,division){
    	console.log('inside function');
    	var usr = document.getElementById(usr).value;
    	usr = usr.trim();
    	var usernames = document.getElementById(usrnames).innerHTML;
    	var usernames_array = usernames.split(",");
    	console.log(usernames_array);
    	if(usr == ''){
    		alert("Enter user name");
            document.getElementById(division).style.display = 'none';
    		return;
    	}
    	if(usernames_array.includes(usr)){
    		alert("Username already exists");
    		document.getElementById(division).style.display = 'none';

    		return;
    	}
    	document.getElementById(division).style.display = 'block';
		return;
    }

    function show_password(passowrd){
        var pass = document.getElementById(passowrd);
        if(pass.type == 'password'){
            pass.type = 'text';
        }else{
            pass.type = 'password';
        }
    }

    // document.getElementById('Trainee').addEventListener('click')


  </script>
</body>
</html>

