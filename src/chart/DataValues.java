package chart;

/**
 * Created by acer on 30/1/2017.
 */
public class DataValues {
    private String year;
    private int amount;
    private String percentage;

    public DataValues(String year, int amount, String percentage){
        this.year = year;
        this.amount = amount;
        this.percentage = percentage;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getPercentage() {
        return percentage;
    }

    public void setPercentage(String percentage) {
        this.percentage = percentage;
    }
}
