package volunteer;

/**
 * Created by Hyy on 3/2/2017.
 */
public class Volunteer {

    private String volunteerID;
    private String volunteerName;
    private String volunteerNRIC;
    private String volunteerHPNum;
    private String volunteerReason;
    private String volunteerEmail;

    public Volunteer(){}

    public Volunteer (String volunteerID , String volunteerName , String volunteerNRIC ,
                      String volunteerHPNum , String volunteerReason , String volunteerEmail)
    {
        super();
        this.volunteerID = volunteerID;
        this.volunteerName = volunteerName;
        this.volunteerNRIC = volunteerNRIC;
        this.volunteerHPNum = volunteerHPNum;
        this.volunteerReason = volunteerReason;
        this.volunteerEmail = volunteerEmail;
    }
    public String getVolunteerID() {return volunteerID;}

    public void setVolunteerID(String volunteerID) {this.volunteerID = volunteerID;}

    public String getVolunteerName() {
        return volunteerName;
    }

    public void setVolunteerName(String volunteerName) {
        this.volunteerName = volunteerName;
    }

    public String getVolunteerNRIC() {
        return volunteerNRIC;
    }

    public void setVolunteerNRIC(String volunteerNRIC) {
        this.volunteerNRIC = volunteerNRIC;
    }

    public String getVolunteerHPNum() {
        return volunteerHPNum;
    }

    public void setVolunteerHPNum(String volunteerHPNum) {
        this.volunteerHPNum = volunteerHPNum;
    }

    public String getVolunteerReason() {
        return volunteerReason;
    }

    public void setVolunteerReason(String volunteerReason) {
        this.volunteerReason = volunteerReason;
    }

    public String getVolunteerEmail() {
        return volunteerEmail;
    }

    public void setVolunteerEmail(String volunteerEmail) {
        this.volunteerEmail = volunteerEmail;
    }
}
