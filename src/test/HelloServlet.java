package test;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by AA on 2017/4/8.
 */
public class HelloServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        response.setContentType("text/html");//设置文档类型
        PrintWriter out = response.getWriter();//获取out对象
        //输出到客户端浏览器
        out.println("<!DOCTYPE HTML PUBIC \"-//W3C//DTD HTML 4.01 Transitional //EN\">");
        out.println("<HTML>");
        out.println("<meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">");
        out.println("<HEAD><TITLE>hello world</TITLE></HEAD>");
        out.println("<BODY>");

        String url = request.getRequestURI(); //获取uri路径
        out.println("<form action='" + url +"' method='post'>");
        out.println("请输入你的名字：<input type='text' name='name' />");
        out.println("<input type='submit'/>");
        out.println("</form>");
        out.println("");

        String name = request.getParameter("name");
        if(name != null && name.trim().length()>0){
            out.println("你好，我是大东，<b>"+name+"</b>.欢迎来到java web世界");
        }
        out.println(" </BODY>");
        out.println("</HTML>");
        out.flush();
        out.close();//关闭out
    }
}
