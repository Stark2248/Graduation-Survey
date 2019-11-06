<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Table</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
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
<body class="m-3">
<div class="sidenav">
  <a href="#"></a>
  <a href="#">BATCH</a>
  <a href="./dashboard?batch=2019" ${batch == 2019? "class='active'":""}>2019</a>
  <a href="./dashboard?batch=2018" ${batch == 2018? "class='active'":''}>2018</a>
  <a href="./dashboard?batch=2017" ${batch == 2017? "class='active'":""}>2017</a>
</div>
<div class="main">
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
<div class="row col-md-11">
<table class="table table-striped table-bordered table-hover table-condensed table-sm">
<tr>
<th>Reg</th>
<th>Name</th>
<th>Branch</th>
</tr>
	<c:forEach items="${student}" var="student">
            <tr>
            	<td>${student.getReg()}</td>
                <td>${student.getName()}</td>
                <td>${student.getBranch()}</td>    
            </tr>
        </c:forEach>
</table>
</div>
<div class="row col-md-11">
 <nav aria-label="Navigation for Student">
    <ul class="pagination">
        <c:if test="${currentPage != 1}">
            <li class="page-item"><a class="page-link" 
                href="ReadStudent1?currentPage=${currentPage-1}&batch=${batch}">Previous</a>
            </li>
        </c:if>
		<li class="page-item"><a class="page-link" 
                href="ReadStudent1?currentPage=${currentPage}&batch=${batch}">${currentPage}</a>
            </li>
        

        <%
        	int c=(Integer)request.getAttribute("currentPage");
        	int n=(Integer)request.getAttribute("noOfpages");
        	if(c<n){
        	%>
            <li class="page-item"><a class="page-link" 
                href="ReadStudent1?currentPage=${currentPage+1}&batch=${batch}">Next</a>
            </li>             
        <% }%>
    </ul>
</nav>
</div>
</div>
</body>
</html>