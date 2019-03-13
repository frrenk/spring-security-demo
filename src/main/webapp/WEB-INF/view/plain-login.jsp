<%--
  Created by IntelliJ IDEA.
  User: Ja
  Date: 2019-03-13
  Time: 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Custom Login Page</title>
    <style> .failed {color:red;}</style>
</head>

<body>
<h3>My Custom Login Page</h3>
<form:form action="${pageContext.request.contextPath}/authenticateTheUser"
           method="post">

    <c:if test="${param.error !=null}">

        <i class="failed">Invalid username/password.</i>
    </c:if>

    <p>
        User name: <input type="text" name="username"/>
    </p>
    <p>
        Password: <input type="password" name="password"/>
    </p>

    <input type="submit" value="Login"/>
</form:form>

</body>

</html>
