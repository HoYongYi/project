package MainPage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import MainPage.Event;
import MainPage.EventDAO;

/**
 * Created by Hyy on 7/2/2017.
 */
@WebServlet(name = "EventListServlet", urlPatterns = "/eventlist")
public class EventListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            EventDAO db = new EventDAO();
            Event e = new Event();
            List<Event> eventList = db.getAllEvent();
            request.setAttribute("Event", eventList);
            getServletContext().getRequestDispatcher("/event1.jsp").forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
