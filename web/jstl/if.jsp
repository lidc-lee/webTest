<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/13
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        body, td, input, div, span {font-size: 12px; }
    </style>
</head>
<body>
<fieldset>

    <c:if test="${ param.action == 'add' }">
        <legend>添加操作</legend>
        <table>
            <tr>
                <td>帐号</td>
                <td><input type="text" name="login" /></td>
            </tr>
            <tr>
                <td>真实姓名</td>
                <td><input type="text" name="name" /></td>
            </tr>
        </table>
    </c:if>
    <c:if test="${ param.action == 'edit' }">
        <legend>修改操作</legend>
        <table>
            <tr>
                <td>帐号</td>
                <td><c:out value="${ param.login }" default="Param login required. " /></td>
            </tr>
            <tr>
                <td>真实姓名</td>
                <td><input type="text" name="name" /></td>
            </tr>
        </table>
    </c:if>

    <table><tr><td><input type="submit" /></td></tr></table>


</fieldset>
</body>
</html>
