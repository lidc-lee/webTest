<%@ page import="java.util.Map" %>
<%@ page import="java.util.TimeZone" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Timer" %><%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/14
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
    Map<String,TimeZone> map = new HashMap<>();//时区
    //获取所有的时区
    for (String ID : TimeZone.getAvailableIDs()){
        map.put(ID,TimeZone.getTimeZone(ID));
    }
    request.setAttribute("timeZoneIDs",TimeZone.getAvailableIDs());
    request.setAttribute("timeZone",map);
%>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        table, td, tr {font-size: 12px; }
        table {
            border-collapse: collapse;
            border: 1px solid #000000;
        }
        td, th {
            border: 1px solid #000000;
            padding: 2px;
            padding-left: 10px;
            padding-right: 10px;
        }
        .title {
            background: #EEEEEE;
        }
        .title td {
            text-align: center;
        }
    </style>
</head>
<body>
<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
<fmt:setLocale value="zh_CN"/>
现在时刻：<%=TimeZone.getDefault().getDisplayName()%>
<fmt:formatDate value="${date}" type="both"/><br>

<table>
    <tr>
        <td>时区ID</td>
        <td>时区</td>
        <td>现在时间</td>
        <td>时差</td>
    </tr>
    <c:forEach var="ID" items="${timeZoneIDs}" varStatus="status">
        <tr>
            <td>${ID}</td>
            <td>${timeZone[ID].displayName}</td>
            <td>
                <fmt:timeZone value="${ID}">
                    <fmt:formatDate value="${date}" type="both" timeZone="${ID}"/>
                </fmt:timeZone>
            </td>
            <td>
                ${timeZone[ID].rawOffset/60/60/1000}
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
