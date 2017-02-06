package login; /**
 * Created by wenya on 30/1/2017.
 */
import patient.Patient;
import patient.PatientDAO;
import staff.Staff;
import staff.StaffDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "login", urlPatterns = "/login")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        String username = request.getParameter("username");
        String password =  request.getParameter("password");



        System.out.println("username "+username);
        System.out.println("password "+password);


        try {
            StaffDAO s = new StaffDAO();
            PatientDAO p = new PatientDAO();

            if(s.validateLogin(username, password)){

                Staff staff = s.getStaff(username);
                String name = staff.getName();
                String id = staff.getStaff_ID();
                String homeAdd = staff.getHomeAdd();
                String perPhone = staff.getPerPhone();

                session.setAttribute("name", name);
                session.setAttribute("id", id);
                session.setAttribute("password", password);
                session.setAttribute("homeAdd", homeAdd);
                session.setAttribute("perPhone", perPhone);


                getServletContext().getRequestDispatcher("/Staff/doctor.jsp").forward(request, response);
            }
            else if(p.validateLogin(username, password)){

                Patient patient = p.getPatient(username);
                String name = patient.getPName();
                String id = patient.getPID();
                String nric = patient.getPNric();
                String phone = patient.getPhoneNo();

                System.out.println(name);

                session.setAttribute("name", name);
                session.setAttribute("pid", id);
                session.setAttribute("nric", nric);
                session.setAttribute("phone", phone);


                getServletContext().getRequestDispatcher("/Patient/client.jsp").forward(request, response);
            }else{
                getServletContext().getRequestDispatcher("/login/login.html").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            getServletContext().getRequestDispatcher("/login/login.html").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}