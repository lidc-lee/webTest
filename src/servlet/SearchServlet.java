package servlet;

import com.yahoo.search.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.net.URLEncoder;

/**
 * Created by AA on 2017/4/10.
 */
@WebServlet(name = "SearchServlet")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");

        String word = request.getParameter("world");
        String type = request.getParameter("type");
        String all = request.getParameter("all");
        boolean adultOK = "true".equals(all);

        String url = request.getRequestURI();

        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE HTML PUBIC \"-//W3C//DTD HTML 4.01 Transitional //EN\">");
        out.println("<HTML>");
        out.println("<meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">");
        out.println("<HEAD><TITLE> search</TITLE></HEAD>");
        out.println("  <BODY>");
        out.println("  <div style='float:left; height:40px;'><img src='https://www.baidu.com/img/bd_logo1.png' style='margin: 2px;height: 60px;'></div>");
        out.println("  <form action='" + url +"' method='get'>");
        out.println("   <div style='margin: 40px;height:80px;'>");
        out.println("       <input type='radio' name='type' value='web'"+ (type.equals("web") ? "checked" : "")+">网页");
        out.println("       <input type='radio' name='type' value='news' "+ (type.equals("news") ? "checked" : "")+">新闻");
        out.println("       <input type='radio' name='type' value='image' "+ (type.equals("image") ? "checked" : "")+">图片");
        out.println("       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
        out.println("       <input type='checkbox' name='all' value='true' "+ (adultOK ? "checked" : "")+">允许成人内容</br>");
        out.println("       <input type='text' name='world' value='"+word+"' style='width: 300px;'>");
        out.println("       <input type='submit' value='百度搜索' style='width: 100px;'>");
        out.println("   </div>");
        out.println("</form>");
        //调用yahoo api
        SearchClient client = new SearchClient("javasdktest");
            try {
                if ("image".equals(type)) {//搜图片
                    ImageSearchRequest searchRequest = new ImageSearchRequest(URLEncoder.encode(word, "UTF-8"));
                    searchRequest.setAdultOk(adultOK);//是否显示成人
                    searchRequest.setResults(20);//查询记录数
                    searchRequest.setStart(BigInteger.valueOf(0));//从0开始显示
                    double startTime = System.currentTimeMillis();//记录开始时间
                    ImageSearchResults results = client.imageSearch(searchRequest);//查询
                    double endTime = System.currentTimeMillis();//结束时间
                    out.println("<div align='right' style='width: 100%; background: #FFDDDD;height: 25px;padding: 2px;border-top: 1px solid #FF9999;margin-bottom: 5px;'>");
                    out.println("   总共："+results.getTotalResultsAvailable()+"条数据，总用时"+(endTime-startTime)/1000+"秒");

                    out.println("</div>");
                    for (ImageSearchResult result : results.listResults()){
                        //遍历
                        out.println("<div class=\"imgDiv\">");
                        out.println("   <div align=\"center\"><a href=\""+result.getClickUrl()+"\" target=\"_blank\"><img src=\""+result.getThumbnail().getUrl()+"\" width=\"160\" height=\"120\" border=\"0\"></a></div>");
                        out.println("   <div align=\"center\">"+result.getWidth()+"x"+result.getHeight()+" "+result.getFileFormat()+"</div>");
                        out.println("   <div>"+(result.getSummary()==null ? "":result.getSummary())+"</div>");
                        out.println("</div>");
                    }
                }else if ("web".equals(type)){

                }else if ("news".equals(type)){

                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        out.println(" </BODY>");
        out.println("</HTML>");
        out.flush();
        out.close();
    }
}
