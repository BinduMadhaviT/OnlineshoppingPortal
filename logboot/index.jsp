<%-- 
    Document   : index
    Created on : 25 Nov, 2017, 10:23:58 AM
    Author     : Bindu T
--%>

<!DOCTYPE html>
<html lang="en" >
<head>    
<meta charset="UTF-8">
<title>LOGIN</title>
<script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
<link rel="stylesheet" href="normalize.min.css">
<link rel="stylesheet" href="css/style.css">     
<style>
form {
    border: 2px solid #f1f1f1;
}
input[type=text], input[type=password] {
    width: 100%;
    padding: 5px 5px;
    margin: 3px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 5px 35px;
    
    border: none;
    cursor: pointer;
}
button:hover {
    opacity: 0.8;
}
.cancelbtn {
    width: auto;
    padding: 5px 5px;
    background-color: #f44336;}
.container {
    padding: 5px;
}
span.psw {
    float: right;
    padding-top: 5px;}
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
a{
    vertical-align: 500;
}
.aaa
{
    background-image: url("../bg/88.jpg");
    background-attachment: fixed;
    background-size: 100% 100%;
}
.login
{
    color: blue;
    position: absolute;
    top:200px;
    left:1000px;
}
</style> 
</head>
<body class="aaa">
<div class="login">
<header class="header" style="color: blue">
    <span class="text">LOGIN</span>
<span class="loader" style="color: blue"></span>
</header> 
<form class="form" action="../successlog.jsp" method="get">  
<div class="container">   
<label><b>Username</b></label>
<input type="text" placeholder="Enter Username" name="name" required>
<br/>
<label><b>Password</b></label>
<input type="password" placeholder="Enter Password" name="password" required>
<br/>
<br/>
<label style="color:orange;">Type: </label>
<select name="i">
<option>User Type</option>
<option>ADMIN</option>
<option>USER</option>
</select>
<br/>
<br/>
<button type="submit">Login</button>
<br/>
<a href="../regboot/index.html">REGISTER</a>
</div>
<div class="container" style="background-color:#f1f1f1">
<button type="button" class="cancelbtn">Cancel</button>
</div>
</form>
</div>
<script src='min.js'></script>
<script  src="js/index.js"></script>
</body>
</html>
