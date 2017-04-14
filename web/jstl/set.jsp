<%@ page import="jsp.bean.Person" %><%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/13
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<c:set var="totalCount" value="${ totalCount + 1 }" scope="application"></c:set>--%>
<%--<c:set var="count" value="${ count + 1 }" scope="session"></c:set>--%>
<%--本网站总访问人次：${ totalCount } <br/>--%>
<%--其中您的访问次数：${ count } <br/>--%>

<%--<c:set var="test" value="by value property"></c:set>--%>
<%--<c:set var="test">by body</c:set>--%>
<%--${test}--%>

<br/>
<br/>
<br/>
<br/>
<%
    request.setAttribute("person", new Person());
    request.setAttribute("map", new java.util.HashMap());
%>
<c:set target="${ person }" property="name" value="${ param.name }"/>
${ person.name }
<c:set target="${person}" property="age" value="${param.age}"/>
${person.age}

<c:set target="${ map }" property="name" value="${ param.name }" />
${ map.name }
</body>
</html>
