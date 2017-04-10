package test;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import sun.awt.image.JPEGImageDecoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

/**
 * Created by AA on 2017/4/10.
 * 生成图片验证码
 */
@WebServlet(name = "IdentityServlet")
public class IdentityServlet extends HttpServlet {
    public static final char[] CHARS = {'2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','J','K','L','M','N','P'
            ,'Q','R','S','T','U','V','W','X','Y','Z'};
    public static Random random = new Random();//随机数
    public static String getRandomString(){
        //获取6位随机数
        StringBuffer buffer = new StringBuffer();
        for (int i=0;i<6;i++){
            buffer.append(CHARS[random.nextInt(CHARS.length)]);
        }
        return buffer.toString();
    }
    public static Color getRandomColor(){
        //获取随机颜色
        return new Color(random.nextInt(255),random.nextInt(255),random.nextInt(255));
    }
    public static Color getReverColor(Color color){
        //返回某颜色的反色
        return new Color(255-color.getRed(),255-color.getGreen(),255-color.getBlue());

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("image/jpeg");
        String randomString = getRandomString();
        request.getSession(true).setAttribute("randomString",randomString);//随机数放到session
        int width = 100;
        int height = 30;
        Color color = getRandomColor();
        Color reverse = getReverColor(color);
        //创建一个彩色图片
        BufferedImage bi = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
        Graphics2D g = bi.createGraphics();//获取绘画对象
        g.setFont(new Font(Font.SANS_SERIF,Font.BOLD,16));
        g.setColor(color);
        //绘制背景
        g.fillRect(0,0,width,height);
        g.setColor(reverse);
        g.drawString(randomString,18,20);
        //随机画噪音点
        for (int i=0, n = random.nextInt(100);i<n;i++){
            g.drawRect(random.nextInt(width),random.nextInt(height),1,1);
        }
        //输出流
        ServletOutputStream outputStream = response.getOutputStream();
        //转成JPEG格式
        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(outputStream);
        encoder.encode(bi);
        outputStream.flush();
        outputStream.close();
    }
}
