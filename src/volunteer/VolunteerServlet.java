package volunteer;

import volunteer.Volunteer;
import volunteer.VolunteerDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by Hyy on 3/2/2017.
 */
    @WebServlet(name = "VolunteerServlet", urlPatterns = "/volunteer")
    public class VolunteerServlet extends HttpServlet {
        Volunteer v;
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            try{
                VolunteerDAO db = new VolunteerDAO();

                HttpSession session=request.getSession();
                String Name=request.getParameter("Name");
                String NRIC=request.getParameter("NRIC");
                String HPNum=request.getParameter("HPNum");
                String Reason=request.getParameter("Reason");
                String Email=request.getParameter("Email");
                //pointment apt;Ap
                request.setAttribute("Name", Name);
                request.setAttribute("NRIC", NRIC);
                request.setAttribute("HPNum", HPNum);
                request.setAttribute("Reason", Reason);
                request.setAttribute("Email", Email);
                db.createVolunteer(Name,NRIC,HPNum,Reason,Email);
                getServletContext().getRequestDispatcher("/volunteerSuccess.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
