package appointment;

import appointment.Appointment;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AppointmentDAO {

    Connection con;

    public static String url = "jdbc:mysql://localhost/jedp";
    public static String dbdriver = "com.mysql.jdbc.Driver";
    public static String username = "root";
    public static String password = "mysql";

    public AppointmentDAO() throws Exception{

        Class.forName(dbdriver);
        con = DriverManager.getConnection(url, username, password);

    }

    public void getConnection() throws SQLException {

        if (con == null) con = DriverManager.getConnection(url, username, password);

    }

    public Appointment getAppointment(String apptId) {

        String sql = "select * from appointment where apptId = ?";
        Appointment appointment = null;

        try {

            getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, apptId);
            ResultSet rs = pstmt.executeQuery();
            if (rs != null) {
                rs.next();
                appointment = new Appointment();
                appointment.setApptId(rs.getString("apptId"));
                appointment.setPatientName(rs.getString("patientName"));
                appointment.setPatientNric(rs.getString("patientNric"));
                appointment.setDate(rs.getString("date"));
                appointment.setTime(rs.getString("time"));
                appointment.setDescription(rs.getString("description"));

            }

            pstmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return appointment;

    }

    public List<Appointment> getAllAppointment(){
        String sql = "select * from appointment";
        ArrayList<Appointment> list = new ArrayList<Appointment>();
        try{
            getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs != null && rs.next()){

                Appointment appointment = new Appointment() ;
                appointment.setApptId(rs.getString("apptId"));
                appointment.setPatientName(rs.getString("patientName"));
                appointment.setPatientNric(rs.getString("patientNric"));
                appointment.setDate(rs.getString("date"));
                appointment.setTime(rs.getString("time"));
                appointment.setDescription(rs.getString("description"));
                list.add(appointment);

            }
            pstmt.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        return list;

    }
    public boolean createAppointment(String apptId,String patientName, String patientNric, String date, String time, String description) throws Exception {
        boolean status = false;
        System.out.println(status);
        String sqlQuery = null;
        ResultSet rs = null;
        int id = 0;
        boolean success = false;
        PreparedStatement pstmt;

        AppointmentDAO db = new AppointmentDAO();
        db.getConnection();

        //get the last client ID and increase by 1
        sqlQuery = "SELECT MAX(id) FROM appointment";
        pstmt = db.getPreparedStatement(sqlQuery);
        try {
            rs = pstmt.executeQuery();
            if (rs.next()) { // first record found
                id = rs.getInt(1) + 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        //create an SQL statement
        sqlQuery = "INSERT INTO appointment(id, patientName, patientNric, date, time, description)" + "VALUES(?, ?, ?, ?, ?, ?)";

        pstmt = db.getPreparedStatement(sqlQuery);
        try {
            pstmt.setInt(1, id);
            pstmt.setString(2,patientName);
            pstmt.setString(3, patientNric);
            pstmt.setString(4, date);
            pstmt.setString(5, time);
            pstmt.setString(6, description);

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









