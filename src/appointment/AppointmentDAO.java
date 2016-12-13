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



}








