<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/17
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<fmt:setLocale value="zh_CN"/>

<fmt:bundle basename="i18n/resource">
    <fmt:message key="message_1"></fmt:message>
</fmt:bundle>

<fmt:bundle basename="i18n.param">
    <fmt:message key="hello">
        <fmt:param value="${pageContext.request.remoteAddr}"/>
        <fmt:param value="${pageContext.request.locale}"/>
        <fmt:param value="${pageContext.request.locale.displayLanguage}"/>
    </fmt:message>
</fmt:bundle>
</body>
</html>
