package xml;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;

/**
 * Created by AA on 2017/4/17.
 * DOM解析XML
 */
public class DomDemo {

    public static void main(String[] args) {
        // 创建解析的xml文档对象
        File xmlFile = new File("E:\\study\\java web\\webTest\\src\\xml\\sina.xml");
        // 声明一个 DocumentBuilder对象. 抽象类，不能直接构建，可以通过 DocumentFactory 来构建。
        DocumentBuilder builder = null;
        // 声明一个 DocumentBuilderFactory对象. 通过单例模式创建
        DocumentBuilderFactory builderFactory = DocumentBuilderFactory
                .newInstance();
        // 取得默认的 DocumentBuilder.
        try {
            builder = builderFactory.newDocumentBuilder();
            // 解析文件
            Document document = builder.parse(xmlFile);
            // 获得根元素
            Element root = document.getDocumentElement();
            System.out.println("根元素：" + root.getNodeName());
//             获得根元素下的子节点
            NodeList childNodes = root.getChildNodes();
            // 遍历这些子节点
            for (int i = 0; i < childNodes.getLength(); i++) {
                // 对每个子节点进行判断
                Node node = childNodes.item(i);
//                System.out.println("zi元素：" + node.getNodeName());
                // 如果节点的名称为"article"
                if ("channel".equals(node.getNodeName())) {
                    // 获得<channel>元素下的所有节点
                    NodeList nodeDetail = node.getChildNodes();
                    // 遍历<article>元素下的所有节点
                    for (int j = 0; j < nodeDetail.getLength(); j++) {
                        // 获得<article>元素每一个节点
                        Node detail = nodeDetail.item(j);
                        // 根据节点名称解析数据
                        if ("item".equals(detail.getNodeName())){
                            getNode(detail);
                        }
                    }
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private static void getNode(Node detail){
        NodeList nodeList = detail.getChildNodes();
        for (int k=0; k< nodeList.getLength();k++){
            Node node = nodeList.item(k);
            if ("title".equals(node.getNodeName())){
                System.out.println("标题："+node.getTextContent());
            }
            else if ("link".equals(node.getNodeName())){
                System.out.println("链接："+node.getTextContent());
            }
            else if ("author".equals(node.getNodeName())){
                System.out.println("作者："+node.getTextContent());
            }
        }
    }
}
