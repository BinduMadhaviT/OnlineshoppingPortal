<%-- 
    Document   : home
    Created on : 28 Oct, 2017, 12:45:45 AM
    Author     : Bindu T
--%>
<!DOCTYPE html>
<html>
<head>
<style>
    .aaa
    {
        background-image:url("bg/6.JPG");
        background-attachment: fixed;
        background-opacity:50%;
        background-size:100% 100%;
    }
* {
    box-sizing: border-box;
}

body {
    margin: 0;
}

.navbar {
    overflow: hidden;
    background-color: darkblue;
    font-family: Arial;
}

.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: darkblue;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: transparent;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: cornsilk;
    width: 100%;
    left: 0;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content .header {
    background: orange;
    padding: 16px;
    color: white;
}

.dropdown:hover .dropdown-content {
    display: block;
}

/* Create three equal columns that floats next to each other */
.column {
    float: left;
    width: 33.33%;
    padding: 10px;
    background-color: transparent;
    height: 250px;
}

.column a {
    float: none;
    color: black;
    padding: 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}
.column1 a {
    float: none;
    color: black;
    padding: 15px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.column a:hover {
    background-color: transparent;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
</style>
</head>
<body class="aaa">
<div class="navbar">
  <a href="#home">Home</a>
  <div class="dropdown">
      <button class="dropbtn">CHOOSE
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <div class="header">
        <h2>Product menu</h2>
      </div>   
      <div class="row">
        <div class="column">
          <h3>Paper Quilling</h3>
            <a href="paperquilling.jsp#A">Earrings</a>
            <a href="paperquilling.jsp#D">Sets</a>
        </div>
        <div class="column">
          <h3>Silk Thread</h3>
          <a href="SilkThread.jsp#Z">Earrings</a>
          <a href="SilkThread.jsp#D">Necklaces</a>
          <a href="SilkThread.jsp#E">Bangles</a>
        </div>
        <div class="column">
          <h3>Gifts</h3>
          <a href="Origami.jsp">Photo Frames</a>
          <a href="Origami.jsp">PaperQuilling gift articles</a>
          <a href="Origami.jsp">Origami gift items</a>
        </div>
      </div>
    </div>
  </div>
  <div class="dropdown">
      <button class="dropbtn">${userid}
      <i class="fa fa-caret-down"></i>
    </button>
       <div class="dropdown-content">
      <div class="column1">
          <a href="settings.jsp">Settings</a>
          <a href="logout.jsp">Logout</a>
      </div> 
      </div>
      </div>
</div>
</body>
</html>
