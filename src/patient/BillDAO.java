package patient;

import patient.Bill;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Mok on 2/3/2017.
 */
public class BillDAO {
    Connection con;

    public static String url = "jdbc:mysql://localhost/jedp";
    public static String dbdriver = "com.mysql.jdbc.Driver";
    public static String username = "root";
    public static String password = "mysql";

    public BillDAO() throws Exception{

        Class.forName(dbdriver);
        con = DriverManager.getConnection(url, username, password);

    }

    public void getConnection() throws SQLException {

        if (con == null) con = DriverManager.getConnection(url, username, password);

    }
    private Bill convertToBill(ResultSet rs) throws SQLException {
        Bill Bill;
        int billNo = rs.getInt("billNo");
        String pNric = rs.getString("pNric");
        String pName = rs.getString("pName");
        String services = rs.getString("services");
        String amount = rs.getString("amount");

        Bill = new Bill(billNo, pNric, pName, services, amount);

        return Bill;
    }

    public List<Bill> getAllBill(){
        String sql = "select * from bill";
        ArrayList<Bill> list = new ArrayList<Bill>();
        try{
            getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs != null && rs.next()){

                Bill bill = new Bill() ;
                bill.setBillNo(rs.getInt("billNo"));
                bill.setPNric(rs.getString("pNric"));
                bill.setPName(rs.getString("pName"));
                bill.setServices(rs.getString("services"));
                bill.setAmount(rs.getString("amount"));
                list.add(bill);

            }
            pstmt.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        return list;

    }


}
