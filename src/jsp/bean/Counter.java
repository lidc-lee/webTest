package jsp.bean;

/**
 * Created by AA on 2017/4/12.
 */
public class Counter {
    private int count;

    public int getCount() {
        return ++count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
