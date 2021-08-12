<%-- 
    Document   : diplayorder
    Created on : 13 Nov, 2017, 9:21:08 AM
    Author     : Bindu T
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Orders</title>
<style>
    body
    {
        background-image: url("bg/89.jpg");
        background-attachment: absolute;
        background-size: 100% 100%;
    }
    table{
    align-items: center;
    width:50%;
    border-spacing:3px;
    
}
td{
    text-align:left;
    border:1px;
    border-style: solid;
    border-width: 2px;
    border-color: crimson;
    padding:18px;
    
}
</style>
</head>
<body>
<h1 style="color: darkgreen">ORDERS LIST</h1>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","root");
Statement st=null;
ResultSet rs=null;
st=con.createStatement();
rs=st.executeQuery("select * from orders");
%>
<table>
<tr style="text-decoration: bold">
    <td><h5 style="color: black">USERNAME</h5></td>
    <td><h5 style="color: black">PRODUCT</h5></td> 
    <td><h5 style="color: black">TYPE</h5></td>
    <td><h5 style="color: black">COST</h5></td>
    <td><h5 style="color: black">DESCRIPTION</h5></td> 
    <td><h5 style="color: black">MATERIAL</h5></td>
</tr>
<%
while(rs.next())
{
%>
<% 
String USERNAME=rs.getString("username");
String snap=rs.getString("prod");
String type=rs.getString("type");
String cost=rs.getString("price");
String desc=rs.getString("desc");
String material=rs.getString("material");
%>
<tr style="font-style: bold">
<td style="color: darkblue;font-style: bold">
<%
out.println(USERNAME);
%>
</td>
<td style="color: cornsilk;font-style: bold">
<img src='img/<%=snap%>'width="100" height="100"/>
</td>
<td style="color: darkgreen;font-style: bold">
<%
out.println(type);
%>
</td>
<td style="color: darkgreen;font-style: bold">
<%
out.print(cost);
%>
</td>
<td style="color: darkgreen;font-style: bold">
<%
out.println(desc);
%>
</td> 
<td style="color: darkgreen;font-style: bold">
<%
out.println(material);
%>
</td> 
<%
}
%>
</tr>
</table>
<a href="home.jsp">Go to home page</a>
<br/>
<br/>
<a href="admin.jsp">Add new product</a>
</body>
</html>

