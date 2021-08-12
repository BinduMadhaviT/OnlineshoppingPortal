<%-- 
    Document   : register
    Created on : 27 Oct, 2017, 5:33:15 PM
    Author     : Bindu T
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>
Settings
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
</head>
<body class="aaa">
    <h1>PERSONAL DETAILS</h1>
<form onsubmit="return true" action="successset.jsp" method="post">
<br/>
<br/>
<br/>

<br/>
<label style="color:orange;">USERNAME:</label> 
<input id="a" type="text" name="name" placeholder="Enter Username"/>
<br/>
<br/>
<label style="color:orange;">CONTACT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
<input id="b" type="tel" name="ph_no" placeholder="Enter phone_no"/>
<br/>
<br/>
<label style="color:orange;">EMAIL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
<input id="c" type="email" name="email" placeholder="Enter email"/>
<br/>
<br/>
<label style="color:orange;">Address_line1</label>
<input id="d" type="text" name="line1" placeholder="#no, Cross" &nbsp;&nbsp;/>
<br/>
<br/>
<label style="color:orange;">Address_line2</label>
<input id="e" type="text" name="line3" placeholder="Main, Landmark" &nbsp;&nbsp;/>
<br/>
<br/>
<label style="color:orange;">GENDER:</label> 
<input id="f" type="radio" name="gender" value="male"/><label>male</label>
<input id="f" type="radio" name="gender" value="male"/><label>female</label>
<br/>
<br/>
<label style="color:orange;">STATE:</label>
<input id="g" type="text" name="state" placeholder="State"/>
<br/>
<br/>
<label style="color:orange;">COUNTRY:</label>
<input id="h" type="text" name="country" placeholder="Country"/>
<br/>
<br/>
<input type="submit" value="Save"/>
<input type="reset" value="clear"/>
<br/>
<br/>
<a href="home.jsp" type="submit" style="color:cornsilk">Return to home</a>
<br/>
<br/>
</form>
</body>
</html>