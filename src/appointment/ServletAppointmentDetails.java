package appointment;

import appointment.Appointment;
import appointment.AppointmentDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "ServletAppointmentDetails", urlPatterns = "/appointment")
public class ServletAppointmentDetails extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String apptId = request.getParameter("apptId");
            if (apptId != null) {
                AppointmentDAO db= new AppointmentDAO();
                Appointment details=db.getAppointment(apptId);
                request.setAttribute("book", details);
                getServletContext().getRequestDispatcher("/details.jsp").forward(request,response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }
}