<%@ page import="jsp.bean.Person" %><%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/14
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setAttribute("person",new Person());
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:catch var="e">
    <c:set target="${person}" property="name" value="ldc"/>
    ${person.name}
</c:catch>
<c:if test="${e != null}">
    程序抛出异常
    原因：${e.message}
</c:if>
</body>
</html>
