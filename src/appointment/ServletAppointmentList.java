package appointment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletAppointmentList", urlPatterns = "/appointmentlist")
public class ServletAppointmentList extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
                AppointmentDAO db = new AppointmentDAO();
                Appointment show = db.getAppointment("11");
                // store bookdetails object in request scope with attribut name "book"
                // bookdetails.jsp will retrieve this stored object later to display the content
                request.setAttribute("Appointment", show);
                // forward the request to bookdetails.jsp, there must be a "/" before the web resource reference
                getServletContext().getRequestDispatcher("/appointmentList.jsp").forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }

    }
}