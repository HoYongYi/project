package patient;

/**
 * Created by Mok on 12/13/2016.
 */
public class Patient {
    private String pNric;
    private String pName;
    private String gender;
    private String dateOfBirth;
    private String address;
    private String contactNo;
    private String nextOfKinNo;
    private int age;

    public String getApptId() {
        return apptId;
    }

    public void setApptId(String apptId) {
        this.apptId = apptId;
    }

    private String apptId;

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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    public String getNextOfKinNo() {
        return nextOfKinNo;
    }

    public void setNextOfKinNo(String nextOfKinNo) {
        this.nextOfKinNo = nextOfKinNo;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
