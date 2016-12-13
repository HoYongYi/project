package appointment;

public class Appointment {

    private String apptId = null;
    private String patientName = null;
    private String patientNric = null;
    private String date = null;
    private String time = null;
    private String description=null;

    public String getApptId() {
        return apptId;
    }

    public void setApptId(String apptId) {
        this.apptId = apptId;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public String getPatientNric() {
        return patientNric;
    }

    public void setPatientNric(String patientNric) {
        this.patientNric = patientNric;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
