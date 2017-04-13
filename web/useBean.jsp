<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/12
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="#">
</head>
<body>
<br>
<%--声明Person对象 person--%>
<jsp:useBean id="person" class="jsp.bean.Person" scope="page"/>
<%--设置person的所有属性 ，值从request取得--%>
<jsp:setProperty name="person" property="*"/>
<div align="center">
    <form action="method.jsp" method="get">
        <fieldset style="width: 300px;">
            <legend>请填写Person信息</legend>
            <table align="center" width="400">
                <tr>
                    <td align="right" style="font-weight: bold;">姓名：</td>
                    <td>
                        <%--获取person的name属性--%>
                        <jsp:getProperty name="person" property="name"/>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="font-weight: bold;">年龄：</td>
                    <td>
                        <%--获取person的name属性--%>
                        <jsp:getProperty name="person" property="age"/>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="font-weight: bold;">性别：</td>
                    <td>
                        <%--获取person的name属性--%>
                        <jsp:getProperty name="person" property="sex"/>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="font-weight: bold;"></td>
                    <td>
                       <input type="button" onclick="history.go(-1);" value="返回" class="button">
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>
