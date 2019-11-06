<%@page import="java.sql.*"%>
<html>
<head>
</head>
<%
    try{
    	
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud_survey","root","");  
//here sonoo is database name, root is username and password  
        Statement stmt=con.createStatement();
        String name=request.getParameter("txt_nm");
        String mail=request.getParameter("txt_ml");
        String num=request.getParameter("num");
        String Sug=request.getParameter("txtar_SCI");
        if(name=="")
            name="Anonymous";
        if(mail=="")
            mail="Anonymous@Anonymous.com";
        if(num=="")
            num="123456";
        String str="INSERT INTO tbl_contact (`Name`, `Email`, `Mobile`, `SCI`, `ID`) VALUES ("+"'"+name+"','"+mail+"',"+num+",'"+Sug+"', NULL);";
        stmt.executeUpdate(str);       
        con.close();
        response.sendRedirect("./Contact.html");  
        }catch(Exception e){ out.println(e);}  
%>
</html>