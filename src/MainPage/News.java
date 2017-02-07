package MainPage;

/**
 * Created by Hyy on 6/2/2017.
 */
public class News {
    String id;
    String staffId;
    String title;
    String content;

    public News() {
    }

    public News(String id,String staffId, String title,String content) {
        this.id = id;
        this.staffId = staffId;
        this.title = title;
        this.content = content;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getStaffId() {
        return staffId;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
