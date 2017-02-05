package video;

import video.Record;
import video.RecordDAO;

import java.sql.*;

/**
 * Created by wenya on 5/2/2017.
 */
public class RecordDAO {
    Connection con;

    public static String url = "jdbc:mysql://localhost/jedp";
    public static String dbdriver = "com.mysql.jdbc.Driver";
    public static String username = "root";
    public static String password = "0712";

    public RecordDAO() throws Exception{

        Class.forName(dbdriver);
        con = DriverManager.getConnection(url, username, password);

    }

    public void getConnection() throws SQLException {

        if (con == null) con = DriverManager.getConnection(url, username, password);

    }

    public Record getRecordByPatient(String patientId) {

        String sql = "select * from record where patientId = ?";
        Record record = null;

        try {

            getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, patientId);
            ResultSet rs = pstmt.executeQuery();
            if (rs != null) {
                rs.next();
                record = new Record();
                record.setId(rs.getString("id"));
                record.setPatientId(rs.getString("patientId"));
                record.setStaffId(rs.getString("staffId"));
                record.setDate(rs.getString("date"));
                record.setNotes(rs.getString("notes"));
            }

            pstmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return record;

    }

    public Record getRecordByStaff(String staffId) {

        String sql = "select * from record where staffId = ?";
        Record record = null;

        try {

            getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, staffId);
            ResultSet rs = pstmt.executeQuery();
            if (rs != null) {
                rs.next();
                record = new Record();
                record.setId(rs.getString("id"));
                record.setPatientId(rs.getString("patientId"));
                record.setStaffId(rs.getString("staffId"));
                record.setDate(rs.getString("date"));
                record.setNotes(rs.getString("notes"));
            }

            pstmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return record;

    }

    public boolean createRecord(String patientId, String staffId, String date, String notes) throws Exception {
        boolean status = false;
        System.out.println(status);
        String sqlQuery = null;
        ResultSet rs = null;
        int id = 0;
        boolean success = false;
        PreparedStatement pstmt;

        RecordDAO db = new RecordDAO();
        db.getConnection();

        //get the last client ID and increase by 1
        sqlQuery = "SELECT MAX(id) FROM Record";
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
        sqlQuery = "INSERT INTO Record(id, patientId, staffId, date, notes)" + "VALUES(?, ?, ?, ?, ?)";

        pstmt = db.getPreparedStatement(sqlQuery);
        try {
            pstmt.setInt(1, id);
            pstmt.setString(2,patientId);
            pstmt.setString(3, staffId);
            pstmt.setString(4, date);
            pstmt.setString(5, notes);

            if (pstmt.executeUpdate() == 1)
                success = true;
            pstmt.close();
} catch (Exception e) {
        e.printStackTrace();
        }

        db.terminate();
        return status;
        }

    public boolean updateRecord(String id, String patientId, String staffId, String date, String notes) throws Exception {
        //declare local variables
        boolean success = false;
        RecordDAO db = new RecordDAO();
        String dbQuery;
        PreparedStatement pstmt;

        db.getConnection();

        //step 2 - declare the SQL statement
        dbQuery = "UPDATE Record SET patientId=?,staffId=?,date=?, notes=? WHERE id = ?";
        pstmt = db.getPreparedStatement(dbQuery);

        // step 3 - to insert record using executeUpdate method
        try {

            pstmt.setString(1,patientId);
            pstmt.setString(2, staffId);
            pstmt.setString(3, date);
            pstmt.setString(4, notes);

            if (pstmt.executeUpdate() == 1)
                success = true;
            pstmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(success);
        //step 4 - close connection
        db.terminate();

        return success;
    }

    private Record convertToRecord(ResultSet rs) throws SQLException {
        Record record;
        String id = rs.getString("id");
        String patientId = rs.getString("patientId");
        String staffId = rs.getString("staffId");
        String date = rs.getString("date");
        String notes = rs.getString("notes");

        record = new Record (id,patientId,staffId,date,notes);

        return record;
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
