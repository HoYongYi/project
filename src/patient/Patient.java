package patient;

/**
 * Created by Mok on 12/13/2016.
 */
public class Patient {
    private String pID;
    private String password;
    private String pNric;
    private String pName;
    private String gender;
    private int age;
    private String phoneNo;

    public Patient(){}

    public Patient(String pID, String password, String pNric, String pName, String gender, int age,String phoneNo) {
        this.pID = pID;
        this.password = password;
        this.pNric = pNric;
        this.pName = pName;
        this.gender = gender;
        this.age = age;
        this.phoneNo = phoneNo;
    }

    public String getPID() {
        return pID;
    }

    public void setPID(String pID) {
        this.pID = pID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPhoneNo(String phoneNo){return phoneNo;}

    public void setPhoneNo(String phoneNo){this.phoneNo = phoneNo;}

}
