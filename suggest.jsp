<%-- 
    Document   : suggest
    Created on : 25 Nov, 2017, 9:04:01 AM
    Author     : Bindu T
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en-US">
<head>
<title>PROJECT</title>
</head>
<style>
table,th,td{border:1px solid blue;}
table#yb{width:50%;}
th,td{padding:15px;}
th{text-align:center;}
table{border-spacing:5px;}
input {
    background-color: ghostwhite;
    color: black;
    padding: 8px 40px;
    
    border: none;
    cursor: pointer;
}
</style>
<body style="background:orange;">
    <form onsubmit="return true" action="successsug.jsp" method="post">
<table id="yb" style="text-align:left;">
<caption style="font-size:200%;">REVIEW</captions>
<tr style="color:Blue;font-family:algerian;background:White;text-align:left;">
<th><b>Username:</b></th>
<td><input type="text"  name="name" placeholder="Username"/></td>
</tr>
<tr style="color:Blue;font-family:algerian;background:White;text-align:left;">
<th><b>Suggestion:</b></th>
<td><input type="text"  name="sugg" placeholder="Enter suggestion"/></td>
</tr>
<tr style="color:Blue;font-family:algerian;background:White;text-align:left;">
<th><b>Phone No:</b></th>
<td><input type="tel"  name="phno" placeholder="PhoneNo"/></td>
</tr>
<tr style="color:Blue;font-family:algerian;background:White;text-align:left;">
<th><b>Email id:</b></th>
<td><input type="email"  name="id" placeholder="Enter email"/></td>
</tr>
</table>
        <input type="submit" value="suggest">
        <input type="reset" value="clear">
    </form>
</body>
</html>

