<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/17
  Time: 10:16
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
        table {
            border-collapse: collapse;
            border: 1px solid #999999;
        }
        th {
            border: 1px solid #999999;
            padding: 2px;
            text-align: center;
            padding-left: 10px;
            padding-right: 10px;
            background: #CCCCCC;
        }
        td {
            border: 1px solid #999999;
            padding: 2px;
            text-align: center;
            padding-left: 10px;
            padding-right: 10px;
        }
    </style>
</head>
<body>
<c:set var="data">
    <students>
        <student>
            <id>1</id>
            <name>张三</name>
            <email>zhangsan@host.com</email>
            <description>Software Engine</description>
        </student>
        <student>
            <id>2</id>
            <name>李四</name>
            <email>lisi@somehost.com</email>
            <description>Sales</description>
        </student>
        <student>
            <id>3</id>
            <name>王五</name>
            <email>wangwu@someweb.com</email>
            <description>Manager</description>
        </student>
    </students>
</c:set>

<c:set var="template">
    <?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
        <xsl:template match="students">
            <table>
                <tr>
                    <th>编号</th>
                    <th>姓名</th>
                    <th>电子邮件</th>
                    <th>描述</th>
                </tr>
                <xsl:for-each select="student">
                    <tr>
                        <td><xsl:value-of select="id" /></td>
                        <td><xsl:value-of select="name" /></td>
                        <td><xsl:value-of select="email" /></td>
                        <td><xsl:value-of select="description" /></td>
                    </tr>
                </xsl:for-each>
            </table>
        </xsl:template>
    </xsl:stylesheet>
</c:set>

<x:transform doc="${data}" xslt="${template}"></x:transform>
</body>
</html>
