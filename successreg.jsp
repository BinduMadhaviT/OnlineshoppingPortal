<%-- 
    Document   : successreg
    Created on : 28 Oct, 2017, 12:45:45 AM
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
String pwd=request.getParameter("password");
String repwd=request.getParameter("password1");
String type=request.getParameter("utype");
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into register values('"+uname+"','"+pwd+"','"+repwd+"','"+type+"')");
String Query="call auction.fun()";
//CallableStatement stc=con.prepareCall("{call fun(?,?,?,?,?,?,?,?,?,?)}");
PreparedStatement psm=con.prepareStatement(Query);
ResultSet rs=psm.executeQuery();
//int count=stc.executeUpdate();
if(rs.next())
{
out.print("Registration Successfull!"+"<br/><br/><a href='logboot/index.jsp'>Go to Login</a>");
//response.sendRedirect("index.jsp");    
}
else
{
out.println("Error in registration");
}
%>            
</body>
</html>