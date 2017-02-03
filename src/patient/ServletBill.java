package patient;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

@WebServlet(name = "ServletBill", urlPatterns = "/bill")
public class ServletBill extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
           BillDAO db = new BillDAO();
            ArrayList<Bill> list = new ArrayList<Bill>();
            for(int i = 0; i< list.size();i++){
                Bill bill = (Bill) (list.get(i));
                int billNo = bill.getBillNo();
                request.setAttribute("Bill", billNo);

            }

            getServletContext().getRequestDispatcher("/appointmentList.jsp").forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}