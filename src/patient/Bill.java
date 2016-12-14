package patient;

/**
 * Created by Mok on 12/13/2016.
 */
public class Bill {
    private String billNo;
    private String pNric;
    private String pName;
    private String services;
    private String amount;

    public String getBillNo() {
        return billNo;
    }

    public void setBillNo(String billNo) {
        this.billNo = billNo;
    }

    public String getpNric() {
        return pNric;
    }

    public void setpNric(String pNric) {
        this.pNric = pNric;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
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
