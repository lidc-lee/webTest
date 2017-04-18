package xml;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 * Created by AA on 2017/4/18.
 */
public class MySaxHandler extends DefaultHandler{

    static DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    private String content;
    private String tag;

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        if ("item".equals(qName)) {
            System.out.println(qName);
        }
        tag = qName;
    }

    @Override
    public void endElement(String uri, String localName, String qName) throws SAXException {

        tag = null;
    }

    @Override
    public void characters(char[] ch, int start, int length) throws SAXException {
        if (tag != null)
        content = new String(ch,start,length);
        if ("title".equals(tag)){
            System.out.println("标题："+content);
        }
        else if ("link".equals(tag)){
            System.out.println("链接："+content);
        }
        else if ("author".equals(tag)){
            System.out.println("作者："+content);
        }
    }
}
