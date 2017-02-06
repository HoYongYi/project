package MainPage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//import static org.omnifaces.util.Faces.getServletContext;

/**
 * Created by Hyy on 6/2/2017.
 */
@WebServlet(name = "EventServlet", urlPatterns = "/event")
public class EventServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("search");

            EventDAO db = new EventDAO();
            Event event = db.getEventById(id);

            String title = event.getTitle();
            String venue = event.getVenue();
            String staffId = event.getStaffId();
            String date = event.getDate();
            String content = event.getContent();

            System.out.println(title);
            System.out.println(venue);
            System.out.println(staffId);
            System.out.println(date);
            System.out.println(content);


            request.setAttribute("id", id);
            request.setAttribute("title", title);
            request.setAttribute("venue", venue);
            request.setAttribute("staffId", staffId);
            request.setAttribute("date", date);
            request.setAttribute("content", content);

            getServletContext().getRequestDispatcher("/Guest/event1.jsp").forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            EventDAO db = new EventDAO();

            HttpSession session=request.getSession();
            String title=request.getParameter("title");
            String venue=request.getParameter("venue");
            String staffId=request.getParameter("staffId");
            String date=request.getParameter("date");
            String content=request.getParameter("content");

            request.setAttribute("title", title);
            request.setAttribute("venue", venue);
            request.setAttribute("staffId", staffId);
            request.setAttribute("date", date);
            request.setAttribute("content", content);

            db.createEvent(title,venue,staffId,date,content);
            getServletContext().getRequestDispatcher("/Staff/createEvents.jsp").forward(request, response);

        }catch(Exception e) {
            e.printStackTrace();
        }
    }
}
