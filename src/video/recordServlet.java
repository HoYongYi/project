package video;

import appointment.Appointment;
import appointment.AppointmentDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by wenya on 5/2/2017.
 */
@WebServlet(name = "recordServlet", urlPatterns = "/record")
public class recordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String patientId = request.getParameter("search");

            RecordDAO db = new RecordDAO();
            Record record = db.getRecordByPatient(patientId);

            String staffId = record.getStaffId();
            String date = record.getDate();
            String comments = record.getNotes();

            System.out.println(patientId);
            System.out.println(staffId);
            System.out.println(date);
            System.out.println(comments);


            request.setAttribute("patientId", patientId);
            request.setAttribute("staffId", staffId);
            request.setAttribute("date", date);
            request.setAttribute("comments", comments);

            getServletContext().getRequestDispatcher("/video/viewRecord.jsp").forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            RecordDAO db = new RecordDAO();

            HttpSession session=request.getSession();
            String patientId=request.getParameter("patientId");
            String staffId=request.getParameter("staffId");
            String date=request.getParameter("date");
            String comments=request.getParameter("comments");

            request.setAttribute("patientId", patientId);
            request.setAttribute("staffId", staffId);
            request.setAttribute("date", date);
            request.setAttribute("comments", comments);

            db.createRecord(patientId,staffId,date,comments);
            getServletContext().getRequestDispatcher("/Staff/doctor.jsp").forward(request, response);

        }catch(Exception e) {
            e.printStackTrace();
        }
    }
}
