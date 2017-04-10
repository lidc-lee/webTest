package test;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

/**
 * Created by AA on 2017/4/10.
 */
@WebServlet(name = "InitParamServlet")
public class InitParamServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Enumeration params = this.getInitParameterNames();
        while (params.hasMoreElements()){
            String userParam = (String) params.nextElement();
            String passwordParam = getInitParameter(userParam);
            if (userParam.equalsIgnoreCase(username) && passwordParam.equalsIgnoreCase(password)){
                RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");//请求转发
                dispatcher.forward(request,response);
                return;
            }
        }
       this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        String url = request.getRequestURI();
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE HTML PUBIC \"-//W3C//DTD HTML 4.01 Transitional //EN\">");
        out.println("<HTML>");
        out.println("<meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">");
        out.println("<HEAD><TITLE>initParam servlet</TITLE></HEAD>");
        out.println("  <BODY>");
        out.println("  <form action='" + url +"' method='post'>" +
                "账户：<input type='text' name='username'/>" +
                "密码：<input type='password' name='password'/>" +
                "<input type='submit' value='  登录  '>"+
                "</form>");
        out.println(" </BODY>");
        out.println("</HTML>");
        out.flush();
        out.close();
    }
}
