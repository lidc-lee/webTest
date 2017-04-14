<%@ page import="java.util.List" %>
<%@ page import="jsp.bean.Person" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/13
  Time: 14:30
  To change this template use File | Settings | File Templates.
  遍历List
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    List<Person> persons = new ArrayList<>();
    Person person = new Person();
    person.setName("李四");
    person.setAge(23);
    person.setSex("男");
    persons.add(person);
    Person person1 = new Person();
    person1.setName("林五");
    person1.setAge(25);
    person1.setSex("男");
    persons.add(person1);

    request.setAttribute("persons",persons);
%>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        div {
            float: left;
            padding: 3px;
            width: 50px;
            text-align: center;
            border: 1px solid #000000;
        }
        table {
            border-collapse: collapse;
            border: 1px solid #000000;
        }
        td {
            border: 1px solid #000000;
            padding: 2px;
        }
    </style>
</head>
<body>
<table>
    <tr class="title">
        <td>姓名</td>
        <td>年龄</td>
        <td>性别</td>
    </tr>
    <c:forEach items="${persons}" var="person">
        <tr>
            <td>${person.name}</td>
            <td>${person.age}</td>
            <td>${person.sex}</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
