<%--
    Document   : successlog
    Created on : 28 Oct, 2017, 12:45:45 AM
    Author     : Bindu T
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    SUCCESS-LOG
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
String uname=request.getParameter("name");
String pwd=request.getParameter("password");
String ustype=request.getParameter("i");
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","root");
Statement st=conn.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from register where uname='"+uname+"' and pwd='"+pwd+"' and type='"+ustype+"'");
if (rs.next()) {
session.setAttribute("userid",uname);
//out.println("welcome" +uname);
//out.println("<a href='logout.jsp'>Log out</a>");
if (ustype.matches("ADMIN"))
{
response.sendRedirect("admin.jsp");  
}
else
{
response.sendRedirect("home.jsp");
}
}
else 
{
out.println("Invalid details<a href='logboot/index.jsp'><br/><br/>RETRY</a>");
}
%>
</body>
</html>