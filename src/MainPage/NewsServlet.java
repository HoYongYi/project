package MainPage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import MainPage.News;
import MainPage.NewsDAO;
/**
 * Created by Hyy on 6/2/2017.
 */
@WebServlet(name = "NewsServlet", urlPatterns = "/news")
public class NewsServlet extends HttpServlet {
    News n ;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{
            NewsDAO db = new NewsDAO();

            HttpSession session=request.getSession();
            String staffId=request.getParameter("staffId");
            String title=request.getParameter("title");
            String content=request.getParameter("content");

            request.setAttribute("staffId", staffId);
            request.setAttribute("title", title);
            request.setAttribute("content", content);
            db.createNews(staffId,title,content);
            getServletContext().getRequestDispatcher("/Staff/createNewsSuccess.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
