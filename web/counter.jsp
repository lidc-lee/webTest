<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/12
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<br>
<jsp:useBean id="counter" class="jsp.bean.Counter" scope="session"></jsp:useBean>
<jsp:useBean id="totalCounter" class="jsp.bean.Counter" scope="application"/>
<div align="center">
    <form action="method.jsp" method="get">
        <fieldset style="width: 300px">
            <legend>计数器</legend>
            <table align="center" width="400">
                <tr>
                    <td width="150" align="right" style="font-weight: bold;">您的访问次数：</td>
                    <td><jsp:getProperty name="counter" property="count"/>次</td>
                </tr>
                <tr>
                    <td width="150" align="right" style="font-weight: bold;">总共访问次数：</td>
                    <td><jsp:getProperty name="totalCounter" property="count"/>次</td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>
