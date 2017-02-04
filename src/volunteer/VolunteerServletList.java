package volunteer;


import volunteer.Volunteer;
import volunteer.VolunteerDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Hyy on 4/2/2017.
 */

@WebServlet(name = "VolunteerServletList", urlPatterns = "/volunteerlist")
public class VolunteerServletList extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            VolunteerDAO db = new VolunteerDAO();
            Volunteer v = new Volunteer();
            List<Volunteer> volunteerList = db.getAllVolunteer();

//            HttpSession session=request.getSession();

            //  Appointment show = db.getAppointment("1");
            request.setAttribute("Volunteer", volunteerList);
            getServletContext().getRequestDispatcher("/volunteerlist.jsp").forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
