package xml;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import java.io.File;

/**
 * Created by AA on 2017/4/18.
 */
public class SaxDemo {
    public static void main(String[] args) {
        File xmlFile = new File("E:\\study\\java web\\webTest\\src\\xml\\sina.xml");

        // 创建一个 SAXParserFactory对象. 通过单例模式创建
        SAXParserFactory factory = SAXParserFactory.newInstance();
        try {
            // 创建SAXParser对象
            SAXParser parser = factory.newSAXParser();
            // 解析文件,并定义解析时的事件处理
            parser.parse(xmlFile, new MySaxHandler());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
