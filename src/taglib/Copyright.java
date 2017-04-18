package taglib;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;
import java.io.IOException;
import java.util.ResourceBundle;

/**
 * Created by AA on 2017/4/17.
 */
public class Copyright implements Tag{
    private Tag parent;

    private PageContext pageContext;


    @Override
    public void setPageContext(PageContext pageContext) {
        this.pageContext = pageContext;
    }

    @Override
    public void setParent(Tag tag) {
        this.parent = tag;
    }

    @Override
    public Tag getParent() {
        return this.parent;
    }

    //标签开始执行
    @Override
    public int doStartTag() throws JspException {
        return SKIP_BODY;
    }
    //标签结束执行
    @Override
    public int doEndTag() throws JspException {
        JspWriter out = pageContext.getOut();
        try
        {
//            out.println("<div align=center style='line-height: 22px; font-size: 12px; '>");
//            out.println(ResourceBundle.getBundle("copyright").getString("copyright"));
//            out.println("</div>");
            out.println("hello world");
        }
        catch (IOException e)
        {
            throw new JspException(e);
        }
        return EVAL_PAGE;
    }

    @Override
    public void release() {

    }

}
