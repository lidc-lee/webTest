<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/12
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="login.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");
    String username = "";
    int visitTimes = 0;
    Cookie[] cookies = request.getCookies();//所有的cookie
    for (int i=0;cookies != null && i<cookies.length;i++){
        Cookie cookie = cookies[i];
        if ("username".equals(cookie.getName())){
            username = cookie.getValue();
        }else if ("visit".equals(cookie.getName())){
            visitTimes = Integer.parseInt(cookie.getValue());
        }
    }
    if (username == null || username.trim().equals("")){
//        没有找到用户名，则转到登录界面
        throw new Exception("您还没有登录，请先登录");
    }
    Cookie visitTimesCookie = new Cookie("visit",String.valueOf(++visitTimes));
    response.addCookie(visitTimesCookie);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center" style="margin: 10px">
    <fieldset>
        <legend>
            登录信息
        </legend>
        <form action="login.jsp" method="post">
            <table>
                <tr>
                    <td>您的账号：</td>
                    <td><%=username%></td>
                </tr>
                <tr>
                    <td>登录次数：</td>
                    <td><%=visitTimes%></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="button" value="刷新" onclick="location='<%=request.getRequestURI()%>?ts='+ new Date().getTime();" class="button">
                    </td>
                </tr>
            </table>
        </form>
    </fieldset>
</div>
</body>
</html>
