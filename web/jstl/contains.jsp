<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/14
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
header['User-Agent'] = "${ header['User-Agent'] }"; <br/><br/>
您使用
<c:if test="${fn:contains(header['User-Agent'],'MSIE' )}">IE浏览器</c:if>
<c:if test="${ fn:contains(header['User-Agent'], 'Firefox') }">Firefox 浏览器</c:if>
<c:if test="${ fn:contains(header['User-Agent'], 'Maxthon') }">Maxth 浏览器</c:if>
<c:if test="${ fn:contains(header['User-Agent'], 'MyIE2') }">MyIE2 浏览器</c:if>
<c:if test="${ fn:contains(header['User-Agent'], 'Opera') }">Opera 浏览器</c:if>
<c:if test="${ fn:contains(header['User-Agent'], 'TencentTraveler ') }">腾讯 Traveler 浏览器</c:if>
<c:if test="${ fn:contains(header['User-Agent'], 'TheWorld ') }">世界之窗 浏览器</c:if>
<c:if test="${ fn:contains(header['User-Agent'], 'Kubuntu') }">Kubuntu 浏览器</c:if>
，
<c:if test="${ fn:contains(header['User-Agent'], 'Windows') }">Windows 操作系统</c:if>
<c:if test="${ fn:contains(header['User-Agent'], 'windows') }">Windows 操作系统</c:if>
<c:if test="${ fn:contains(header['User-Agent'], 'Linux') }">Linux 操作系统</c:if>
<c:if test="${ fn:contains(header['User-Agent'], 'linux') }">Linux 操作系统</c:if>
<c:if test="${ fn:contains(header['User-Agent'], 'SunOS') }">Sun 操作系统</c:if>
<c:if test="${ fn:contains(header['User-Agent'], 'Mac') }">Mac 操作系统</c:if>
</body>
</html>
