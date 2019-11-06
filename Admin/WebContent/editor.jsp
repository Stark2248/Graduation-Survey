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
<form action="Update">
<div class="container-fluid">
<div class="row col-md-11">
<table class="table table-striped table-bordered table-hover table-condensed table-sm">
<tr>
<th>Topic</th>
<th>Value</th>
</tr>
<tr>
<td>Name</td><td><input type="text" name="txt_nm" value="${name}"/></td>
</tr>
<tr>
<td>SIC No</td><td><input type="text" name="txt_rg" value="${reg}" readonly/></td>
</tr>
<tr>
<td>Degree</td><td><input type="text" name="txt_degree" value="${degree}"/></td>
</tr>
<tr>
<td>Batch</td><td><input type="text" name="txt_batch" value="${batch}"/></td>
</tr>
<tr>
<td>Gender</td><td><c:forEach items="${gend}" var="foo">
  <input type="radio" name="rb_gen" value="${foo}" ${foo == gender ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Cgpa</td><td><input type="text" name="txt_cgpa" value="${cgpa}"/></td>
</tr>
<tr>
<td>Present Status</td><td><input type="text" name="txt_stat" value="${status}"/></td>
</tr>
<tr>
 <td>Mathematics</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_math" value="${foo}" ${foo == math ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Physical Science</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_physics" value="${foo}" ${foo == physics ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Humanities/Management</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_hm" value="${foo}" ${foo == humanity ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Core Engineering Courses</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_cec" value="${foo}" ${foo == coreeng ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Engineering Courses Imparted By Other</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_eco" value="${foo}" ${foo == engcourses ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Classroom</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_class" value="${foo}" ${foo == clas ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Laboratory</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_lab" value="${foo}" ${foo == lab ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Computing Facility</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_comp" value="${foo}" ${foo == compute ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Library</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_lib" value="${foo}" ${foo == library ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Other Specialized Labs/Centers</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_osl" value="${foo}" ${foo == other ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Admission Cell</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_adcell" value="${foo}" ${foo == acacell ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Administration</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_admin" value="${foo}" ${foo == adminstion ? 'checked' : ''}/>${foo}
</c:forEach>
</tr>
<tr>
<td>Mentoring</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_ment" value="${foo}" ${foo == mentor ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Training and Placement</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_train" value="${foo}" ${foo == training ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Hostel Facility</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_hostel" value="${foo}" ${foo == hostel ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Canteen/Food</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_can" value="${foo}" ${foo == canteen ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Transport</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_tarnsport" value="${foo}" ${foo == transport ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Recreation/Sports</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_sprt" value="${foo}" ${foo == recreate ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Campus Security</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_camp" value="${foo}" ${foo == campus ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Curriculum For Science And Humanities Courses(Maths,Physics,Chemistry,English,And Management)</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_curri" value="${foo}" ${foo == curry ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>How You Rate Adequency And Usefulness Of General Course Of Studies</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_adeqg" value="${foo}" ${foo == adeqg ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>How You Rate Adequency And Usefulness Of Program Core(Major Courses)</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_adeqp" value="${foo}" ${foo == adeqp ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>How You Rate Adequency And Usefulness Of Elective Courses</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_adeqe" value="${foo}" ${foo == adeqe ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>How You Rate Adequency And Usefulness Of Computer Technology In The Curriculum</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_adeqc" value="${foo}" ${foo == adeqc ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>Are You Satisfied With The Curriculum</td><td><c:forEach items="${radio}" var="foo">
  <input type="radio" name="rb_sat" value="${foo}" ${foo == sat ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>As a graduating senior,feel confident of my knowledge and understanding of my field of</td><td><c:forEach items="${radio2}" var="foo">
  <input type="radio" name="rb_q1" value="${foo}" ${foo == q1 ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>My written and oral communication skills were reinforced by the program to allow me to function well in the job market</td><td><c:forEach items="${radio2}" var="foo">
  <input type="radio" name="rb_q2" value="${foo}" ${foo == q2 ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>The project work within my academic program prepared me for my profession</td><td><c:forEach items="${radio2}" var="foo">
  <input type="radio" name="rb_q3" value="${foo}" ${foo == q3 ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>I am satisfeid that the academic program prepared me to succeed within my profession</td><td><c:forEach items="${radio2}" var="foo">
  <input type="radio" name="rb_q4" value="${foo}" ${foo == q4 ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>I am sattisfied with the skills I gained from the training component of the program</td><td><c:forEach items="${radio2}" var="foo">
  <input type="radio" name="rb_q5" value="${foo}" ${foo == q5 ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>My program of study provided me with the ethical and legal understanding involved within my profession</td><td><c:forEach items="${radio2}" var="foo">
  <input type="radio" name="rb_q6" value="${foo}" ${foo == q6 ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>I have found extracurricular activities enriching and supportive of the learning</td><td><c:forEach items="${radio2}" var="foo">
  <input type="radio" name="rb_q7" value="${foo}" ${foo == q7 ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>I learned skills needed to effectively locate,retrieve and evaluate information</td><td><c:forEach items="${radio2}" var="foo">
  <input type="radio" name="rb_q8" value="${foo}" ${foo == q8 ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>I believe in continuing professional development and aim to develop my skills and knowledge after graduation</td><td><c:forEach items="${radio2}" var="foo">
  <input type="radio" name="rb_q9" value="${foo}" ${foo == q9 ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>In general,I am satisfied with the experience I had at Silicon</td><td><c:forEach items="${radio2}" var="foo">
  <input type="radio" name="rb_q10" value="${foo}" ${foo == q10 ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>I would advise other student to attend Silicon</td><td><c:forEach items="${radio2}" var="foo">
  <input type="radio" name="rb_q11" value="${foo}" ${foo == q11 ? 'checked' : ''}/>${foo}
</c:forEach></td>
</tr>
<tr>
<td>List the courses within your Program from which you benefited the most.</td><td><textarea name="txt_sug1">${s1}</textarea></td>
</tr>
<tr>
<td>Which courses provide the best practical experience?</td><td><textarea name="txt_sug2">${s2}</textarea></td>
</tr>
<tr>
<td>What advice would you give to other students enrolled within your program?</td><td><textarea name="txt_sug3">${s3}</textarea></td>
</tr>
<tr>
<td>.Any other suggestions to enrich the program of study at Silicon</td><td><textarea name="txt_sug4">${s4}</textarea></td>
</tr>
</table>
<input type="hidden" name="currentPage" value="${currentPage}">
<button type="cancel" onclick="window.location='ReadStudent?currentPage=1&batch=${batch}';return false;" class="btn btn-danger">Cancel</button>
<button type="submit" class="btn btn-success">Submit</button>
</div>
</div>
</form>
</body>
</html>