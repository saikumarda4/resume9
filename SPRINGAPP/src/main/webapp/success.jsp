<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List , com.naveen.pojo.Employee" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
<h1>success</h1>
<a href="profile.jsp">profile</a>
<% 
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
%>
<center>
<%

Employee emp =(Employee)request.getAttribute("details");
session.setAttribute("employee", emp);
out.print("<table border=1px>");
out.print("<tr><th>ID</th><td>"+emp.getId()+"</td></tr>");
out.print("<tr><th>USERNAME</th><td>"+emp.getUserName()+"</td></tr>");
out.print("<tr><th>EXPERIENCE</th><td>"+emp.getExperience()+"</td></tr>");
out.print("<tr><th>QUALIFICATION</th><td>"+emp.getQualification()+"</td></tr>");
out.print("<tr><th>EMAIL</th><td>"+emp.getEmail()+"</td></tr>");
out.print("<tr><th>MOBILE</th><td>"+emp.getMobile()+"</td></tr>");

out.print("<tr><th><a href = edit.form?id="+emp.getId()+">EDIT</th><th><a href = delete.form?id="+emp.getId()+">DELETE</th>");

out.print("</table>");
%>

</center>  
<form action = "findById.form" method="post">
<input type="text" name="id">
<input type="submit" value="submit">
</form>
<div id="d1">
	<a href="logout.jsp">LOGOUT</a>
</div>
<%-- <table border=1px>
          <tr>
          <th>USER NAME</th>
          </tr>
          <tr>
          <th>AGE</th>
          </tr>
          <tr>
          <th>EMAIL</th>
          </tr>
          <tr>
          <th>MOBILE</th>
          </tr>
          <tr>
          <th>PINCODE</th>
          </tr>
          
          <c:forEach items="${details}" var="emp">
          
          	<td><c:out value="${emp.userName}"></c:out></td>
          	<td><c:out value="${emp.age}"></c:out></td>
          	<td><c:out value="${emp.email}"></c:out></td>
          	<td><c:out value="${emp.mobile}"></c:out></td>
          	<td><c:out value="${emp.pincode}"></c:out></td>
          	
          
          
          </c:forEach>
   </table> --%>

</body>
</html>