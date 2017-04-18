<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/17
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:import url="sina.xml" var="file" charEncoding="UTF-8"/>
<x:parse var="doc" doc="${file}"></x:parse>
<x:forEach select="$doc/rss/channel/item" var="node" varStatus="status">
    ${status.count}
    <a href="<x:out select="$node/link"/>" target="_blank"><x:out select="$node/title"/></a>&nbsp;&nbsp;
    <x:out select="$node/pubDate"/><br>
    <x:out select="$node/description"/><br>
</x:forEach>
</body>
</html>
