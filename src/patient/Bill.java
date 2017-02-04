package patient;

/**
 * Created by Mok on 12/13/2016.
 */
public class Bill {
    private int billNo;
    private String pNric;
    private String pName;
    private String services;
    private String amount;

    public Bill(){
    }
    public Bill(int billNo,String pNric, String pName, String services,String amount){
        this.billNo=billNo;
        this.pNric=pNric;
        this.pName=pName;
        this.services=services;
        this.amount=amount;
    }
    public int getBillNo() {
        return billNo;
    }

    public void setBillNo(int billNo) {
        this.billNo = billNo;
    }

    public String getPNric() {
        return pNric;
    }

    public void setPNric(String pNric) {
        this.pNric = pNric;
    }

    public String getPName() {
        return pName;
    }

    public void setPName(String pName) {
        this.pName = pName;
    }

    public String getServices() {
        return services;
    }

    public void setServices(String services) {
        this.services = services;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

}
