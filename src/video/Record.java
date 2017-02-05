package video;

/**
 * Created by wenya on 5/2/2017.
 */
public class Record {
    String id;
    String patientId;
    String staffId;
    String date;
    String notes;

    public Record() {
    }

    public Record(String id, String patientId, String staffId, String date, String notes) {
        this.id = id;
        this.patientId = patientId;
        this.staffId = staffId;
        this.date = date;
        this.notes = notes;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPatientId() {
        return patientId;
    }

    public void setPatientId(String patientId) {
        this.patientId = patientId;
    }

    public String getStaffId() {
        return staffId;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }
}
