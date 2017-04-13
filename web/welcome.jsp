<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/12
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:directive.page import="jsp.bean.Person"/>
<jsp:directive.page import="java.text.SimpleDateFormat"/>
<jsp:directive.page import="java.text.DateFormat"/>
<jsp:directive.page import="java.util.Date"/>
<%!
    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
%>
<%
    Person person = (Person) session.getAttribute("person") ;
    Date loginTime = (Date) session.getAttribute("loginTime");

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <fieldset>
        <legend>欢迎您</legend>
        <form action="session.jsp" method="get">
            <table>
                <tr>
                    <td>您的姓名：</td>
                    <td><%=person.getUsername()%></td>
                </tr>
                <tr>
                    <td>登录时间：</td>
                    <td><%=loginTime%></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="button" onclick="history.go(-1);" value="返回" class="button"></td>
                </tr>
            </table>
        </form>
    </fieldset>
</div>
</body>
</html>
