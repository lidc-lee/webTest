<%@ page import="java.security.MessageDigest" %>
<%@ page import="java.security.NoSuchAlgorithmException" %><%--
  Created by IntelliJ IDEA.
  User: AA
  Date: 2017/4/12
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    private static final String KEY =":cookie@1499117534@qq.com";//密钥
    public final static String calcMD5(String ss){//MD5加密
        String s = ss==null ? "": ss;
        char hexDigits[] = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
        try {
            byte[] strTemp = s.getBytes();
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");//获得MD5
            messageDigest.update(strTemp);//更新数据
            byte[] md = messageDigest.digest();//加密
            int j = md.length;//加密后的长度
            char str[] = new char[j*2];
            int k = 0;
            for (int i = 0;i<j;i++){
                byte byte0 = md[i];
                str[k++] = hexDigits[byte0 >>>4 & 0xf];
                str[k++] = hexDigits[byte0 & 0xf];
            }
            return new String(str);//加密后的字符串

        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    String action = request.getParameter("action");//获取参数
    if ("login".equals(action)){
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        int timeout = new Integer(request.getParameter("timeout"));

        String ssid = calcMD5(account+KEY);//把账号、密钥使用MD5加密后保存
        Cookie accountcookie = new Cookie("account",account);
        accountcookie.setMaxAge(timeout);//设置有效期
        Cookie ssidCookie = new Cookie("ssid",ssid);
        ssidCookie.setMaxAge(timeout);

        response.addCookie(accountcookie);
        response.addCookie(ssidCookie);//输出到客户端
        response.sendRedirect(request.getRequestURI()+"?"+System.currentTimeMillis());//重新请求
        return;
    }else if ("logout".equals(action)){
        Cookie accountcookie = new Cookie("account","");
        accountcookie.setMaxAge(0);
        Cookie ssidCookie = new Cookie("ssid","");
        ssidCookie.setMaxAge(0);
        response.addCookie(accountcookie);
        response.addCookie(ssidCookie);
        response.sendRedirect(request.getRequestURI()+"?"+System.currentTimeMillis());
        return;
    }
    boolean login = false;//是否登陆
    String accout = null;
    String ssid = null;
    if (request.getCookies() != null){
        for (Cookie cookie : request.getCookies()){
            //遍历
            if (cookie.getName().equals("accout")){
                accout = cookie.getValue();
            }
            if (cookie.getName().equals("ssid")){
                ssid = cookie.getValue();
            }
        }
    }
    if (accout != null && ssid != null){
        login = ssid.equals(calcMD5(accout+KEY));//如果加密规则正确，则登录成功
    }
%>

<legend><%=login ? "欢迎回来":"请先登录"%></legend>
<%
    if (login){%>
欢迎您，${cookie.accout.value}.&nbsp;&nbsp;
<a href="${pageContext.request.requestURI}?action=logout">注销</a>
<%
    }else {%>
<form action="${pageContext.request.requestURI}?action=login" method="post">
    <table>
        <tr>
            <td>账号：</td>
            <td><input type="text" name="account" style="width: 200px"></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password" style="width: 200px"></td>
        </tr>
        <tr>
            <td>有效期：</td>
            <td>
                <input type="radio" name="timeout" value="-1" checked/>关闭浏览器即可失效<br>
                <input type="radio" name="timeout" value="<%=30*24*60*60%>"/>30天<br>
                <input type="radio" name="timeout" value="<%=Integer.MAX_VALUE%>" />永久有效<br>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <input type="submit" value="登录" class="button"/>
            </td>
        </tr>
    </table>
</form>
<%
    }
%>

