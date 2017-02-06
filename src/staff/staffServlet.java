package staff;

import patient.Patient;
import patient.PatientDAO;
import video.Record;
import video.RecordDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by wenya on 5/2/2017.
 */
@WebServlet(name = "staffServlet", urlPatterns = "/staff")
public class staffServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String nric = request.getParameter("search");

            StaffDAO db = new StaffDAO();
            Staff staff = db.getStaff(nric);

            String staffId = staff.getStaff_ID();
            String name = staff.getName();
            //nric
            String gender = staff.getGender();
            String password = staff.getPassword();
            String perPhone = staff.getPerPhone();
            String homeAdd = staff.getHomeAdd();
            String designation = staff.getDesignation();


            System.out.println("staffid "+staffId);
            System.out.println("name "+name);
            System.out.println("nric "+nric);
            System.out.println("gender "+gender);
            System.out.println("password "+password);
            System.out.println("perPhone "+perPhone);
            System.out.println("homeAdd "+homeAdd);
            System.out.println("designation "+designation);

            request.setAttribute("staffId", staffId);
            request.setAttribute("name", name);
            request.setAttribute("nric", nric);
            request.setAttribute("gender", gender);
            request.setAttribute("password", password);
            request.setAttribute("perPhone", perPhone);
            request.setAttribute("homeAdd", homeAdd);
            request.setAttribute("designation", designation);

            getServletContext().getRequestDispatcher("/Staff/viewStaff.jsp").forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            StaffDAO db = new StaffDAO();

            String name = request.getParameter("name");
            String gender =  request.getParameter("gender");
            String nric =  request.getParameter("nric");
            String password =  request.getParameter("password");
            String phone =  request.getParameter("phone");
            String address =  request.getParameter("address");
            String designation = request.getParameter("designation");

            System.out.println("name "+name);
            System.out.println("gender "+gender);
            System.out.println("nric "+nric);
            System.out.println("password "+password);
            System.out.println("phone "+phone);
            System.out.println("address "+address);
            System.out.println("designation "+designation);

            request.setAttribute("name", name);
            request.setAttribute("gender", gender);
            request.setAttribute("nric", nric);
            request.setAttribute("password", password);
            request.setAttribute("phone", phone);
            request.setAttribute("address", address);
            request.setAttribute("designation", designation);

            db.createStaff(name,gender,nric,password,phone,address,designation);
            getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

        }catch(Exception e) {
            e.printStackTrace();
        }
    }
}
