<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/13
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String str = "Jane,Tomi,Andy,Hedrix,McCartney,Lenno,Court,Ben";
    request.setAttribute("str",str);
%>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        table {
            border-collapse: collapse;
            border: 1px #000000 solid;
        }
        td {
            border: 1px #000000 solid;
            text-align: center;
            width: 150px;
        }
    </style>
</head>
<body>
<table>
    <tr bgcolor="#cccccc">
        <td>varStatus.index</td>
        <td>name</td>
    </tr>
    <c:forTokens items="${str}"
                 delims="," var="item" varStatus="varStatus"
                 begin="1" end="7" step="2">
        <tr>
            <td>${ varStatus.index }</td>
            <td>${ item }</td>
        </tr>
    </c:forTokens>
</table>
</body>
</html>
