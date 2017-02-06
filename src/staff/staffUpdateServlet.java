package staff;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by wenya on 6/2/2017.
 */
@WebServlet(name = "staffUpdateServlet", urlPatterns = "/staffUpdate")
public class staffUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            StaffDAO db = new StaffDAO();

            HttpSession session = request.getSession();

            String staffId = (String)session.getAttribute("id");
            String name =  request.getParameter("name");
            String password =  request.getParameter("password");
            String phone =  request.getParameter("perPhone");
            String address =  request.getParameter("homeAdd");

            db.updateStaff(staffId,password,phone,address);
            getServletContext().getRequestDispatcher("/Staff/doctor.jsp").forward(request, response);

        }catch(Exception e){

        }
    }
}
