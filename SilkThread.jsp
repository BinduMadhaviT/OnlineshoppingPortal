<%-- 
    Document   : SilkThread
    Created on : 28 Oct, 2017, 12:45:45 AM
    Author     : Bindu T
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    
    
<title>SILKTHREAD</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="min1.css">
  
  
<style>
.aaa
      {
          background-color: black;
          background-opacity:100%;
          background-attachment:fixed;
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

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: transparent;
}
div
{
    font-style:italic;
    color:cornsilk;
}

</style>

</head>


<body class="aaa">

<div class="navbar">
  <a href="#home">STUDS</a>
  <a href="#B">JHUMKAS</a>
  <a href="#C">BANGLES</a>
   <a href="#D">NECKLACES</a>
    <a href="#E">SET</a>
</div>

    
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
       

 <%
 java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","root");
 Statement st=null;
 ResultSet rs=null;
 %>
 
 
<div id="A"> 
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
st=con.createStatement();
rs=st.executeQuery("select * from silk where type='Studs'");
while(rs.next())
{%>
</br></br>
<%
String IMAGES=rs.getString("imgs");
String type=rs.getString("type");
String price=rs.getString("cost");
String desc=rs.getString("desc");
%>
<img src='img/<%=rs.getString(1)%>'width="300" height="300"/>
<br/>
<a href="buy.jsp?img=<%=IMAGES%>&cost=<%=price%>&desc=<%=desc%>&type=<%=type%>">Buy</a>
</br>
<%
out.println();%></br>
<%
}
%>
</div>

    
<div id="B"> 
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
st=con.createStatement();
rs=st.executeQuery("select * from silk where type='Jhumkas'");
while(rs.next())
{%>
</br></br>
<%
String IMAGES=rs.getString("imgs");
String type=rs.getString("type");
String price=rs.getString("cost");
String desc=rs.getString("desc");
%>
<img src='img/<%=rs.getString(1)%>'width="300" height="300"/>
<br/>
<a href="buy.jsp?img=<%=IMAGES%>&cost=<%=price%>&desc=<%=desc%>&type=<%=type%>">Buy</a>
</br>
<%
out.println();%></br>
<%
}
%>
</div>
    
<div id="C"> 
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
st=con.createStatement();
rs=st.executeQuery("select * from silk where type='Bangles'");
while(rs.next())
{%>
</br></br>
<%
String IMAGES=rs.getString("imgs");
String type=rs.getString("type");
String price=rs.getString("cost");
String desc=rs.getString("desc");
%>
<img src='img/<%=rs.getString(1)%>'width="300" height="300"/>
<br/>
<a href="buy.jsp?img=<%=IMAGES%>&cost=<%=price%>&desc=<%=desc%>&type=<%=type%>">Buy</a>
</br>
<%
out.println();%></br>
<%
}
%>
</div>
    
<div id="D"> 
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
st=con.createStatement();
rs=st.executeQuery("select * from silk where type='Necklaces'");
while(rs.next())
{%>
</br></br>
<%
String IMAGES=rs.getString("imgs");
String type=rs.getString("type");
String price=rs.getString("cost");
String desc=rs.getString("desc");
%>
<img src='img/<%=rs.getString(1)%>'width="300" height="300"/>
<br/>
<a href="buy.jsp?img=<%=IMAGES%>&cost=<%=price%>&desc=<%=desc%>&type=<%=type%>">Buy</a>
</br>
<%
out.println();%></br>
<%
}
%>
</div>

<div id="E"> 
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
st=con.createStatement();
rs=st.executeQuery("select * from silk where type='Set'");
while(rs.next())
{%>
</br></br>
<%
String IMAGES=rs.getString("imgs");
String type=rs.getString("type");
String price=rs.getString("cost");
String desc=rs.getString("desc");
%>
<img src='img/<%=rs.getString(1)%>'width="300" height="300"/>
<br/>
<a href="buy.jsp?img=<%=IMAGES%>&cost=<%=price%>&desc=<%=desc%>&type=<%=type%>">Buy</a>
</br>
<%
out.println();%></br>
<%
}
%>
</div>
</body>
</html>

