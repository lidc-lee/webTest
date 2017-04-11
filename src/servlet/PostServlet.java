package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by AA on 2017/4/11.
 */
@WebServlet(name = "PostServlet")
public class PostServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String sex = request.getParameter("sex");
        int age = Integer.parseInt(request.getParameter("age"));
       String[] interesting = request.getParameterValues("interesting");
       String area = request.getParameter("area");
       String description = request.getParameter("description");
       String btn = request.getParameter("btn");

       response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE HTML PUBIC \"-//W3C//DTD HTML 4.01 Transitional //EN\">");
        out.println("<HTML>");
        out.println("<meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">");
        out.println("<HEAD><TITLE>感谢您提交信息</TITLE></HEAD>");
        out.println("   <BODY>");
        out.println("       <div align='center'><br/>");
        out.println("           <fieldset style=\"width: 80%;\">\n" +
                "                <legend>填写用户信息</legend><br>\n" +
                "                <div class=\"line\">\n" +
                "                    <div align=\"left\" class=\"leftDiv\">您的名字：</div>\n" +
                "                    <div align=\"left\" class=\"rightDiv\">"+name+"</div>\n" +
                "                </div>\n" +
                "                <div class=\"line\">\n" +
                "                    <div align=\"left\" class=\"leftDiv\">您的密码：</div>" +
                "                    <div align=\"left\" class=\"rightDiv\">"+password+"</div>\n" +
                "                </div>\n" +
                "                <div class=\"line\">\n" +
                "                    <div align=\"left\" class=\"leftDiv\">您的性别：</div>\n" +
                "                    <div align=\"left\" class=\"rightDiv\">\n"+sex+
                "                    </div>\n" +
                "                </div>\n" +
                "                <div class=\"line\">\n" +
                "                    <div align=\"left\" class=\"leftDiv\">您的年龄：</div>\n" +
                "                    <div align=\"left\" class=\"rightDiv\">"+age+"</div>\n" +
                "                </div>\n" +
                "                <div class=\"line\">\n" +
                "                    <div align=\"left\" class=\"leftDiv\">您的爱好：</div>\n" +
                "                    <div align=\"left\" class=\"rightDiv\">");
        for (String str : interesting){
            out.println(str+",");
        }
        out.println("               </div>");
        out.println("           </div>");
        out.println("           <div class=\"line\">\n" +
                "                    <div align=\"left\" class=\"leftDiv\">自我描述：</div>\n" +
                "                    <div align=\"left\" class=\"rightDiv\">\n" +description +
                "                    </div>\n" +
                "                </div>");
        out.println("           <div class=\"line\">\n" +
                "                    <div align=\"left\" class=\"leftDiv\"></div>\n" +
                "                    <div align=\"left\" class=\"rightDiv\">\n" +
                "                        <input type=\"button\" name=\"btn\" value=\"返回上一页\" onclick='history.go(-1);' class=\"button\"/>\n" +
                "                        <br>\n" +
                "                    </div>\n" +
                "                </div>");
        out.println("           </fieldset>");
        out.println("       </div>");
        out.println(" </BODY>");
        out.println("</HTML>");
        out.flush();
        out.close();

    }
}
