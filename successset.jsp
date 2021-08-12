<%-- 
    Document   : index
    Created on : 28 Oct, 2017, 12:45:45 AM
    Author     : Bindu T
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
USER_DETAILS
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
String image=request.getParameter("name");
String phno=request.getParameter("ph_no");
String id=request.getParameter("email");
String Add_line1=request.getParameter("line1");
String Add_line2=request.getParameter("line3");
String gender=request.getParameter("gender");
String state=request.getParameter("state");
String country=request.getParameter("country");
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into user values('"+image+"','"+phno+"','"+id+"','"+Add_line1+"','"+Add_line2+"','"+gender+"','"+state+"','"+country+"')");
String Query="select * from user";
PreparedStatement psm=con.prepareStatement(Query);
ResultSet rs=psm.executeQuery();
if(rs.next())
{
session.setAttribute("img",image);
out.print("Details saved!"+"<br/><br/><a href='home.jsp'>Go to home</a>");
//response.sendRedirect("index.jsp");
}
else
{
out.println("Invalid details");
}
%>            
</body>
</html>