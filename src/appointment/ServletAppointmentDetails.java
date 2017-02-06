//package appointment;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//
//
//@WebServlet(name = "ServletAppointmentDetails", urlPatterns = "/appointment")
//public class ServletAppointmentDetails extends HttpServlet {
//    Appointment a;
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        HttpSession session = request.getSession();
//
//        try{
//            AppointmentDAO db = new AppointmentDAO();
//
//            String name=request.getParameter("name");
//            String nric=request.getParameter("nric");
//            String time=request.getParameter("time");
//            String date=request.getParameter("date");
//            String description=request.getParameter("description");
//
//            System.out.println(request.getParameter("name"));
//            System.out.println(request.getParameter("nric"));
//            System.out.println(request.getParameter("time"));
//            System.out.println(request.getParameter("date"));
//            System.out.println(request.getParameter("description"));
//
//
//            //pointment apt;Ap
//            request.setAttribute("name", name);
//            request.setAttribute("nric", nric);
//            request.setAttribute("time", time);
//            request.setAttribute("date", date);
//            request.setAttribute("description", description);
//            db.createAppointment(name,nric,time,date,description);
//
//            String text="Hi "+name+ ", you have made an appointment for "+date+" at "+time;
//
//            System.out.println(session.getAttribute("phone"));
//
//            SMS.method("+65" + session.getAttribute("phone"),text);
//
//            getServletContext().getRequestDispatcher("/appointmentSuccess.jsp").forward(request, response);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//}