<%-- 
    Document   : display
    Created on : 9 Nov, 2017, 9:13:14 PM
    Author     : Bindu T
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>USERS</title>
<style>
    body
    {
        background: url("bg/79.jpg");
        background-attachment: fixed;
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
<h1 style="color: darkgreen">USERS LIST</h1>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","root");
Statement st=null;
ResultSet rs=null;
st=con.createStatement();
rs=st.executeQuery("select usname,country,state,phoneNo,email,Address_line1,Address_line3 from user R, register U where R.usname=U.uname and U.type='USER'");
%>
<table>
<tr style="text-decoration: bold">
    <td><h5 style="color: blue">USERNAME</h5></td>
    <td><h5 style="color: blue">CONTACT</h5></td>
    <td><h5 style="color: blue">EMAIL</h5></td>
    <td><h5 style="color: blue">COUNTRY</h5></td> 
    <td><h5 style="color: blue">STATE</h5></td>
     <td><h5 style="color: blue">ADDRESS</h5></td>
</tr>
<%
while(rs.next())
{
%>
</br></br>
<% 
String USERNAME=rs.getString("usname");
String phno=rs.getString("phoneNo");
String mailid=rs.getString("email");
String country=rs.getString("country");
String state=rs.getString("state");
String ad1=rs.getString("Address_line1");
String ad2=rs.getString("Address_line3");
%>
<tr style="font-style: bold">
<td style="color: cornsilk;font-style: bold">
<%
out.println(USERNAME);
%>
</td>
<td style="color: cornsilk;font-style: bold">
<%
out.println(phno);
%>
</td>
<td style="color: cornsilk;font-style: bold">
<%
out.println(mailid);
%>
</td>
<td style="color: cornsilk;font-style: bold">
<%
out.print(country);
%>
</td>
<td style="color: cornsilk;font-style: bold">
<%
out.println(state);
%>
</td>
<td style="color: cornsilk;font-style: bold">
<%
out.println(ad1);
out.println(ad2);
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

