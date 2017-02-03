package patient;

import patient.Patient;
import patient.PatientDAO;

import java.sql.*;

/**
 * Created by Mok on 2/3/2017.
 */
public class PatientDAO {
    Connection con;

    public static String url = "jdbc:mysql://localhost/jedp";
    public static String dbdriver = "com.mysql.jdbc.Driver";
    public static String username = "root";
    public static String password = "mysql";

    public PatientDAO() throws Exception{

        Class.forName(dbdriver);
        con = DriverManager.getConnection(url, username, password);

    }

    public void getConnection() throws SQLException {

        if (con == null) con = DriverManager.getConnection(url, username, password);

    }

    public Patient getPatient(String nric) {

        String sql = "select * from Patient where pNric = ?";
        Patient Patient = null;

        try {

            getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, nric);
            ResultSet rs = pstmt.executeQuery();
            if (rs != null) {
                rs.next();
                Patient = new Patient();
                Patient.setPID(rs.getString("pID"));
                Patient.setPassword(rs.getString("pName"));
                Patient.setPNric(rs.getString("pNric"));
                Patient.setPName(rs.getString("password"));
                Patient.setGender(rs.getString("gender"));
                Patient.setAge(rs.getInt("age"));


            }

            pstmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Patient;

    }

    private Patient convertToPatient(ResultSet rs) throws SQLException {
        Patient Patient;
        String pID = rs.getString("pID");
        String pName = rs.getString("pName");
        String pNric = rs.getString("pNric");
        String password = rs.getString("password");
        String gender = rs.getString("gender");
        int age = rs.getInt("age");
        Patient = new Patient (pID, pName, pNric, password, gender, age);

        return Patient;
    }

    public boolean validateLogin(String nric , String password) throws Exception {
        // declare local variables
        boolean login = false;
        Patient s = null;
        ResultSet rs = null;
        String dbQuery;
        PreparedStatement pstmt;

        // step 1 - connect to database
        PatientDAO db = new PatientDAO();
        db.getConnection();

        // step 2 - declare the SQL statement
        dbQuery = "SELECT * FROM Patient WHERE nric =  ? AND password = ?";
        pstmt = db.getPreparedStatement(dbQuery);

        // step 3 - execute query
        try {

            pstmt.setString(1, nric);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                login = true;
                s = convertToPatient(rs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        db.terminate();

        return login;
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
