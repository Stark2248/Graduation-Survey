# Graduation-Survey
A Website to give garduation survey online for Silicon Institute of Technology with its admin part where you can view how many have given and to edit those which was given and also give how many who didnt give. you can also delete trash survey given by the students.

## Description
This project has two parts:
1. Main site(where students will give survey)
2. Admin site(where master user will view the submitted surveys)

### 1. Main Site
The first page of this site is to provide the registration no of the student who is giving the survey. The system will verify whether the student giving the survey has a valid registration number or not. if the resistration number is valid then the system also checks whether the student has given the survey or not. If the student has not given the survey yet then it will redirect to the form page where he/she will give the survey. Some of the form field is already prefilled from the provided registration number in the first page. After filling all rest of the field and then submitting, thanks for giving survey appears.
### 2. Admin Site
The first page is the login page where admin log in. Its a simple login system. Like all others login validate dashboard logout.The dashboard conntains two blocks. The first block shows no of students given the surveys and the second block contains the no of students not given the survey yet. If admin selects first block then he can view, edit and delete the given surveys according to the survey provided by the student. If admin selects second block the he can see which students have not given the survey and later he can query those students. The left side nav bar contains batch year. The top nav bar contains the log out bottun.

## Special Implementation
TechStack:
1. Java Servlet Programming
2. Connection to mysql database
3. Server-side Pagination

## Requirement
* Eclipse
* Apache tomcat
* MySQL Database
