<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Danh sách nhân viên</title>

	<style>
		body{
			margin: auto;
			width: 900px;
		}
		table{
			background-color: darkseagreen;
			text-align: center;
			width: 500px;
			margin: auto;
		}
		h2{
			text-align:center;
		}
		tr:first-child{
			text-align: center;
			font-weight: bold;
			background-color: #C6C9C4;
		}
		p{
			margin-left: 196px;
		}
	</style>

</head>


<p>
<h2>List of Employees</h2>
<table>
	<tr>
		<td>NAME</td><td>Salary</td><td>SSN</td><td>Action</td>
	</tr>
	<c:forEach items="${employees}" var="employee">
		<tr>
			<td>${employee.name}</td>
			<td>${employee.salary}</td>
			<td><a href="<c:url value='/edit-${employee.ssn}-employee' />">${employee.ssn}</a></td>
			<td><a href="<c:url value='/delete-${employee.ssn}-employee' />">delete</a></td>
		</tr>
	</c:forEach>
</table>
<br/>
<p>Add New Employee: <a href="<c:url value='/new' />">Click here</a></p>
</body>
</html>