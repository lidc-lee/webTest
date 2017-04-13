<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/12
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isErrorPage="true"%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    if ("POST".equals(request.getMethod())){
        Cookie usernameCookie = new Cookie("username",request.getParameter("username"));
        Cookie visitCookie = new Cookie("visit","0");
        response.addCookie(usernameCookie);
        response.addCookie(visitCookie);
        response.sendRedirect(request.getContextPath()+"/cookie.jsp");
        return;
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center" style="margin: 10px">
    <fieldset>
        <legend>登录</legend>
        <form action="login.jsp" method="post">
            <table>
                <%--<tr>--%>
                    <%--<td></td>--%>
                    <%--<td>--%>
                        <%--<span style="color: red;"><%=exception.getMessage()%></span>--%>
                    <%--</td>--%>
                <%--</tr>--%>
                <tr>
                    <td>账号：</td>
                    <td><input type="text" name="username" style="width: 200px;"/></td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td><input type="password" name="password" style="width: 200px;"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="登  录" class="button"/></td>
                </tr>
            </table>
        </form>
    </fieldset>
</div>
</body>
</html>
