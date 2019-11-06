 <%@page import="java.sql.*"%>
 <html>
 <head>
 </head>
 <body>
 <%
 	try{
          Class.forName("com.mysql.jdbc.Driver");  
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud_survey","root","");
          Statement stmt=con.createStatement();
          ResultSet rs=stmt.executeQuery("Select Reg from tbl_reg where Reg="+request.getParameter("txt_reg")+";");
 	}catch(Exception e){out.println(e);}
         
%>
</body>
</html>