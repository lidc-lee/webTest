<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/17
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        body, td, div {
            font-size: 12px;
        }
        .source {
            white-space: pre;
            width: 100%;
            height: 200px;
            overflow: scroll;
            border: 1px solid #999999;
            padding: 2px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<c:import var="file" url="sina.xml" charEncoding="UTF-8" />

<div class="source">
    <c:out value="${ file }" />
</div>

<x:parse var="doc" doc="${ file }"></x:parse>

新浪 RSS <br/>
版本：<x:out select="$doc/rss/@version" /> <br/>
标题：<x:out select="$doc/rss/channel/title" /> <br/>
来源：<x:out select="$doc/rss/channel/generator" /> <br/>
版权：<x:out select="$doc/rss/channel/copyright" /> <br/>
出版时间：<x:out select="$doc/rss/channel/pubDate" /> <br/>
链接地址：<x:out select="$doc/rss/channel/link"/> <br/>

</body>
</html>
