<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">s
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EmptyHead.</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
   
<style>
    .color{
        background-color:grey;background-color: rgba(255, 255, 255, 0.8);
        border: black 1px solid;
    }
    .color-box{
        padding: 20px;
        background-color:grey;background-color: rgba(255, 255, 255, 0.5);
        border: black 0.5px solid;
        border-radius: 10px;
    }
    .card{
        background-color:grey;background-color: rgba(255, 255, 255, 0.8);
        border: black 1px solid;
    }
			#form-inline{
			margin:7%;
			}
			
			
			body {
		        background-image: url('https://img.freepik.com/free-photo/digital-art-young-students-attending-school_23-2151065172.jpg?t=st=1712769322~exp=1712772922~hmac=57d18dd77ca458b9d12d06a1ef6973107cc3c8f0f7118d7a127a67e3cb615ece&w=740'); /* Replace 'path/to/your/image.jpg' with the actual path to your image */
		        background-size: cover;
		        background-position: center;
		        height: 150vh;
		    }
			#nav{
			background-color:white
			}
            #buttonContainer {
            width: 60%;
            border-radius: 20px; /* Make oval shape */
            overflow: hidden; /* Hide overflow */
            display: flex;
            justify-content: space-between;
            padding: 10px; /* Add padding */
        }
        #ex a {
            flex: 1;
            text-align: center;
            padding: 10px 24px; /* Adjust padding to create oval shape */
             /* Button background color */
            color: black; /* Button text color */
            border-radius: 50px;  /*Increase border radius to create oval shape */
            transition: background-color 0.3s ease; /* Add transition */
            cursor: pointer; /* Change cursor to pointer */
            margin: 0 5px; /* Add some margin between the buttons */
            text-decoration: none; /* Remove underline form the links */
        }
        #buttonContainer a:hover {
            background-color:grey;background-color: rgba(255, 255, 255, 0.7);
            border: black 1px solid;
        }
#ex {
background-color:grey;background-color: rgba(255, 255, 255, 0.8);
border: black 1px solid;
text-decoration:none ;
 padding: 10px 24px;
color:white; 
border-radius:50px;}
.containers {
            border: 2px solid #800080; /* Purple border */
            padding: 20px;
                    /* Set a maximum width for readability */
            background-color: #fff; /* White background */
            background-color: rgba(255, 255, 255, 0.8);
            border: black 1px solid;
        }
        .course-card {
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 20px;
            padding: 20px;
           background-color:grey;background-color: rgba(255, 255, 255, 0.8);
           border: black 1px solid;
            color: black; /* Text color */
        }
        .course-title {
            cursor: pointer;
        }
	.navbar-brand {
color:#fff;
}
.navbar-toggler{
color:#fff;}

</style>
    </head>
<body>
<div id="nav">
<div id="navbar">
<div id="navbar-toggler-icon">
<nav class="navbar navbar-light bg-purple fixed-top" id="nav">
      <div class="container-fluid" id="navbar-toggler-icon">
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasLightNavbar" aria-controls="offcanvasLightNavbar" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon " id="navbar-toggler-icon" ></span>
        </button>
        <div class="offcanvas offcanvas-start text-bg-light" tabindex="-1" id="offcanvasLightNavbar" aria-labelledby="offcanvasLightNavbarLabel" >
          <div class="offcanvas-header ">
            <h5 class="offcanvas-title" id="offcanvasLightNavbarLabel">EmptyHead.</h5>
            <button type="button" class="btn-close btn-close-light" data-bs-dismiss="offcanvas" aria-label="Close"></button>
          </div>
          <div class="offcanvas-body">
            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#" onclick="Home()">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#" onclick="Perf()">Performance</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#" onclick="Course()">Courses</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#" onclick="HelpDesk()">Help Desk</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#" onclick="Account()">Account</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/login">Logout</a>
              </li>
            </ul>

          </div>
        </div>
<div class="navbar-brand">
	<a class="navbar-brand " style="color:black; padding-right:30px;" > Welcome to EmptyHead.</a>
  	</div>
</div>
      </div>
    </nav>
</div>
</div>
	
<div class="s">
<div class="container" >
    <!-- New Section -->
	<div id="nav_bar">
        <nav class="navbar navbar-light  justify-content-between" style="padding-top:13%">
  
        
            <form class="form-inline" >
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
          <div class="ex" id="ex">
          <a href="#" onclick = "Pract()">Practice</a>
          <a href="#" onclick = "Test()">Tests</a>
          <a href="#" onclick = "Notes()">Notes</a>
          <a href="#" onclick = "WhatsNew()">What's New</a>
          </div>
          </nav>
    </div>
 
    <!-- top suggested courses -->

    <div class="card" style="margin-top:13%; max-width: 500px; left: 50%;transform: translateX(-50%);display: none;" id="account">
        <img src="https://img.pikbest.com/origin/09/20/30/73zpIkbEsTwkU.png!sw800" class="card-img-top" alt="..." >
        <div class="card-body">
          <h5 class="card-title">Email : <%=request.getAttribute("email") %></h5>
          <h5 class="card-title">Password : <%=request.getAttribute("password") %></h5>
          <p class="card-text"><%=request.getAttribute("msg") %></p>
          <button class="btn btn-warning"><a href="/login" style="text-decoration: none;">Logout</a></button>
        </div>
      </div>


<div class="Home" id = "home" style = "display : block;">
        <h1 class="text-left mb-4">Top Suggested Courses</h1>
        <!-- Use Bootstrap's row and col classes for a responsive grid layout -->
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="course-card">
                    <h3 class="course-title" onclick="navigateToCourse('web-development')">Web Development</h3>
                    <p>Learn HTML, CSS, and JavaScript to build modern websites.</p><a href="#" class="btn " style="background-color:white; font-weight:bold">Enroll</a>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="course-card">
                    <h3 class="course-title" onclick="navigateToCourse('python-programming')">Python Programming</h3>
                    <p>Master Python and become a skilled programmer.</p>
<a href="#" class="btn " style="background-color:white; font-weight:bold">Enroll</a>

                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="course-card">
                    <h3 class="course-title" onclick="navigateToCourse('data-science')">Data Science</h3>
                    <p>Explore data analysis, machine learning, and visualization.</p><a href="#" class="btn " style="background-color:white; font-weight:bold">Enroll</a>

                </div>
            </div>
        </div>
    </div>
<!-- all available courses -->
<div class="course" id ="availcourses" style="display: block;">
        <h1 class="text-left mb-4">All Available Courses</h1>
        <!-- Use Bootstrap's row and col classes for a responsive grid layout -->
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="course-card">
                    <h3 class="course-title" onclick="navigateToCourse('web-development')">Web Development</h3>
                    <p>Learn HTML, CSS, and JavaScript to build modern websites.</p><a href="#" class="btn " style="background-color:white; font-weight:bold">Enroll</a>

                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="course-card">
                    <h3 class="course-title" onclick="navigateToCourse('python-programming')">Python Programming</h3>
                    <p>Master Python and become a skilled programmer.</p>
<a href="#" class="btn " style="background-color:white; font-weight:bold">Enroll</a>

                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4" >
                <div class="course-card">
                    <h3 class="course-title" onclick="navigateToCourse('data-science')">Data Science</h3>
                    <p>Explore data analysis, machine learning, and visualization.</p><a href="#" class="btn " style="background-color:white; font-weight:bold">Enroll</a>

                </div>

            </div>
<div class="col-sm-12 col-md-6 col-lg-4">
                <div class="course-card">
                    <h3 class="course-title" onclick="navigateToCourse('web-development')">Web Development</h3>
                    <p>Learn HTML, CSS, and JavaScript to build modern websites.</p><a href="#" class="btn " style="background-color:white; font-weight:bold">Enroll</a>

                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="course-card">
                    <h3 class="course-title" onclick="navigateToCourse('python-programming')">Python Programming</h3>
                    <p>Master Python and become a skilled programmer.</p>
			<a href="#" class="btn " style="background-color:white; font-weight:bold">Enroll</a>

                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="course-card">
                    <h3 class="course-title" onclick="navigateToCourse('data-science')">Data Science</h3>
                    <p>Explore data analysis, machine learning, and visualization.</p>
		    <a href="#" class="btn " style="background-color:white; font-weight:bold">Enroll</a>

                </div>
        </div>
    </div>
    <!-- performance-->
    

    </div>
    <div class="performance color-box" id = "performance" style="display: none;">
        <h1>Training Performance</h1>
        <p>Welcome to the Performance Training homepage. This course focuses on improving your skills.</p>
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">Learning Progress</h2>
                        <canvas id="learningProgressChart"></canvas>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">Leaderboard</h2>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Rank</th>
                                        <th>Name</th>
                                        <th>Overall Score</th>
                                    </tr>
                                </thead>
                                <tbody id="leaderboardBody">
                                    <!-- Leaderboard data will be dynamically inserted here -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Courses-->
    <div class="Courses color-box" id = "courses" style="display: none;">
        <h1 class="text-center mb-4">Courses</h1>
        <!-- Use Bootstrap's row and col classes for a responsive grid layout -->
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="course-card">
                    <h3 class="course-title" onclick="navigateToCourse('web-development')">Web Development</h3>
                    <p>Learn HTML, CSS, and JavaScript to build modern websites.</p>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="course-card">
                    <h3 class="course-title" onclick="navigateToCourse('python-programming')">Python Programming</h3>
                    <p>Master Python and become a skilled programmer.</p>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="course-card">
                    <h3 class="course-title" onclick="navigateToCourse('data-science')">Data Science</h3>
                    <p>Explore data analysis, machine learning, and visualization.</p>
                </div>
            </div>
        </div>
    </div>
    <!--Help Desk-->
    <div class="container color-box" id = "helpdesk" style="display: none;">
        <h1 style="color: #800080;">Help Desk</h1>
        <div class="queryForm">
            <label for="nameInput">Name:</label><br>
            <input type="text" id="nameInput" name="nameInput" class="form-control color"><br>
            <label for="emailInput">Email:</label><br>
            <input type="email" id="emailInput" name="emailInput" class="form-control color"><br>
            <label for="queryInput">Enter your query:</label><br>
            <textarea id="queryInput" name="queryInput" class="form-control color"></textarea><br>
            <button onclick="submitQuery()" class="btn btn-primary">Submit</button>
        </div>
        <div class="queries">
            <!-- Queries will be added here -->
        </div>
    </div>
    <!--practise-->
    <div class="practise color-box" id = "practise" style="display: none;">
        <div class="practice-box ">
            <h2>Practice Section</h2>
         
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Practice Item</th>
                            <th scope="col">Description</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody class="color"> 
                        <tr>
                            <th scope="row">1</th>
                                <td><a href="practice_item_1.html">Practice Item 1</a></td>
                                <td>Description for Practice Item 1</td>
                                <td class="status-in-progress">In Progress</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                                <td><a href="practice_item_2.html">Practice Item 2</a></td>
                                <td>Description for Practice Item 2</td>
                                <td class="status-completed">Completed</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                                <td><a href="practice_item_3.html">Practice Item 3</a></td>
                                <td>Description for Practice Item 3</td>
                                <td class="status-in-progress">In Progress</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                                <td><a href="practice_item_4.html">Practice Item 4</a></td>
                                <td>Description for Practice Item 4</td>
                                <td class="status-completed">Completed</td>
                        </tr>
                                <!-- Add more practice items here -->
                                </tbody>
             </table>
        </div>
    </div>

<!--Test-->
    <div class="Test color-box" id = "test" style="display: none;">
        <h1>Tests</h1>
        <p>Welcome to the Tests section. Below are the tests available:</p>
        <ul>
        <li><a href="test1.html">Mock Test</a></li>
        <li><a href="test2.html">Assessment</a></li>
        <!-- Add more test links here -->
        </ul>
    </div>
    <!--Notes-->
<div class="Notes color-box" id = "note" style ="display: none;">
    <h1 class="text-center">Notes</h1>
    <div class="notes-container">
    <div class="row">
        <div class="col-12">
            <div class="note-item">
                <h3 class="note-title">Introduction to HTML</h3>
                <p class="note-text">This note covers the basics of HTML, including tags, elements, and attributes.</p>
                <select id="fileListHTML" class="form-control mb-3 color">
                    <option value="" disabled selected>Select a file</option>
                    <!-- Options will be added dynamically -->
                </select>
                <button class="download-btn">Download</button>
            </div>
        </div>
        <div class="col-12">
            <div class="note-item">
                <h3 class="note-title">JavaScript Fundamentals</h3>
                <p class="note-text">In this note, you'll learn about JavaScript fundamentals such as variables, data types, and functions.</p>
                <select id="fileListJavaScript" class="form-control mb-3 color ">
                    <option value="" disabled selected>Select a file</option>
                    <!-- Options will be added dynamically -->
                </select>
                <button class="download-btn">Download</button>
            </div>
        </div>
        <!-- Add more notes here -->
    </div>
    </div>
    </div>
    <!--What New-->
    <div class="WhatsNew color-box" id = "WhatsNew"style="display: none;">

        <div class="jumbotron text-center">

            <h1 class="display-4">What's New</h1>

        </div>

        <div class="row justify-content-center">

            <div class="col-md-8">

                <div class="card whats-new-box">

                    <div class="card-body">

                        <h5 class="card-title">Version 2.0</h5>

                        <p class="card-text">We are excited to introduce the following new features:</p>

                        <ul>

                            <li>Enhanced course tracking with progress indicators</li>

                            <li>Interactive quizzes for better engagement</li>

                            <li>Improved user interface for easier navigation</li>

                        </ul>

                        <p class="card-text">Stay tuned for more updates!</p>

                    </div>

                </div>

            </div>

        </div>

<!-- ended  -->

    <!-- Bootstrap JS (optional, if you need JavaScript features) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  	
</nav>
</div>
<br><br>
<br><br>

<div class="footer">
<div class="sticky-bottom">
<div class="card text-center">
 <div class="card-body">

<p style='position:static;'>&copy; 2024 EmptyHead. All rights reserved.</p>

</div>
</div>
</div>
</div>
<script>
    function showSection(sectionId) {
      document.querySelectorAll('section').forEach(section => {
        section.style.display = 'none';
      });
      document.getElementById(sectionId).style.display = 'block';
    }

    function Account(){
        document.getElementById('home').style.display = 'none';  
      document.getElementById('availcourses').style.display = 'none';
      document.getElementById('performance').style.display = 'none';
      document.getElementById('courses').style.display = 'none';
      document.getElementById('helpdesk').style.display = 'none';
      document.getElementById('practise').style.display = 'none';
      document.getElementById('test').style.display = 'none';
      document.getElementById('note').style.display = 'none';
      document.getElementById('WhatsNew').style.display = 'none';
      document.getElementById('nav_bar').style.display = 'none';
      document.getElementById('account').style.display = 'block';
    }

    function Home(){
      document.getElementById('home').style.display = 'block';  
      document.getElementById('availcourses').style.display = 'block';
      document.getElementById('performance').style.display = 'none';
      document.getElementById('courses').style.display = 'none';
      document.getElementById('helpdesk').style.display = 'none';
      document.getElementById('practise').style.display = 'none';
      document.getElementById('test').style.display = 'none';
      document.getElementById('note').style.display = 'none';
      document.getElementById('WhatsNew').style.display = 'none';
      document.getElementById('nav_bar').style.display = 'block';
      document.getElementById('account').style.display = 'none';
    }

    function HelpDesk(){
      document.getElementById('home').style.display = 'none';  
      document.getElementById('availcourses').style.display = 'none';
      document.getElementById('performance').style.display = 'none';
      document.getElementById('courses').style.display = 'none';
      document.getElementById('helpdesk').style.display = 'block';
      document.getElementById('practise').style.display = 'none';
      document.getElementById('test').style.display = 'none';
      document.getElementById('note').style.display = 'none';
      document.getElementById('WhatsNew').style.display = 'none';
      document.getElementById('nav_bar').style.display = 'block';
      document.getElementById('account').style.display = 'none';
    }

    function Perf(){
      document.getElementById('home').style.display = 'none';  
      document.getElementById('availcourses').style.display = 'none';
      document.getElementById('performance').style.display = 'block';
      document.getElementById('courses').style.display = 'none';
      document.getElementById('helpdesk').style.display = 'none';
      document.getElementById('practise').style.display = 'none';
      document.getElementById('test').style.display = 'none';
      document.getElementById('note').style.display = 'none';
      document.getElementById('WhatsNew').style.display = 'none';
      document.getElementById('nav_bar').style.display = 'block';
      document.getElementById('account').style.display = 'none';
    }

    function Course(){
      document.getElementById('home').style.display = 'none';  
      document.getElementById('availcourses').style.display = 'none';
      document.getElementById('performance').style.display = 'none';
      document.getElementById('courses').style.display = 'block';
      document.getElementById('helpdesk').style.display = 'none';
      document.getElementById('practise').style.display = 'none';
      document.getElementById('test').style.display = 'none';
      document.getElementById('note').style.display = 'none';
      document.getElementById('WhatsNew').style.display = 'none';
      document.getElementById('nav_bar').style.display = 'block';
      document.getElementById('account').style.display = 'none';
    }

    function Pract(){
      document.getElementById('home').style.display = 'none';  
      document.getElementById('availcourses').style.display = 'none';
      document.getElementById('performance').style.display = 'none';
      document.getElementById('courses').style.display = 'none';
      document.getElementById('helpdesk').style.display = 'none';
      document.getElementById('practise').style.display = 'block';
      document.getElementById('test').style.display = 'none';
      document.getElementById('note').style.display = 'none';
      document.getElementById('WhatsNew').style.display = 'none';
      document.getElementById('nav_bar').style.display = 'block';
      document.getElementById('account').style.display = 'none';
    }

    function Test(){
      document.getElementById('home').style.display = 'none';  
      document.getElementById('availcourses').style.display = 'none';
      document.getElementById('performance').style.display = 'none';
      document.getElementById('courses').style.display = 'none';
      document.getElementById('helpdesk').style.display = 'none';
      document.getElementById('practise').style.display = 'none';
      document.getElementById('test').style.display = 'block';
      document.getElementById('note').style.display = 'none';
      document.getElementById('WhatsNew').style.display = 'none';
      document.getElementById('nav_bar').style.display = 'block';
      document.getElementById('account').style.display = 'none';
    }

    function Notes(){
      document.getElementById('home').style.display = 'none';  
      document.getElementById('availcourses').style.display = 'none';
      document.getElementById('performance').style.display = 'none';
      document.getElementById('courses').style.display = 'none';
      document.getElementById('helpdesk').style.display = 'none';
      document.getElementById('practise').style.display = 'none';
      document.getElementById('test').style.display = 'none';
      document.getElementById('note').style.display = 'block';
      document.getElementById('WhatsNew').style.display = 'none';
      document.getElementById('nav_bar').style.display = 'block';
      document.getElementById('account').style.display = 'none';
    }

    function WhatsNew(){
      document.getElementById('home').style.display = 'none';  
      document.getElementById('availcourses').style.display = 'none';
      document.getElementById('performance').style.display = 'none';
      document.getElementById('courses').style.display = 'none';
      document.getElementById('helpdesk').style.display = 'none';
      document.getElementById('practise').style.display = 'none';
      document.getElementById('test').style.display = 'none';
      document.getElementById('note').style.display = 'none';
      document.getElementById('WhatsNew').style.display = 'block';
      document.getElementById('nav_bar').style.display = 'block';
      document.getElementById('account').style.display = 'none';
    }
    function navigateToCourse(courseSlug) {
            // Replace with actual URLs for each course
            switch (courseSlug) {
                case 'web-development':
                    window.location.href = 'web-development.html';
                    break;
                case 'python-programming':
                    window.location.href = 'python-programming.html';
                    break;
                case 'data-science':
                    window.location.href = 'data-science.html';
                    break;
                default:
                    // Handle other cases or show an error message
                    alert('Course not found!');
            }
        }

        function submitQuery() {
            var nameInput = document.getElementById('nameInput').value="";
            var emailInput = document.getElementById('emailInput').value="";
            var queryInput = document.getElementById('queryInput').value="";
            var queries = document.getElementById('queries');
            var newQuery = document.createElement('div');
            alert("Query submitted successfully");
        }
        document.addEventListener("DOMContentLoaded", function() {
            // Simulated list of files uploaded by backend team
            var files = [
                "file1.txt",
                "file2.pdf",
                "file3.docxx"
            ];
 
            var fileListHTML = document.getElementById("fileListHTML");
            var fileListJavaScript = document.getElementById("fileListJavaScript");
 
            // Populate the select boxes with files
            files.forEach(function(file) {
                var optionHTML = document.createElement("option");
                optionHTML.text = file;
                fileListHTML.add(optionHTML);
 
                var optionJavaScript = document.createElement("option");
                optionJavaScript.text = file;
                fileListJavaScript.add(optionJavaScript);
            });
        });

        document.addEventListener('DOMContentLoaded', () => {
        const learningProgressCtx = document.getElementById('learningProgressChart').getContext('2d');
        new Chart(learningProgressCtx, {
            type: 'bar',
            data: learningProgressData,
            options: {
                scales: {
                    y: {
                        beginAtZero: true,
                        max: 100 // Set the maximum value of y-axis to 100
                    }
                }
            }
        });
        renderLeaderboard();
    });

    function toggleSidebar() {
            $('.sidebar').toggleClass('show');
        }
</script>

</body>
</html>
