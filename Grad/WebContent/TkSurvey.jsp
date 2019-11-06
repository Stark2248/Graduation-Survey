<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>


        .jumbotron {
          background-color: #3964db; /* Orange */
          color: #ffffff;
        }
        
        .bg-grey {
          background-color: #cec9c9;
        }
        .xyz{
            padding-left: 50%;
        }
         img {
    max-width: 100%;
    height: auto;
    width: auto\9; /* ie8 */
    }
    </style>
    <script type="text/javascript">
    function isNumberKey(evt){
        var charCode = (evt.which) ? evt.which : evt.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        return true;
    }
    </script>
</head>
<body style="padding-left: 10%;padding-right: 10%;">
  
    <div class="jumbotron text-center">
       <h1>Silicon Institute Of Technology</h1>
    </div>
   
    <nav class="navbar navbar-expand-sm navbar-dark fixed-top" style="margin-left: 10%;margin-right: 10%;">
   
     <!-- Links -->
     <ul class="navbar-nav">
       <li class="nav-item">
         <a class="nav-link" href="./home.html">Home</a>
       </li>
       <li class="nav-item">
         <a class="nav-link" href="./About.html">About</a>
       </li>
       <li class="nav-item">
         <a class="nav-link" href="./Contact.html">Contact Us</a>
       </li>
       <li class="nav-item">
         <a class="nav-link active" href="./TkSurvey.jsp">Take Survey</a>
       </li>
     </ul>
   </nav>
    <div style="padding-left:40%;">
        <form action="CheckSic">
        <table>
        	<tr style="text-color: red">${error}</tr>
        	<tr>
          	<td><input type="text" class="form-control" name="Sic" id="Sic" onkeypress="return isNumberKey(event)" placeholder="Sic Number" required/></td>
          	
          	<td><input type="submit"  value="Take Survey" class="btn btn-success"></td></tr>
          	
       </table>
        </form>
   </div>           
   <img src="tk.png" class="rounded" >
  
        
           
        
</body>
</html>