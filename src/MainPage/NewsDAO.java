package MainPage;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Hyy on 6/2/2017.
 */
public class NewsDAO {
    Connection con;

    public static String url = "jdbc:mysql://localhost/jedp";
    public static String dbdriver = "com.mysql.jdbc.Driver";
    public static String username = "root";
    public static String password = "mysql";

    public NewsDAO() throws Exception{

        Class.forName(dbdriver);
        con = DriverManager.getConnection(url, username, password);

    }

    public void getConnection() throws SQLException {

        if (con == null) con = DriverManager.getConnection(url, username, password);

    }


    public boolean createNews(String staffId, String title, String content) throws Exception {
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
        sqlQuery = "SELECT MAX(id) FROM news";
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
        sqlQuery = "INSERT INTO news(id, staffId, title,content)" + "VALUES(?, ?, ?, ?)";

        pstmt = db.getPreparedStatement(sqlQuery);
        try {
            pstmt.setInt(1, id);
            pstmt.setString(2,staffId);
            pstmt.setString(3,title);
            pstmt.setString(4, content);

            if (pstmt.executeUpdate() == 1)
                success = true;
            pstmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        db.terminate();
        return status;
    }

    public List<News> getAllNews(){
        String sql = "select * from news";
        ArrayList<News> list = new ArrayList<News>();
        try{
            getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs != null && rs.next()){

                News news = new News() ;
                news.setId(rs.getString("id"));
                news.setStaffId(rs.getString("staffId"));
                news.setTitle(rs.getString("title"));
                news.setContent(rs.getString("content"));
                list.add(news);

            }
            pstmt.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        return list;

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

