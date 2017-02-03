package appointment;

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
        try {
           AppointmentDAO db = new AppointmentDAO();
            Appointment a = new Appointment();
            List<Appointment> apptList = db.getAllAppointment();

//            HttpSession session=request.getSession();

          //  Appointment show = db.getAppointment("1");
            request.setAttribute("Appointment", apptList);
            getServletContext().getRequestDispatcher("/appointmentList.jsp").forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}