package appointment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "ServletAppointmentDetails", urlPatterns = "/appointment")
public class ServletAppointmentDetails extends HttpServlet {
    Appointment a;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{
            AppointmentDAO db = new AppointmentDAO();

            HttpSession session=request.getSession();
            String name=request.getParameter("name");
            String nric=request.getParameter("nric");
            String time=request.getParameter("time");
            String date=request.getParameter("date");
            String description=request.getParameter("description");
            //pointment apt;Ap
            session.setAttribute("name", name);
            session.setAttribute("nric", nric);
            session.setAttribute("time", time);
            session.setAttribute("date", date);
            session.setAttribute("description", description);
            db.createAppointment(name,nric,time,date,description);
            getServletContext().getRequestDispatcher("/appointmentSuccess.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}