package staff;

import java.sql.*;

/**
 * Created by wenya on 30/1/2017.
 */
public class StaffDAO {
    Connection con;

    public static String url = "jdbc:mysql://localhost/jedp";
    public static String dbdriver = "com.mysql.jdbc.Driver";
    public static String username = "root";
    public static String password = "mysql";

    public StaffDAO() throws Exception{

        Class.forName(dbdriver);
        con = DriverManager.getConnection(url, username, password);

    }

    public void getConnection() throws SQLException {

        if (con == null) con = DriverManager.getConnection(url, username, password);

    }

    public Staff getStaff(String nric) {

        String sql = "select * from staff where nric = ?";
        Staff staff = null;

        try {

            getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, nric);
            ResultSet rs = pstmt.executeQuery();
            if (rs != null) {
                rs.next();
                staff = new Staff();
                staff.setStaff_ID(rs.getString("Staff_ID"));
                staff.setName(rs.getString("Name"));
                staff.setGender(rs.getString("Gender"));
                staff.setNric(rs.getString("NRIC"));
                staff.setPassword(rs.getString("Password"));
                staff.setPerPhone(rs.getString("PerPhone"));
                staff.setHomeAdd(rs.getString("HomeAdd"));
                staff.setDesignation(rs.getString("Designation"));
            }

            pstmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return staff;

    }

    public boolean createStaff(String name, String gender, String nric, String password, String perphone, String homeadd, String designation) throws Exception {
        boolean status = false;
        System.out.println(status);
        String sqlQuery = null;
        ResultSet rs = null;
        int id = 0;
        String x;
        boolean success = false;
        PreparedStatement pstmt;

        StaffDAO db = new StaffDAO();
        db.getConnection();

        //get the last client ID and increase by 1
        sqlQuery = "SELECT MAX(id) FROM staff";
        pstmt = db.getPreparedStatement(sqlQuery);
        try {
            rs = pstmt.executeQuery();
            if (rs.next()) { // first Record found
                x = rs.getString(1);
                id = Integer.parseInt(x) + 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        String staffid = Integer.toString(id);

        //create an SQL statement
        sqlQuery = "INSERT INTO staff(staff_id, name, gender, nric, password, perphone, homeadd, designation)" + "VALUES(?, ?, ?, ?, ?, ?, ?, ?)";

        pstmt = db.getPreparedStatement(sqlQuery);
        try {
            pstmt.setString(1, staffid);
            pstmt.setString(2,name);
            pstmt.setString(3, gender);
            pstmt.setString(4, nric);
            pstmt.setString(5, password);
            pstmt.setString(6, perphone);
            pstmt.setString(7, homeadd);
            pstmt.setString(8, designation);

            if (pstmt.executeUpdate() == 1)
                success = true;
            pstmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        db.terminate();
        return status;
    }

    private Staff convertToStaff(ResultSet rs) throws SQLException {
        Staff staff;
        String staff_ID = rs.getString("staff_ID");
        System.out.print("Staff_ID" + staff_ID);
        String name = rs.getString("name");
        String gender = rs.getString("gender");
        String nric = rs.getString("nric");
        String password = rs.getString("password");
        String perPhone = rs.getString("perPhone");
        String homeAdd = rs.getString("homeAdd");
        String designation = rs.getString("designation");
        staff = new Staff (staff_ID,name,gender,nric,password,perPhone,homeAdd,designation);

        return staff;
    }

    public boolean validateLogin(String nric , String password) throws Exception {
        // declare local variables
        boolean login = false;
        Staff s = null;
        ResultSet rs = null;
        String dbQuery;
        PreparedStatement pstmt;

        // step 1 - connect to database
        StaffDAO db = new StaffDAO();
        db.getConnection();

        // step 2 - declare the SQL statement
        dbQuery = "SELECT * FROM staff WHERE nric =  ? AND password = ?";
        pstmt = db.getPreparedStatement(dbQuery);

        // step 3 - execute query
        try {

            pstmt.setString(1, nric);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                login = true;
                s = convertToStaff(rs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        db.terminate();

        return login;
    }

    public boolean updateStaff(String staff_ID,String password,String perPhone,String homeAdd) throws Exception {
        //declare local variables
        boolean success = false;
        StaffDAO db = new StaffDAO();
        String dbQuery;
        PreparedStatement pstmt;

        //step 1 - establish connection to database
        db.getConnection();

        //step 2 - declare the SQL statement
        dbQuery = "UPDATE staff SET password=?,perPhone=?,homeAdd=? WHERE staff_ID = ?";
        pstmt = db.getPreparedStatement(dbQuery);

        // step 3 - to insert record using executeUpdate method
        try {

            pstmt.setString(1, password);
            pstmt.setString(2, perPhone);
            pstmt.setString(3, homeAdd);
            pstmt.setString(4, staff_ID);

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










