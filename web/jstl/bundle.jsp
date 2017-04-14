<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/14
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<fmt:bundle basename="messages">

<fmt:message key="prompt.hello">
    <fmt:param value="Helloween"></fmt:param>
</fmt:message> <br/>

    <fmt:message key="prompt.greeting"></fmt:message>

</fmt:bundle>

<!--
<br/>
<br/>
<br/>

<%--<fmt:bundle basename="com.helloweenvsfei.resources.messages" prefix="prompt.">--%>

	<%--<fmt:message key="hello" >--%>
		<%--<fmt:param value="Helloween"></fmt:param>--%>
	<%--</fmt:message> <br/>--%>

	<%--<fmt:message key="greeting"></fmt:message>--%>

<%--</fmt:bundle>--%>
</body>
</html>
