<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action = "successEdit.form" method = "post" commandName="reg">
       	 <table border=1px>
       	 <tr>
          <th>ID</th>
           <td><input type = "text" value=<%= request.getAttribute("id") %> name="id" readonly="readonly"/></td>
          </tr>
          <tr>
          <th>USER NAME</th>
           <td><input type = "text" name="userName"/></td>
          </tr>
          <tr>
          <th>PASSWORD</th>
           <td><input type="password" name="password"/></td>
          </tr>
          <tr>
          <th>Qualification</th>
           <td><input name="qualification"/></td>
          </tr>
          <tr>
          <th>EMAIL</th>
           <td><input name="email"/></td>
          </tr>
          <tr>
          <th>MOBILE</th>
           <td><input name="mobile"/></td>
          </tr>
          <tr>
          <th>Experience</th>
           <td><input name="experience"/></td>
          </tr>
        </table>
         <input type="submit" value="submit"/>
       </form:form>
</body>
</html>