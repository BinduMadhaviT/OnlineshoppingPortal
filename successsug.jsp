<%-- 
    Document   : successsug
    Created on : 28 Nov, 2017, 10:23:57 AM
    Author     : Bindu T
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>   
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
String uname=request.getParameter("name");
String sug=request.getParameter("sugg");
String ph=request.getParameter("phno");
String mail=request.getParameter("id");
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into review values('"+uname+"','"+sug+"','"+ph+"','"+mail+"')");
String Query="select * from review";
//CallableStatement stc=con.prepareCall("{call fun(?,?,?,?,?,?,?,?,?,?)}");
PreparedStatement psm=con.prepareStatement(Query);
ResultSet rs=psm.executeQuery();
//int count=stc.executeUpdate();
if(rs.next())
{
out.print("Thanks for the review!"+"<br/><br/><a href='logboot/index.jsp'>Go to Login</a>");
//response.sendRedirect("index.jsp");    
}
else
{
out.println("Review could not be placed");
}
%>            
</body>
</html>
