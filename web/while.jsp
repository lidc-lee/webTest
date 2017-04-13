<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/12
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<String> list = new ArrayList<>();
    list.add("uiui");
    list.add("jjjj");
    list.add("ldc");
    list.add("lee");
    Iterator it = list.iterator();
    while (it.hasNext()){
%>
        <%= it.next()%><br/>
<%
    }
%>
</body>
</html>
