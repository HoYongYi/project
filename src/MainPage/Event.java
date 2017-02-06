package MainPage;

/**
 * Created by Hyy on 13/12/2016.
 */
public class Event {
    String id;
    String title;
    String venue;
    String staffId;
    String date;
    String content;

    public Event() {
    }

    public Event(String id, String title,String venue, String staffId, String date, String content) {
        this.id = id;
        this.title = title;
        this.venue = venue;
        this.staffId = staffId;
        this.date = date;
        this.content = content;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getVenue() {return venue;}

    public void setVenue(String venue) {
        this.venue = venue;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
