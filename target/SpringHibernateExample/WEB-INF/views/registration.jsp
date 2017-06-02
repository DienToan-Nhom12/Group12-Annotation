<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Employee Registration Form</title>

	<style>
		body{
			margin: auto;
			width: 900px;
		}
		table{
			width: 500px;
			margin: auto;
		}
		tr:last-child td input{
			margin-left: 105px;
			margin-top: 10px;
		}
		h2{
			text-align:center;
		}
		p{
			margin-left: 200px;
		}
		.error {
			color: #ff0000;
		}
	</style>

</head>

<body>

<h2>Registration Form</h2>

<form:form method="POST" modelAttribute="employee">
	<form:input type="hidden" path="id" id="id"/>
	<table>
		<tr>
			<td><label for="name">Name: </label> </td>
			<td><form:input path="name" id="name"/></td>
			<td><form:errors path="name" cssClass="error"/></td>
		</tr>
		<tr>
			<td><label for="salary">Salary: </label> </td>
			<td><form:input path="salary" id="salary"/></td>
			<td><form:errors path="salary" cssClass="error"/></td>
		</tr>

		<tr>
			<td><label for="ssn">SSN: </label> </td>
			<td><form:input path="ssn" id="ssn"/></td>
			<td><form:errors path="ssn" cssClass="error"/></td>
		</tr>

		<tr>
			<td colspan="3">
				<c:choose>
					<c:when test="${edit}">
						<input type="submit" value="Update"/>
					</c:when>
					<c:otherwise>
						<input type="submit" value="Register"/>
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
	</table>
</form:form>
<br/>
<p>Go back to <a href="<c:url value='/list' />">List of All Employees</a></p>
</body>
</html>