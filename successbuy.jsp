<%-- 
    Document   : successbuy
    Created on : 11 Nov, 2017, 7:52:46 PM
    Author     : Bindu T
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>
    CONFIRM
    </title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%  
String uname = request.getParameter("name");  
String prod = request.getParameter("pro");
String price= request.getParameter("cost");
String desc = request.getParameter("des");
String type = request.getParameter("type");
String mate = request.getParameter("hi");
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into orders values('"+uname+"','"+type+"','"+price+"','"+desc+"','"+prod+"','"+mate+"')");
String Query="call auction.fun1()";
//CallableStatement stc=con.prepareCall("{call fun(?,?,?,?,?,?,?,?,?,?)}");
PreparedStatement psm=con.prepareStatement(Query);
ResultSet rs=psm.executeQuery();
//int count=stc.executeUpdate();
if(rs.next())
{
out.print("Order Placed!"+"<br/><br/><a href='home.jsp'>Buy more???</a>");
//response.sendRedirect("index.jsp");    
}
else
{
out.println("Order Cannot be placed, Try again!");
}
%>            
</body>
</html>