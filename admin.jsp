<%-- 
    Document   : admin
    Created on : 6 Nov, 2017, 5:17:19 PM
    Author     : Bindu T
--%>


<!DOCTYPE html>
<html>
<head>
<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

div.tab {
    float: left;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
    width: 30%;
    height: 300px;
}
div.tab button {
    display: block;
    background-color: inherit;
    color: black;
    padding: 22px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
    font-size: 17px;
}
div.tab button:hover {
    background-color: #ddd;
}
div.tab button.active {
    background-color: #ccc;
}
.tabcontent {
    float: left;
    padding: 0px 12px;
    border: 1px solid #ccc;
    width: 70%;
    border-left: none;
    height: 300px;
}
</style>
<script>
function fun1()
{
var aa=document.getElementById("a");
var bb=document.getElementById("b");
var cc=document.getElementById("c");
var dd=document.getElementById("d");
if(aa.value=="" || bb.value=="" || cc.value=="" || dd.value=="")
{
    alert("Update all details");
    return false;
}
else()
{
alert("Product added!");
return true; 
}
}

</script>    
</head>
<body style="background-color: orange">
<p>Click to upload</p>
<div class="tab" style="background-color: burlywood">
  <button class="tablinks" onclick="openItem(event, 'paper')" id="defaultOpen">PAPERQUILLING</button>
  <button class="tablinks" onclick="openItem(event, 'silk')">SILKTHREAD</button>
   <button class="tablinks" onclick="openItem(event, 'gifts')">GIFTS</button>
</div>
<div id="paper" class="tabcontent">
<form onsubmit="return fun1()" action="uppaper.jsp" method="post">
<style>
#yb{
    align-items: center;
    width:50%;
     border-spacing:3px;  
}
td{
    text-align:left;
    border:1px solid blue;
    padding:18px;
}
</style>
<table id="yb">
<tr>    
<td><label style="color:black;">IMAGE&nbsp;&nbsp;</label></td>
<td><input id="a" type="file" name="pic"/></td>
</tr>
<tr>
<td><label style="color:black;">COST&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
<td><input id="b" type="number" name="cost" placeholder="Enter cost"/></td>
</tr>
<tr>
<td><label style="color:black;">CATEGORY:</label></td>
<td><select id="c" name="type">
<option>Studs</option>
<option>Hangings</option>
<option>Jhumkas</option>
<option>Set</option>
</select></td>
</tr>
<tr>
<td><label style="color:black;">Description:</label></td>
<td><input id="d" type="text" name="desc" placeholder="Enter Product description" &nbsp;&nbsp;/></td>
</tr>
</table>
<input type="submit" value="Save"/>
<input type="reset" value="clear"/>
</form>
</div>

<div id="silk" class="tabcontent">
 <form onsubmit="return fun1()" action="upsilk.jsp" method="post">
     <style>
#yb{
    align-items: center;
    width:50%;
     border-spacing:3px; 
}
td{
    text-align:left;
    border:1px solid blue;
    padding:18px;
}
</style>
<table id="yb">
<tr>    
<td><label style="color:black;">IMAGE&nbsp;&nbsp;</label></td>
<td><input id="a" type="file" name="pic"/></td>
</tr>
<tr>
<td><label style="color:black;">COST&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
<td><input id="b" type="number" name="cost" placeholder="Enter cost"/></td>
</tr>
<tr>
<td><label style="color:black;">CATEGORY:</label></td>
<td><select id="c" name="type">
<option>Studs</option>
<option>Jhumkas</option>
<option>Bangles</option>
<option>Necklaces</option>
<option>Set</option>
</select></td>
</tr>
<tr>
<td><label style="color:black;">Description:</label></td>
<td><input id="d" type="text" name="desc" placeholder="Enter Product description" &nbsp;&nbsp;/></td>
</tr>
</table>
<input type="submit" value="Save"/>
<input type="reset" value="clear"/>
</form>
</div>
<div id="gifts" class="tabcontent">
 <form onsubmit="return fun1()" action="upgifts.jsp" method="post">
     <style>
#yb{
    align-items: center;
    width:50%;
     border-spacing:3px;
}
td{
    text-align:left;
    border:1px solid blue;
    padding:18px;
}
</style>
<table id="yb">
<tr>    
<td><label style="color:black;">IMAGE&nbsp;&nbsp;</label></td>
<td><input id="a" type="file" name="pic"/></td>
</tr>
<tr>
<td><label style="color:black;">COST&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
<td><input id="b" type="number" name="cost" placeholder="Enter cost"/></td>
</tr>
<tr>
<td><label style="color:black;">CATEGORY:</label></td>
<td><select id="c" name="type">
<option>Photo frames</option>
<option>Gift articles</option>
<option>Origami</option>
</select></td>
</tr>
<tr>
<td><label style="color:black;">Description:</label></td>
<td><input id="d" type="text" name="desc" placeholder="Enter Product description" &nbsp;&nbsp;/></td>
</tr>
</table>
<input type="submit" value="Save"/>
<input type="reset" value="clear"/>
</form>
</div>
<div>
<a href="home.jsp" style="color: royalblue">Go to Home Page</a>
<br/>
<br/>
<a href="display.jsp" style="color: royalblue">View registered users</a>
<br/>
<a href="diplayorder.jsp" style="color: royalblue">View orders</a>
</div>
<script>
function openItem(evt, ItemName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(ItemName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
     
</body>
</html> 
