package MainPage;

import MainPage.News;
import MainPage.NewsDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Hyy on 7/2/2017.
 */
@WebServlet(name = "NewsListServlet", urlPatterns = "/newslist")
public class NewsListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            NewsDAO db = new NewsDAO();
            News n = new News();
            List<News> newsList = db.getAllNews();
            request.setAttribute("News", newsList);
            getServletContext().getRequestDispatcher("/Guest/event1.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}