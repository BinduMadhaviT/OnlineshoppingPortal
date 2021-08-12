<%-- 
    Document   : buy
    Created on : 11 Nov, 2017, 12:22:18 PM
    Author     : Bindu T
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>
Registration_page!
</title>
<style>
.aaa
{
background-image:url("bg/4.jpg");
background-opacity:50%;
background-attachment:fixed;
background-size:100% 100%;
}
</style>
<script>
function validate()
{
var aa=document.getElementById("a");
var bb=document.getElementById("b");
var cc=document.getElementById("c");
var dd=document.getElementById("d");
var ee=document.getElementById("e");
if(aa.value=="" || bb.value=="" || cc.value=="" || dd.value=="" || ee.value=="")
{
alert("Some fields empty, Fill in all!!!");
return false;
}
else()
{
return true; 
}
}
</script>
</head>
<body class="aaa">
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>


        <%
         String img = request.getParameter("img");  
         String cost = request.getParameter("cost");
         String desc = request.getParameter("desc");
         String type = request.getParameter("type");
           %>
<form onsubmit="return validate()" action="successbuy.jsp?img=<%=img%>&cost=<%=cost%>&desc=<%=desc%>&type=<%=type%>" method="post">
<br/>
<br/>
<br/>
<br/>
<br/>
<label style="color:orange;">USERNAME:</label>
<select name="name">
    <option><%=session.getAttribute("userid")%></option>
</select>
<br/>
<br/>
<label style="color:orange;">PRODUCT:&nbsp;&nbsp;</label>
<select name="pro">
    <option><%=img%></option>
</select>
<br/>
<br/>
<label style="color:orange;">TYPE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
<select name="type">
    <option><%=type%></option>
</select>
<br/>
<br/>
<label style="color:orange;">COST:&nbsp;&nbsp;&nbsp;&nbsp; </label>
<select name="cost">
    <option><%=cost%></option>
</select>
<br/>
<br/>
<label style="color:orange;">DESCRIPTION:&nbsp;&nbsp;&nbsp;&nbsp; </label>
<select name="des">
    <option><%=desc%></option>
</select>
<br/>
<br/>
<label style="color:orange;">MATERIAL:&nbsp;&nbsp;&nbsp;&nbsp; </label>
<select name="hi">
    <option>Paper Quilling</option>
    <option>Silk Thread</option>
    <option>Origami</option>
</select>
    
<br/>
<br/>
<input type="submit" value="Buy"/>
<input type="reset" value="clear"/>
<a href="home.jsp" type="submit" style="color: #f44336">Go to home page</a>
<br/>
<br/>
</form>
</body>
</html>