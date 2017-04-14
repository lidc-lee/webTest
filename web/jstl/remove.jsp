<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/14
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setAttribute("somemap", new HashMap<>());
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:remove var="somemap"/>
${somemap == null ? "somemap已被删除":"somemap没被删除"}
</body>
</html>
