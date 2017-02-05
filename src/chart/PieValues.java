package chart;

/**
 * Created by acer on 5/2/2017.
 */
public class PieValues {
    private String name;
    private int num;
    private String percent;

    public PieValues(String name, int num ,String percent){
        this.name = name;
        this.num = num;
        this.percent = percent;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getPercent() {
        return percent;
    }

    public void setPercent(String percent) {
        this.percent = percent;
    }
}
