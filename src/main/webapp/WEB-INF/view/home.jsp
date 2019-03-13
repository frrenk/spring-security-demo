<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Hello there!</title>
</head>
<body>

Welcome!
<hr>

<p>

User: <security:authentication property="principal.username"/>
<br>
Role: <security:authentication property="principal.authorities"/>

</p>

<hr>

<p>
    <a href="${pageContext.request.contextPath}/managerPage">Leadership Meeting</a>
    (role restricted)
</p>

<p>
    <a href="${pageContext.request.contextPath}/adminPage">System Settings</a>
    (role restricted)
</p>

<!--add a logout button -->

<form:form  action="${pageContext.request.contextPath}/logout" method="post">
    <input type="submit" value="Logout"/>
</form:form>
</body>
</html>