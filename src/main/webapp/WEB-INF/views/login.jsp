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
      background-color: white;
      opacity: 0.99;
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
    body{
      background-image: url('https://sharkindia.com/wp-content/uploads/2017/05/training.jpg');
      background-repeat: no-repeat;
      opacity: 0.922;
      background-size: cover;
    }


  </style>
</head>
<body>
<!-- <body>     -->
  <div id="header" class="d-flex justify-content-between align-items-center">
      <h1>EmptyHead</h1>
      <div>
      	  
          <a href="logins" style="color: white;  text-decoration: none; margin-right: 30px;">Home</a>
          <a href="#" style="color: white;  text-decoration: none; margin-right: 30px;" onclick="showSection('about')">About Us</a>
          <a href="#" style="color: white; text-decoration: none; margin-right: 30px;" onclick="showSection('contact')">Contact Us</a>
      </div>
  </div>

  <section id="welcome" class="text-center mt-5">
    <div>
      <div class="mt-4 container border rounded" id="signupButtons">
        <br>
        <h1>Welcome to Empty Head</h1>
        <p >Where you can learn coding</p>
        <br>
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
              <div class="form-group mt-2">
                <input type="password" class="form-control" id="password" placeholder="Password" required name="password">
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
                  <div class="form-group mt-2">
                    <input type="text" class="form-control" id="firstname" placeholder="First Name" required name="first_name">
                  </div>
                  <div class="form-group mt-2">
                    <input type="text" class="form-control" id="lastname" placeholder="Last Name" required name="last_name">
                  </div>
                  <div class="form-group mt-2">
                    <input type="date" class="form-control" id="dob" min="1990-01-01" max="2023-12-31" required name="dob">
                  </div>
                  <div class="form-group mt-2">
                    <input type="text" class="form-control" id="fieldOfStudy" placeholder="Field of Study" required name="feild_of_study">
                  </div>
                  <div class="form-group mt-2">
                    <input type="email" class="form-control" id="email" placeholder="Email Id" required name="email">
                  </div>
                  <div class="form-group mt-2">
                    <input type="password" class="form-control" id="trainee_password" placeholder="Password" required name="password">
                  </div>
                  <div class="form-group mt-2">
                    <input type="password" class="form-control" id="trainee_conpas" placeholder="Confirm Password" required>
                  </div>
                  <div class="form-group mt-2" style="text-align: left;">
                    <input type="checkbox" name="trainee_confirm_password" id="trainee_confirm_password" onclick="confirm_password('trainee_password','trainee_conpas','trainee_confirm_password','trainee_passsord_msg','trainee_submit_btn')"/>
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
              <div class="form-group mt-2">
                <input type="password" class="form-control" id="password" placeholder="Password" required name="password">
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
            
            <!-- form action added by siddhant on 11/4/2024
            	 Also required name is added for all attributes -->
            
            <form action="/Trainer-signup" method="post">
              <div class="form-group mt-2">
                <input type="text" class="form-control" id="firstname" placeholder="First Name" required name="first_name">
              </div>
              <div class="form-group mt-2">
                <input type="text" class="form-control" id="lastname" placeholder="Last Name" required name="last_name">
              </div>
              <div class="form-group mt-2">
                <input type="date" class="form-control" id="dob" min="1950-01-01" max="2023-12-31" required name="DOB">
              </div>
              <div class="form-group mt-2">
                <input type="text" class="form-control" id="areaOfExpertise" placeholder="Area of Expertise" required name="expertise">
              </div>
              <div class="form-group mt-2">
                <input type="email" class="form-control" id="email" placeholder="Email Id" required name="email">
              </div>
              <div class="form-group mt-2">
                <input type="password" class="form-control" id="trainer_password" placeholder="Password" required name="password">
              </div>
              <div class="form-group mt-2">
                <input type="password" class="form-control" id="trainer_conpas" placeholder="Confirm Password" required>
              </div>

              <div class="form-group mt-2" style="text-align: left;">
                <input type="checkbox" name="trainer_confirm_password" id="trainer_confirm_password" onclick="confirm_password('trainer_password','trainer_conpas','trainer_confirm_password','trainer_passsord_msg','trainer_submit_btn')"/>
                <label for="trainer_confirm_password">Check Password</label>
              </div>
              <!-- Add other trainee form fields here -->
              <p style="color: red;display: none;" class="mt-2" id="trainer_passsord_msg">Passowrd not matched</p>
              <!-- Add other trainer form fields here -->
              <div class="login-button-container">
                <input type="submit" class="btn btn-primary mt-2" value="Sign In" id="trainer_submit_btn">
                <input type="reset" value="Clear" class="btn btn-warning mt-2">
              </div>
              <p class="mt-2 mb-0" style="text-align: left;"><a onclick="Trainer()" href="#">Already having account?</a></p>
            </form>
          </section>
        </div>


        <div id="Admin-login" style="display: none;"> 
          <section id="adminSignin" class="container mt-2">
            <h2 class="text-center sign-in-title">Admin Sign In</h2>
            <!-- changes in form tag <action,method> -->
            <form action="/Admin_login" method="post">
              <div class="form-group mt-2">
              <!--  Required name added by siddhant nigade on 11/4/2024-->
                <input type="email" class="form-control" id="adminEmail" placeholder="Username" required name="username">
              </div>
              <div class="form-group mt-2">
                <input type="password" class="form-control" id="adminPassword" placeholder="Password" required name="password">
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
  
  <!-- <div class="container mt-5" id="otp_validation" style="display: none;">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Email OTP Verification</h5>
                    <form id="otpForm">
                        <div class="form-group">
                            <label for="email">Email address</label>
                            <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <button type="button" class="btn btn-primary" id="sendOTP">Send OTP</button>
                        <div class="form-group mt-3" id="otpInput" style="display: none;">
                            <label for="otp">Enter OTP</label>
                            <input type="text" class="form-control" id="otp" placeholder="Enter OTP">
                        </div>
                        <button type="button" class="btn btn-success" id="verifyOTP" style="display: none;">Verify OTP</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
  </div> -->

  <section id="about" class="text-center mt-5" style="display: none;">
    <div class="container">
      <h1>About Us</h1>
    </div>
  </section>
  
  <section id="contact" class="text-center mt-5" style="display: none;">
    <div class="container">
      <h1>Contact Us</h1>
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
    }

    function Admin(){
      document.getElementById('Trainee-login').style.display = 'none';
      document.getElementById('Trainee-signup').style.display = 'none';
      document.getElementById('Trainer-signup').style.display = 'none';
      document.getElementById('Trainer-login').style.display = 'none';
      document.getElementById('Admin-login').style.display = 'block';
    }

    function confirm_password(password,confirm_password,password_checkbox,password_msg,button){
      var pass = document.getElementById(password).value;
      var confirm_pass = document.getElementById(confirm_password).value;
      console.log(pass + " " + confirm_pass);
      var checkbox = document.getElementById(password_checkbox).checked;
      if(checkbox && pass != '' && confirm_pass != ''){
        if (pass  !== confirm_pass) {
        document.getElementById(password_msg).style.display = 'block';
        document.getElementById(password_msg).innerHTML = 'Password not Matched'
        document.getElementById(password_msg).style.color = 'red';
        document.getElementById(password_checkbox).checked = false;
        document.getElementById(password).value = '';
        document.getElementById(confirm_password).value = '';
        document.getElementById(button).disabled = true;
        return;
      }
      document.getElementById(password_msg).style.display = 'block';
      document.getElementById(password_msg).innerHTML = 'Password Matched'
      document.getElementById(password_msg).style.color = 'green';
      document.getElementById(button).disabled = false;
      console.log('password matched')
      }else{
        console.log('inside else block') 
        if(pass == '' || confirm_pass == ''){
          console.log('inside else if block') 
          document.getElementById(password_msg).style.display = 'block';
          document.getElementById(password_msg).innerHTML = "Password can't be empty";
          document.getElementById(password_msg).style.color = 'red';
        }else{
          document.getElementById(password_msg).style.display = 'none';
        }
        document.getElementById(button).disabled = true;
        
      }
      
      
      return;
    }

    // document.getElementById('Trainee').addEventListener('click')


  </script>
</body>
</html>