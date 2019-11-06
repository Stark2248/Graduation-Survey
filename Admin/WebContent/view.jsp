<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Editor</title>
<script>
function f1(val){
	 var element=document.getElementById('otherdeg');
	 if(val=='Others')
	   element.style.display='block';
	 else  
	   element.style.display='none';
	}
</script>
</head>
<body class="m-3" >
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Admin Page</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li class="navbar-brand">Welcome Mr.${uname}</li>
      
      <li><a href="./dashboard?batch=${batch}">Dashboard</a></li>
      <li><a href="logout">Logout</a></li>
    </ul>
  </div>
</nav>
<div class="container-fluid">
<div class="row col-md-11">
<table class="table table-striped table-bordered table-hover table-condensed table-sm">
<tr>
<th>Topic</th>
<th>Value</th>
</tr>
<tr>
<td>Name</td><td>${name}</td>
</tr>
<tr>
<td>SIC No</td><td>${reg}</td>
</tr>
<tr>
<td>Degree</td><td>${degree}</td>
</tr>
<tr>
<td>Batch</td><td>${batch}</td>
</tr>
<tr>
<td>Gender</td><td>${gender}</td>
</tr>
<tr>
<td>Cgpa</td><td>${cgpa}</td>
</tr>
<tr>
<td>Present Status</td><td>${status}</td>
</tr>
<tr>
 <td>Mathematics</td><td>${ math}</td>
</tr>
<tr>
<td>Physical Science</td><td>${physics}</td>
<tr>
<td>Humanities/Management</td><td>${humanity}</td>
</tr>
<tr>
<td>Core Engineering Courses</td><td>${coreeng}</td>
</tr>
<tr>
<td>Engineering Courses Imparted By Other</td><td>${engcourses}</td>
</tr>
<tr>
<td>Classroom</td><td>${clas}</td>
</tr>
<tr>
<td>Laboratory</td><td>${lab}</td>
</tr>
<tr>
<td>Computing Facility</td><td>${compute}</td>
</tr>
<tr>
<td>Library</td><td>${ library}</td>
</tr>
<tr>
<td>Other Specialized Labs/Centers</td><td>${ other}</td>
</tr>
<tr>
<td>Admission Cell</td><td>${ acacell} 
</td>
</tr>
<tr>
<td>Administration</td><td>${adminstion}</td> 

</tr>
<tr>
<td>Mentoring</td><td>${mentor}
</td>
</tr>
<tr>
<td>Training and Placement</td>
<td>${training}
</td>
</tr>
<tr>
<td>Hostel Facility</td><td>${ hostel} 
</td>
</tr>
<tr>
<td>Canteen/Food</td><td>${ canteen}
</td>
</tr>
<tr>
<td>Transport</td><td>
  ${transport}
</td>
</tr>
<tr>
<td>Recreation/Sports</td><td>
  ${ recreate}
</td>
</tr>
<tr>
<td>Campus Security</td><td>
  ${ campus}
</td>
</tr>
<tr>
<td>Curriculum For Science And Humanities Courses(Maths,Physics,Chemistry,English,And Management)</td><td>${  curry}
</td>
</tr>
<tr>
<td>How You Rate Adequency And Usefulness Of General Course Of Studies</td><td>${ adeqg}
</td>
</tr>
<tr>
<td>How You Rate Adequency And Usefulness Of Program Core(Major Courses)</td><td>${ adeqp}
</td>
</tr>
<tr>
<td>How You Rate Adequency And Usefulness Of Elective Courses</td><td>${ adeqe}
</td>
</tr>
<tr>
<td>How You Rate Adequency And Usefulness Of Computer Technology In The Curriculum</td><td>${ adeqc} 
</td>
</tr>
<tr>
<td>Are You Satisfied With The Curriculum</td><td>
  ${ sat}</td>
</tr>
<tr>
<td>As a graduating senior,feel confident of my knowledge and understanding of my field of</td><td> ${ q1}</td>
</tr>
<tr>
<td>My written and oral communication skills were reinforced by the program to allow me to function well in the job market</td><td>
 ${ q2}</td>
</tr>
<tr>
<td>The project work within my academic program prepared me for my profession</td><td>${ q3}
</td>
</tr>
<tr>
<td>I am satisfeid that the academic program prepared me to succeed within my profession</td><td>${ q4}</td>
</tr>
<tr>
<td>I am sattisfied with the skills I gained from the training component of the program</td><td>${ q5}</td>
</tr>
<tr>
<td>My program of study provided me with the ethical and legal understanding involved within my profession</td><td>${ q6}</td>
</tr>
<tr>
<td>I have found extracurricular activities enriching and supportive of the learning</td><td>${ q7}</td>
</tr>
<tr>
<td>I learned skills needed to effectively locate,retrieve and evaluate information</td><td>
  ${ q8}
</td>
</tr>
<tr>
<td>I believe in continuing professional development and aim to develop my skills and knowledge after graduation</td><td>${ q9}
 </td>
</tr>
<tr>
<td>In general,I am satisfied with the experience I had at Silicon</td><td>${ q10}</td>
</tr>
<tr>
<td>I would advise other student to attend Silicon</td><td>
  ${ q11}
</td>
</tr>
<tr>
<td>List the courses within your Program from which you benefited the most.</td><td>${s1}</td>
</tr>
<tr>
<td>Which courses provide the best practical experience?</td><td>${s2}</td>
</tr>
<tr>
<td>What advice would you give to other students enrolled within your program?</td><td>${s3}</td>
</tr>
<tr>
<td>.Any other suggestions to enrich the program of study at Silicon</td><td>${s4}</td>
</tr>
</table>
<button type="cancel" onclick="window.location='ReadStudent?currentPage=1&batch=${batch}';return false;" class="btn btn-info">Back</button>

</div>
</div>

</body>
</html>