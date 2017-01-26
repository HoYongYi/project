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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session=request.getSession();
        String name=request.getParameter("name");
        String nric=request.getParameter("nric");
        String time=request.getParameter("time");
        String date=request.getParameter("date");
        String description=request.getParameter("description");
        //Appointment apt;
        request.setAttribute("name", name);
        request.setAttribute("nric", nric);
        request.setAttribute("time", time);
        request.setAttribute("date", date);
        request.setAttribute("description", description);
        getServletContext().getRequestDispatcher("/appointmentSuccess.jsp").forward(request, response);
    }
}