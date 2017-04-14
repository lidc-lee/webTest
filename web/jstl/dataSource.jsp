<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/14
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
    <title>Title</title>
    <style type="text/css">
        table {
            border-collapse: collapse;
            border: 1px solid #000000;
        }

        td {
            border: 1px solid #000000;
            padding: 2px;
        }

        .title td {
            text-align: center;
            background: #DDDDDD;
        }
    </style>
</head>
<body>
<sql:setDataSource driver="net.sourceforge.jtds.jdbc.Driver" user="sa"
                    password="123456" url="jdbc:jtds:sqlserver://localhost:1433/test" var="dataSource" scope="page"/>

<%--<sql:setDataSource dataSource="jdbc/test" var="serverDataSource" />--%>
<%--${dataSource}--%>

<sql:update var="result" dataSource="${ dataSource }" sql="update person set age=12 ">
</sql:update>
update, 影响到的数据条数：${ result } <br/>

<%--<sql:update var="result" dataSource="${ dataSource }">--%>
    <%--create table tb_corporation (--%>
    <%--id int not null unique check(id>0),--%>
    <%--name varchar(255),--%>
    <%--description text,--%>
    <%--primary key(id)--%>
    <%--)--%>
<%--</sql:update>--%>

<%--CREATE TABLE, 影响到的数据条数：${ result } <br/>--%>

<%--<sql:update var="result" dataSource="${ dataSource }">--%>
    <%--insert into tb_corporation (id,name, description ) values (2,'MicroSoft', '微软')--%>
<%--</sql:update>--%>

<%--INSERT, 影响到的数据条数：${ result } <br/>--%>

<%--<sql:update var="result" dataSource="${ dataSource }">--%>
    <%--insert into tb_corporation ( name, description ) values ('IBM', '国际商用机器')--%>
<%--</sql:update>--%>

<%--INSERT, 影响到的数据条数：${ result } <br/>--%>
<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
<sql:query var="rs" dataSource="${dataSource}" scope="page" sql="select * from person where name = ? ">
    <sql:param value="lee"/>
</sql:query>

<table>
    <tr class="title">
        <%--<td>ID</td>--%>
        <td>Name</td>
        <td>Age</td>
    </tr>

    <c:forEach var="row" items="${ rs.rows }">
        <tr>
            <%--<td>${ row['id'] }</td>--%>
            <td>${ row['name'] }</td>
            <td>${ row['age'] }</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
