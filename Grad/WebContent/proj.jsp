<!DOCTYPE html>
<html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script>
      function f1(val){
 var element=document.getElementById('otherdeg');
 if(val=='Others')
   element.style.display='block';
 else  
   element.style.display='none';
}
function f2(val1){
 var element1=document.getElementById('otherstat');
 if(val1=='Others')
   element1.style.display='block';
 else  
   element1.style.display='none';
}

    </script>
<script type="text/javascript">
function Confirm(form){
alert("Thanks for taking our survey"); 
form.submit();
}
</script>
<style>


.jumbotron {
  background-color: #3964db; /* Orange */
  color: #ffffff;
}

.bg-grey {
  background-color: #cec9c9;
}
.container-fluid {
  padding: 10px 6px;
}


th, td {
  padding: 15px;
}

.navbar {
  margin-bottom: 0;
  background-color: #3964db;
  z-index: 9999;
  border: 0;
  font-size: 12px !important;
  line-height: 1.42857143 !important;
  letter-spacing: 4px;
  border-radius: 0;
}

.navbar li a, .navbar .navbar-brand {
  color: #fff !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
  color: #041638 !important;
  background-color: #2d4ea8;
}

.navbar-default .navbar-toggle {
  border-color: transparent;
  color: #fff !important;
}



</style>
</head>
<body style="padding-left: 10%;padding-right: 10%;">
 
 <div class="jumbotron text-center">
    <h1>Silicon Institute Of Technology</h1>
    <p>Graduation Questionnaires</p>
   
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
      <a class="nav-link" href="./TkSurvey.jsp">Take Survey</a>
    </li>
  </ul>

</nav>  
 
      <form action="table" method="GET">
<p>The silicon institue of technology(silicon) in it's strive for excellence considers the opinion/feedback of our graduates as one of the most valuable guiding resources. Silicon graduates feedback on educational experience at silicon institute of technology help us significantly in developing the future direction of our educational program.</p>
<a name="top"></a>

<h4 id="section1">Section 1:</h4>
<div   class="container-fluid bg-grey">
 
    <table style="width:100%" class="table table-hover">
        <tr>
          <th>Name</th>
          <th><input class="form-control" name="txt_nm" type="text"></th>
        </tr>
        <tr>
          <th>SIC Number</th>
          <th><input class="form-control reg123" name="txt_reg" type="text" value="${Sic}" readonly></th>
        </tr>
        
        <tr>
          <th>What Degree Did You Pursued At Silicon</th>
          <td>
            <div class="row">
              <div class="col form-group">
                <select class="form-control" name="cmb_degree" onchange="f1(this.value);">
                  <option value="B.tech">B.Tech</option>
                  <option value="MCA">MCA</option>
                  <option value="M.Tech">M.Tech</option>
                  <option value="Others">Others</option> 
                </select>
              </div>
              <div class="col">
                <input class="form-control" name="otherdeg" id="otherdeg" type="text" style='display: none; width: 400'>
              </div>
            </div>
          </td> 
        </tr>
      
      
      
      
      
      
        <tr>
          <th>Starting Year At Silicon</th>
          <th>
          <div class="row">
              <div class="col form-group">
            <select name="cmb_year">
              <option value="2017">2017</option>
              <option value="2018">2018</option>
              <option value="2019">2019</option>
              <option value="2020">2020</option>
            </select>
             </div>
              
            </div>
          </th> 
        </tr>
      
      
      
      
       <tr>
          <th>Gender</th>
          <th>
              <input class="ab" name="rb_gen" type="radio" value="Male"> Male
              <input class="ab" name="rb_gen" type="radio" value="Female"> Female
              <input Class="ab" name="rb_gen" type="radio" Value="Other"> Other  
          </th> 
        </tr>
      
      
       <tr>
          <th>Your Approximate Cumulative CGPA</th>
          <th>
              <input class="form-control" name="txt_cgpa" type="text">
          </th> 
        </tr>
      
      
      
        <tr>
          <th>Which Of The Following Describes Your Present Status</th>
          <th>
              <div class="row">
                <div class="col">
                  <select name="cmb_status" onchange="f2(this.value);">
                  	<option>----Select----</option>
                    <option value="OFFERED CAMPUS THROUGH CAMPUS RECRUITMENT">Offered Campus Through Campus Recruitment</option>
                    <option value="OFFERED JOB THROUGH OFF CAMPUS">Offered Job Through Off Campus</option>
                    <option value="INTERVIEWED,NO OFFER">Interviewed,No Offer</option>
                    <option value="HAVE NOT BEEN INTERVIEWED">Have Not Been Interviewed</option>
                    <option value="QUALIFIED ENTRANCE THROUGH HIGHER STUDIES">Qualified Entrance Through Higher Studies</option>
                    <option value="Others">Others(Please Specify)</option>
                  </select>
                </div>
                <div class="col">
                  <input class="form-control" id="otherstat" type="text" style='display: none;'>
                </div>
              </div>
          </th> 
        </tr>
      </table>
</div>

<br>
<br>
<h4 id="section2" style="font-family: 'Times New Roman', Times, serif;" ><i>Overall Assesment Of Student Experience</i></h4>
<div class="container-fluid .bg-grey">
   

<table class="table table-hover">
  <thead>
    <tr>
      <th>Rate Your Experience Of Each Statement</th>
      <th align="CENTER">Not Satisfied</th>
      <th align="CENTER">Somewhat Satisfied</th>
      <th align="CENTER">Satisfied</th>
      <th align="CENTER">Very much Satisfied</th>
      <th align="CENTER">Extremely Satisfied</th>
    </tr>
  </thead>
  <tbody>
 
      <tr>
        <th colspan="6"></th>
      </tr>
    <tr>
    <tr>
      <tr>
        <td colspan="6">1.Quality Instruction By Faculty</td>
      </tr>
    <tr>
    <tr>
      <td >     Mathematics</td>
        <td align="CENTER"><input name="rb_mt" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_mt" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_mt" type="radio"  value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_mt" type="radio"  value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_mt" type="radio"  value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td >     Physical Science</td>
        <td align="CENTER"><input name="rb_ps" type="radio" value="Not Satisfied" />    &nbsp;   </td>
        <td align="CENTER"><input name="rb_ps" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_ps" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_ps" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_ps" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td >     Humanities/Management</td>
        <td align="CENTER"><input name="rb_hm" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_hm" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_hm" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_hm" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_hm" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td >     Core Engineering Courses</t>
        <td align="CENTER"><input name="rb_cec" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_cec" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_cec" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_cec" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_cec" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td >     Engineering Courses Imparted By Other</td>
        <td align="CENTER"><input name="rb_eco" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_eco" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_eco" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_eco" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_eco" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    
      <tr>
      <tr>
        <td colspan="6"></td>
      </tr>
    <tr>
    <tr>
    <tr>
      <tr>
        <td colspan="6">2.Quality Of Facility</td>
      </tr>
    <tr>
    <tr>
      <td >Classroom</td>
        <td align="CENTER"><input name="rb_class" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_class" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_class" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_class" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_class" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td >Laboratory</td>
        <td align="CENTER"><input name="rb_lab" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_lab" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_lab" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_lab" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_lab" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>

    </tr>
    <tr>
      <td >Computing Facility</td>
        <td align="CENTER"><input name="rb_cf" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_cf" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_cf" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_cf" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_cf" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td >Library</td>
        <td align="CENTER"><input name="rb_lib" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_lib" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_lib" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_lib" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_lib" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td >Other Specialized Labs/Centers</td>
        <td align="CENTER"><input name="rb_others" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_others" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_others" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_others" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_others" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    
    <tr>
      <tr>
        <td colspan="6"></td>
      </tr>
    <tr>





    <tr>
      <tr>
        <td colspan="6">3.Quality Of Support Service</td>
      </tr>
    <tr>
    <tr>
    <tr>
      <td>      Admission Cell</td>
        <td align="CENTER"><input name="rb_ac" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_ac" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_ac" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_ac" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_ac" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>


    <tr>
      <td>      Administration</td>
        <td align="CENTER"><input name="rb_admin" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_admin" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_admin" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_admin" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_admin" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>

    
    <tr>
      <td>      Mentoring</td>
        <td align="CENTER"><input name="rb_mentor" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_mentor" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_mentor" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_mentor" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_mentor" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>


    <tr>
      <td>      Training And Placement Cell</td>
        <td align="CENTER"><input name="rb_train" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_train" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_train" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_train" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_train" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td>      Hostel Facility</td>
        <td align="CENTER"><input name="rb_hostel" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_hostel" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_hostel" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_hostel" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_hostel" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td>      Canteen/Food</td>
        <td align="CENTER"><input name="rb_canteen" type="radio" value="Not Satisfied" checked/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_canteen" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_canteen" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_canteen" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_canteen" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td>      Transport</td>
        <td align="CENTER"><input name="rb_trans" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_trans" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_trans" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_trans" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_trans" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td>      Recreation/Sports</td>
        <td align="CENTER"><input name="rb_recreate" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_recreate" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_recreate" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_recreate" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_recreate" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td>      Campus Security</td>
        <td align="CENTER"><input name="rb_campuss" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_campuss" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_campuss" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_campuss" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_campuss" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    
   
      <tr>
        <td colspan="6"></td>
      </tr>
 

 
      


    <tr>
      <tr>
        <td colspan="6">4.Curriculum And Instruction</td>
      </tr>
    <tr>
    <tr>
        <tr>
      <td>Curriculum For Science And Humanities Courses(Maths,Physics,Chemistry,English,And Management)</td>
        <td align="CENTER"><input name="rb_courses" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_courses" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_courses" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_courses" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_courses" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td>How You Rate Adequency And Usefulness Of General Course Of Studies</td>
        <td align="CENTER"><input name="rb_adequency" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_adequency" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_adequency" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_adequency" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_adequency" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td>How You Rate Adequency And Usefulness Of Program Core(Major Courses)</td>
        <td align="CENTER"><input name="rb_madequency" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_madequency" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_madequency" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_madequency" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_madequency" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td>How You Rate Adequency And Usefulness Of Elective Courses</td>
        <td align="CENTER"><input name="rb_eadequency" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_eadequency" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_eadequency" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_eadequency" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_eadequency" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td>How You Rate Adequenccy And Usefulness Of Computer Technology In The Curriculum</td>
        <td align="CENTER"><input name="rb_actech" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_actech" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_actech" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_actech" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_actech" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    </tr>
    <tr>
      <td>Are You Satisfied With The Curriculum</td>
        <td align="CENTER"><input name="rb_satisfied" type="radio" value="Not Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_satisfied" type="radio" value="Somewhat Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_satisfied" type="radio" value="Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_satisfied" type="radio" value="Very much Satisfied"/>    &nbsp;   </td>
        <td align="CENTER"><input name="rb_satisfied" type="radio" value="Extremely Satisfied"/>    &nbsp;   </td>
    
</tr>
</tbody>

</table>
</div>
    <br>
    <br>
    
    <h4 id="section3" >Section 3:</h4>
    <div class="container-fluid bg-grey ">
        
    <table class="table table-hover"> 
    <tr>
      <thead>
      <tr>
        <th>Overall Program Experience</th>
        <th align="CENTER">Strongly Agree</th>
        <th align="CENTER">Agree</th>
        <th align="CENTER">Neutral</th>
        <th align="CENTER">Disagree</th>
        <th align="CENTER">Strongly Disagree</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <td>As a graduating senior,feel confident of my knowledge and understanding of my field of</td>
          <td align="CENTER"><input name="rb_feelconfident" type="radio" value="Strongly Agree" />    &nbsp;   </td>
          <td align="CENTER"><input name="rb_feelconfident" type="radio" value="Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_feelconfident" type="radio" value="Neutral"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_feelconfident" type="radio" value="Disagree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_feelconfident" type="radio" value="Strongly Disagree"/>    &nbsp;   </td>
      </tr>
      <tr>
        <td>My written and oral communication skills were reinforced by the program to allow me to function well in the job market</td>
          <td align="CENTER"><input name="rb_writtenoral" type="radio" value="Strongly Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_writtenoral" type="radio" value="Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_writtenoral" type="radio" value="Neutral"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_writtenoral" type="radio" value="Disagree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_writtenoral" type="radio" value="Strongly Disagree"/>    &nbsp;   </td>
      </tr>
      <tr>
        <td>The project work within my academic program prepared me for my profession</td>
          <td align="CENTER"><input name="rb_academicprog" type="radio" value="Strongly Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_academicprog" type="radio" value="Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_academicprog" type="radio" value="Neutral"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_academicprog" type="radio" value="Disagree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_academicprog" type="radio" value="Strongly Disagree"/>    &nbsp;   </td>
      </tr>
      <tr>
        <td>I am satisfeid that the academic program prepared me to succeed within my profession</td>
          <td align="CENTER"><input name="rb_academicsucceed" type="radio" value="Strongly Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_academicsucceed" type="radio" value="Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_academicsucceed" type="radio" value="Neutral"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_academicsucceed" type="radio" value="Disagree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_academicsucceed" type="radio" value="Strongly Disagree"/>    &nbsp;   </td>
      </tr>
      <tr>
        <td>I am sattisfied with the skills I gained from the training component of the program</td>
          <td align="CENTER"><input name="rb_trainingcomp" type="radio" value="Strongly Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_trainingcomp" type="radio" value="Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_trainingcomp" type="radio" value="Neutral"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_trainingcomp" type="radio" value="Disagree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_trainingcomp" type="radio" value="Strongly Disagree"/>    &nbsp;   </td>
      </tr>
      <tr>
        <td>My program of study provided me with the ethical and legal understanding involved within my profession</td>
          <td align="CENTER"><input name="rb_ethical" type="radio" value="Strongly Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_ethical" type="radio" value="Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_ethical" type="radio" value="Neutral"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_ethical" type="radio" value="Disagree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_ethical" type="radio" value="Strongly Disagree"/>    &nbsp;   </td>
      </tr>
      <tr>
        <td>I have found extracurricular activities enriching and supportive of the learning</td>
          <td align="CENTER"><input name="rb_extracurricular" type="radio" value="Strongly Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_extracurricular" type="radio" value="Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_extracurricular" type="radio" value="Neutral"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_extracurricular" type="radio" value="Disagree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_extracurricular" type="radio" value="Strongly Disagree"/>    &nbsp;   </td>
      </tr>
      <tr>
        <td>I learned skills needed to effectively locate,retrieve and evaluate information</td>
          <td align="CENTER"><input name="rb_evaluateinf" type="radio" value="Strongly Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_evaluateinf" type="radio" value="Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_evaluateinf" type="radio" value="Neutral"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_evaluateinf" type="radio" value="Disagree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_evaluateinf" type="radio" value="Strongly Disagree"/>    &nbsp;   </td>
      </tr>
      <tr>
        <td>I believe in continuing professional development and aim to develop my skills and knowledge after graduation</td>
          <td align="CENTER"><input name="rb_professional" type="radio" value="Strongly Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_professional" type="radio" value="Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_professional" type="radio" value="Neutral"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_professional" type="radio" value="Disagree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_professional" type="radio" value="Strongly Disagree"/>    &nbsp;   </td>
      </tr>
      <tr>
        <td>In general,I am satisfied with the experience I had at Silicon</td>
          <td align="CENTER"><input name="rb_satexperience" type="radio" value="Strongly Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_satexperience" type="radio" value="Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_satexperience" type="radio" value="Neutral"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_satexperience" type="radio" value="Disagree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_satexperience" type="radio" value="Strongly Disagree"/>    &nbsp;   </td>
      </tr>
      <tr>
        <td>I would advise other student to attend Silicon</td>
          <td align="CENTER"><input name="rb_aother" type="radio" value="Strongly Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_aother" type="radio" value="Agree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_aother" type="radio" value="Neutral"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_aother" type="radio" value="Disagree"/>    &nbsp;   </td>
          <td align="CENTER"><input name="rb_aother" type="radio" value="Strongly Disagree"/>    &nbsp;   </td>
      </tr>
      </tbody>
</table>
</div>
<h4 id="section4" >Section 4:</h4>
      <p>Comments/Suggestions(please feel free to comment on the program and it's graduates in terms of their professional qualities and on specific areas of strengths and weaknesses.Also,please feel free to suggest any improvements to our programs of study.)</p>
      <br>
      <div class="form-group">
          <label for="comment">1.List the courses within your Program from which you benefited the most.</label>
          <textarea class="form-control" rows="5" id="comment" name="txt_becourse"></textarea>

          <label for="prac">2.Which courses provide the best practical experience?</label>
          <textarea class="form-control" rows="5" id="prac" name="txt_beprac"></textarea>
          
          <label for="advice">3.What advice would you give to other students enrolled within your program?</label>
          <textarea class="form-control" rows="5" id="advice" name="txt_advice"></textarea>
          
               
          <label for="suggestions">4.Any other suggestions to enrich the program of study at Silicon.</label>
          <textarea class="form-control" rows="5" id="suggestions" name="txt_suggestion"></textarea>
          
        </div> 
         
          
          <p>Thank you for answering the graduating exit survey. We wish you best of luck. Thank you for your valuable feedback that will improve our program further.</p>
          <input type="button" name="Submit" value="Submit" onClick="Confirm(this.form)">
          
  </form>
  <div style="text-align: right">
    <a href="#top">Back to top of page</a>
  </div>

  
</body>
</html>



