<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.jfsd.sdp.studentmanagement.model.Employee"%>
<%
   Employee  emp = (Employee) session.getAttribute("employee");
   if(emp==null)
   {
	   response.sendRedirect("empsessionexpiry");
	   return;
   }
%>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Home</title>
          
</head>
<body>
<%@include file="empnavbar.jsp" %>
Welcome <%=emp.getName() %>

</body>
</html>