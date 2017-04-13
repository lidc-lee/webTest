<%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/12
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<br>
<%
    Object[][] letters = {{true,"恭喜您的注册信息已生效","1499@qq.com","hello@mail.com","2017-01-10"},
            {true,"Java EE 6.0","1499@qq.com","hello@mail.com","2017-01-11"},
            {false,"来信已收到","1499@qq.com","hello@mail.com","2017-01-12"},
            {false,"有留言","1499@qq.com","hello@mail.com","2017-01-13"},};
    String[] colors = {"#DDDDDD","#AAAAAA"};
%>
<table border="0" cellpadding="2" cellspacing="1" width="700" align="center">
    <tr style="background: chocolate">
        <td align="center" style="line-height: 22px">&nbsp;</td>
        <td align="center" style="line-height: 22px">标题&nbsp;</td>
        <td align="center" style="line-height: 22px">收信人&nbsp;</td>
        <td align="center" style="line-height: 22px">发信人&nbsp;</td>
        <td align="center" style="line-height: 22px">时间&nbsp;</td>
    </tr>
<%
    for (int i=0;i<letters.length;i++){
        Object[] letter = letters[i];
%>
    <tr style="background: <%=colors[i%2]%>">
        <td align="center">
            <%
                if (letter[0] == Boolean.TRUE){
            %>
                <img src="/post">
            <%
                }else {
                    out.println("&nbsp");
                }
            %>
        </td>
        <td><a href="#"><%=letter[1]%></a> </td>
        <td><%= letter[2]%></td>
        <td><%= letter[3]%></td>
        <td align="center"><%=letter[4]%></td>
    </tr>
<%
    }
%>
</table>
</body>
</html>
