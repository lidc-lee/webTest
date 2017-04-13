<%@ page import="java.util.Locale" %>
<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/11
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Locale locale = request.getLocale();//获取用户的本地信息
    Calendar calendar = Calendar.getInstance(locale);//获取用户所在地的时间
    int hour = calendar.get(Calendar.HOUR_OF_DAY);//获取小时
    String getting = "";
    if (hour <= 6){
        getting = "凌晨好，您该睡觉了";
    }else if (hour <= 9){
        getting = "早上好";
    }else if (hour <= 12){
        getting = "上午好";
    }else if (hour <= 18){
        getting = "下午好";
    }else if (hour <= 24){
        getting = "晚上好";
    }else {

    }
%>
<html>
<head>
    <title>欢迎页面</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
</head>
<body>
    <table>
        <tr>
            <td><%=getting%></td>
        </tr>
    </table>
</body>
</html>
