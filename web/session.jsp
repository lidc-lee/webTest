<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/12
  Time: 16:57
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
    response.setCharacterEncoding("UTF-8");
    Person[] persons = {new Person("ldc","123456"),new Person("lee","ldcldc"),new Person("ljk","124578")};
    String message = "";
    if (request.getMethod().equals("POST")){
        for (Person person : persons){
            if (person.getUsername().equalsIgnoreCase(request.getParameter("username"))
                    && person.getPassword().equalsIgnoreCase(request.getParameter("password"))){
                //登录成功，保存到session
                session.setAttribute("person",person);
                session.setAttribute("loginTime",new Date());

                response.sendRedirect(request.getContextPath() + "/welcome.jsp");
                return;
            }
        }
        message = "用户密码不匹配，登陆失败";
    }else if (session.getAttribute("person") != null){
        response.sendRedirect(request.getContextPath() + "/welcome.jsp");
        return;
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<fieldset>
    <legend>登录</legend>
    <form action="session.jsp" method="post">
        <table>
            <tr>
                <td>账号：</td>
                <td><input type="text" name="username" style="width: 300px"/></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password" style="width: 300px"/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="登录" class="button"/></td>
            </tr>
        </table>
    </form>
</fieldset>
</body>
</html>
