package chart;

/**
 * Created by acer on 30/1/2017.
 */
public class DataValues {
    private String period;
    private int amount;
    private String percentage;

    public DataValues(String period, int amount, String percentage){
        this.period = period;
        this.amount = amount;
        this.percentage = percentage;
    }

    public String getPeriod() {
        return period;
    }

    public void setPeriod(String period) {
        this.period = period;
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
