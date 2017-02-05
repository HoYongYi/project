package volunteer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import volunteer.Volunteer;

/**
 * Created by Hyy on 3/2/2017.
 */
public class VolunteerDAO {

    Connection con;

    public static String url = "jdbc:mysql://localhost/jedp";
    public static String dbdriver = "com.mysql.jdbc.Driver";
    public static String username = "root";
    public static String password = "mysql";

    public VolunteerDAO() throws Exception{

        Class.forName(dbdriver);
        con = DriverManager.getConnection(url, username, password);

    }

    public void getConnection() throws SQLException {

        if (con == null) con = DriverManager.getConnection(url, username, password);

    }

    public Volunteer getVolunteer(String volunteerID) {

        String sql = "select * from volunteer where volunteerID = ?";
        Volunteer volunteer = null;

        try {

            getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, volunteerID);
            ResultSet rs = pstmt.executeQuery();
            if (rs != null) {
                rs.next();
                volunteer = new Volunteer();
                volunteer.setVolunteerID(rs.getString("volunteerID"));
                volunteer.setVolunteerName(rs.getString("volunteerName"));
                volunteer.setVolunteerNRIC(rs.getString("volunteerNRIC"));
                volunteer.setVolunteerHPNum(rs.getString("volunteerHPNum"));
                volunteer.setVolunteerReason(rs.getString("volunteerReason"));
                volunteer.setVolunteerEmail(rs.getString("volunteerEmail"));

            }

            pstmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return volunteer;

    }

    public List<Volunteer> getAllVolunteer(){
        String sql = "select * from volunteer";
        ArrayList<Volunteer> list = new ArrayList<Volunteer>();
        try{
            getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs != null && rs.next()){

                Volunteer volunteer = new Volunteer() ;
                volunteer.setVolunteerID(rs.getString("id"));
                volunteer.setVolunteerName(rs.getString("Name"));
                volunteer.setVolunteerNRIC(rs.getString("NRIC"));
                volunteer.setVolunteerHPNum(rs.getString("HPNum"));
                volunteer.setVolunteerReason(rs.getString("Reason"));
                volunteer.setVolunteerEmail(rs.getString("Email"));
                list.add(volunteer);

            }
            pstmt.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        return list;

    }
    public boolean createVolunteer(String Name,
                                   String NRIC, String HPNum,
                                   String Reason , String Email) throws Exception {
        boolean status = false;
        System.out.println(status);
        String sqlQuery = null;
        ResultSet rs = null;
        int id = 0;
        boolean success = false;
        PreparedStatement pstmt;

        VolunteerDAO db = new VolunteerDAO();
        db.getConnection();

        //get the last client ID and increase by 1
        sqlQuery = "SELECT MAX(id) FROM volunteer";
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
        sqlQuery = "INSERT INTO volunteer(id, Name, NRIC, HPNum, Reason, Email)" + "VALUES(?, ?, ?, ?, ?, ?)";

        pstmt = db.getPreparedStatement(sqlQuery);
        try {
            pstmt.setInt(1, id);
            pstmt.setString(2,Name);
            pstmt.setString(3, NRIC);
            pstmt.setString(4, HPNum);
            pstmt.setString(5, Reason);
            pstmt.setString(6, Email);

            if (pstmt.executeUpdate() == 1)
                success = true;
            pstmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        db.terminate();
        return status;
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
