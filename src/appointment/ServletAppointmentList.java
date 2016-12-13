package appointment;

import appointment.AppointmentDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletAppointmentList", urlPatterns = "/appointmentlist")
public class ServletAppointmentList extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            AppointmentDAO db= new AppointmentDAO();
            List appointments=db.getAllAppointment();
            request.setAttribute("appointment", appointments);
            getServletContext().getRequestDispatcher("/appointments.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }
}