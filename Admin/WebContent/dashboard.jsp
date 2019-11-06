<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome To Admin Page</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 160px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
}
.bg-orange{
	background-color: orange;

}
.bg-red{
	background-color: red;

}
.sidenav a:hover {
  color: #f1f1f1;
}


.main {
  margin-left: 160px; /* Same as the width of the sidenav */
  font-size: 28px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}
.active{
	background-color: white;
	text-color: black;
}
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>



</head>

<body>
 <div class="sidenav">
  <a href="#"></a>
  <a href="#">BATCH</a>
  <a href="./dashboard?batch=2019" class="active">2019</a>
  <a href="./dashboard?batch=2018">2018</a>
  <a href="./dashboard?batch=2017">2017</a>
</div>
<div class="main">
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Admin Page</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li class="navbar-brand">Welcome Mr.${uname}</li>
      
      <li><a href="logout">Logout</a></li>
    </ul>
  </div>
</nav>
	<div class="container-fluid">
	<div class="row">
	<div class="container bg-orange col-sm-4">
		<table class="table" style=" width: 200;">
		<thead>
		<tr>
			<td> Given: ${given}</td>
		</tr>
		</thead>
		<tbody>
		<tr>
		<td><form action="ReadStudent">
			<input type="hidden" name="currentPage" value="1">
			<input type="hidden" name="batch" value="2019">
			 <button type="submit" class="btn btn-primary">View</button>
			</form>
			</td>
		</tr>
		</tbody>
		</table>
		<table class="tbl"></table>
	</div>
	<div class="col-sm-6"></div>
	<div class="container bg-red col-sm-4">
		<table class="table" style=" width: 200;padding-left:30;">
		<thead>
		<tr>
			<td>Not given: ${nott}</td>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td><form action="ReadStudent1">
			<input type="hidden" name="currentPage" value="1">
			<input type="hidden" name="batch" value="2019">
			 <button type="submit" class="btn btn-primary">View</button>
			</form>
			</td>
		</tr>
		</tbody>
		</table>
	</div>
	</div>
	</div>
</div>
</body>
</html>