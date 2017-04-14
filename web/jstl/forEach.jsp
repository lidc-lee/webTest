<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/13
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        div {
            float: left;
            padding: 3px;
            width: 50px;
            text-align: center;
            border: 1px solid #000000;
        }
        table {
            border-collapse: collapse;
            border: 1px solid #000000;
        }
        td {
            border: 1px solid #000000;
            padding: 2px;
        }
        .header {
            background: #DDDDDD;
            text-align: center;
        }
    </style>
</head>
<body>
<%--<c:forEach var="num" begin="2" end="100" step="4">--%>
    <%--<div>${ num }</div>--%>
<%--</c:forEach>--%>

<br/>
<br/>
<br/>


<table>
    <tr>
        <td class="header">Header Name</td>
        <td class="header">Header Value</td>
    </tr>
    <c:forEach var="headerName" items="${ pageContext.request.headerNames }">
        <tr>
            <td>${ headerName }</td>
            <td>${ header[headerName] }</td>
        </tr>
    </c:forEach>
</table>

<br/>
<br/>
<br/>


<%--<table>--%>
    <%--<tr>--%>
        <%--<td class="header">Header Name</td>--%>
        <%--<td class="header">Header Value</td>--%>
    <%--</tr>--%>
    <%--<c:forEach var="item" items="${ header }">--%>
        <%--<tr>--%>
            <%--<td>${ item.key }</td>--%>
            <%--<td>${ item.value }</td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>
<%--</table>--%>
</body>
</html>
