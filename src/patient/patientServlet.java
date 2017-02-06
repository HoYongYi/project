package patient;

import patient.PatientDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "patientServlet", urlPatterns = "/patient")
public class patientServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {




    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            PatientDAO db = new PatientDAO();

            String name = request.getParameter("name");
            String gender =  request.getParameter("gender");
            String nric =  request.getParameter("nric");
            String password =  request.getParameter("password");
            String x =  request.getParameter("age");

            int age = Integer.parseInt(x);

            request.setAttribute("name", name);
            request.setAttribute("gender", gender);
            request.setAttribute("nric", nric);
            request.setAttribute("password", password);
            request.setAttribute("age", age);

            db.createPatient(name,nric,password,gender,age);
            getServletContext().getRequestDispatcher("/login/login.html").forward(request, response);


        }catch(Exception e) {
            e.printStackTrace();
        }
    }
}
