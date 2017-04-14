<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/13
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
    <c:when test="${param.action}">
        when 标签输出
    </c:when>
    <c:otherwise>
        otherwise 标签输出
    </c:otherwise>
</c:choose>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
