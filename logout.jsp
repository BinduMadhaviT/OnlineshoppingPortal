<%-- 
    Document   : logout
    Created on : 10 Nov, 2017, 7:38:49 PM
    Author     : Bindu T
--%>
    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body>
<% 
    session.getAttribute("userid");
    session.invalidate();
%>
<%
    response.sendRedirect("logboot/index.jsp");
%>
</html>
