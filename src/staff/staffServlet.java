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
