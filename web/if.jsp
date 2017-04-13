<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/12
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String param = request.getParameter("param");
    if ("1".equals(param)){
%>
    关关
<%
    }else if ("2".equals(param)){
%>
蒹葭
<%
    }else if ("3".equals(param)){
%>
子衿
<%
    }else {

    }
%>
</body>
</html>
