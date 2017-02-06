package MainPage;

import MainPage.Event;
import MainPage.EventDAO;

import java.sql.*;

/**
 * Created by Hyy on 6/2/2017.
 */
public class EventDAO {
    Connection con;

    public static String url = "jdbc:mysql://localhost/jedp";
    public static String dbdriver = "com.mysql.jdbc.Driver";
    public static String username = "root";
    public static String password = "mysql";

    public EventDAO() throws Exception{

        Class.forName(dbdriver);
        con = DriverManager.getConnection(url, username, password);

    }

    public void getConnection() throws SQLException {

        if (con == null) con = DriverManager.getConnection(url, username, password);

    }

    public Event getEventById(String id) {

        String sql = "select * from event where id = ?";
        Event event = null;

        try {

            getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs != null) {
                rs.next();
                event = new Event();
                event.setId(rs.getString("id"));
                event.setTitle(rs.getString("title"));
                event.setVenue(rs.getString("venue"));
                event.setStaffId(rs.getString("staffId"));
                event.setDate(rs.getString("date"));
                event.setContent(rs.getString("content"));
            }

            pstmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return event;

    }

    public boolean createEvent(String title, String venue, String staffId, String date , String content) throws Exception {
        boolean status = false;
        System.out.println(status);
        String sqlQuery = null;
        ResultSet rs = null;
        int id = 0;
        boolean success = false;
        PreparedStatement pstmt;

        EventDAO db = new EventDAO();
        db.getConnection();

        //get the last event ID and increase by 1
        sqlQuery = "SELECT MAX(id) FROM event";
        pstmt = db.getPreparedStatement(sqlQuery);
        try {
            rs = pstmt.executeQuery();
            if (rs.next()) { // first Record found
                id = rs.getInt(1) + 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        //create an SQL statement
        sqlQuery = "INSERT INTO event(id, title , venue , staffId, date, content)" + "VALUES(?, ?, ?, ?, ? , ?)";

        pstmt = db.getPreparedStatement(sqlQuery);
        try {
            pstmt.setInt(1, id);
            pstmt.setString(2,title);
            pstmt.setString(3,venue);
            pstmt.setString(4, staffId);
            pstmt.setString(5, date);
            pstmt.setString(6, content);

            if (pstmt.executeUpdate() == 1)
                success = true;
            pstmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        db.terminate();
        return status;
    }


    private Event convertToEvent(ResultSet rs) throws SQLException {
        Event event;
        String id = rs.getString("id");
        String title = rs.getString("title");
        String venue = rs.getString("venue");
        String staffId = rs.getString("staffId");
        String date = rs.getString("date");
        String content = rs.getString("content");

        event = new Event (id,title,venue,staffId,date,content);

        return event;
    }

    public PreparedStatement getPreparedStatement(String dbQuery) {
        PreparedStatement pstmt = null;
        System.out.println("DB prepare statement: " + dbQuery);
        try {
            // create a statement object
            pstmt = con.prepareStatement(dbQuery);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pstmt;
    }

    public void terminate() {
        // close connection
        try {
            con.close();
            System.out.println("Connection is closed");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
