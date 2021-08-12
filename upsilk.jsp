<%-- 
    Document   : upsilk
    Created on : 6 Nov, 2017, 5:17:19 PM
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
String img=request.getParameter("pic");
String cost=request.getParameter("cost");
int cost1=Integer.parseInt(cost);
String type=request.getParameter("type");
String description=request.getParameter("desc");
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into silk values('"+img+"','"+type+"','"+cost1+"','"+description+"')");
String Query="select * from silk";
PreparedStatement psm=con.prepareStatement(Query);
ResultSet rs=psm.executeQuery();
if(rs.next())
{
out.print("Update Successfull!"+"<br/><br/><a href='admin.jsp'>Add new item?</a><br/><br/>");
out.print("See the placed orders"+"<br/><br/><a href='display.jsp'>Ordered details</a>");
out.print("<br/><br/><a href='home.jsp'>Go to homepage</a>");
//response.sendRedirect("index.jsp");
}
else
{
out.println("Error in uploading details");
}
%> 