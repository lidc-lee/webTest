<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/14
  Time: 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<fmt:requestEncoding value="UTF-8"/>
<form action="${pageContext.request.requestURI}" method="post">
    关键字：<input name="key"/>
    <c:out value="${param.key}" default="请输入关键字"/>
    <br><br>
    <input type="submit" value="提交" class="button"/>
</form>
</body>
</html>
