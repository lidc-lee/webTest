package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by AA on 2017/4/10.
 */
@WebServlet(name = "FirstServlet")
public class FirstServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.log("执行doPost方法");//调用servlet自带的日志输出信息到控制台
        this.execute(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.log("执行doGet方法");//调用servlet自带的日志输出信息到控制台
        this.execute(request,response);
    }

    @Override
    protected long getLastModified(HttpServletRequest req) {
        return super.getLastModified(req);

    }
    //执行方法
    private void execute(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String url = request.getRequestURI();
        String method = request.getMethod();
        String param = request.getParameter("param");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE HTML PUBIC \"-//W3C//DTD HTML 4.01 Transitional //EN\">");
        out.println("<HTML>");
        out.println("<meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">");
        out.println("<HEAD><TITLE>first servlet</TITLE></HEAD>");
        out.println("  <BODY>");
        out.println("  以"+method + "方式访问该页面，取到的参数为"+param +"<br/>");
        out.println("  <form action='" + url +"' method='get'>" +
                "<input type='text' name='param' value='get'/>" +
                "<input type='submit' value='get方式查询页面"+url+"'/>" +
                "</form>");
        out.println("  <form action='" + url +"' method='post'>" +
                "<input type='text' name='param' value='post'/>" +
                "<input type='submit' value='post方式查询页面"+url+"'/>" +
                "</form>");
        out.println("  <script>document.write('最后更新时间：'+document.lastModified);</script>");
        out.println(" </BODY>");
        out.println("</HTML>");
        out.flush();
        out.close();


    }
}
