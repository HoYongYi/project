package chart;

/**
 * Created by acer on 14/12/2016.
 */
import javax.annotation.PostConstruct;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;

import appointment.Appointment;
import appointment.AppointmentDAO;
import org.primefaces.model.chart.*;
import patient.Patient;
import patient.PatientDAO;

@ManagedBean
public class ChartView implements Serializable {

    private BarChartModel barModel;
    private PieChartModel pieModel;
    //private LineChartModel lineModel;

    @PostConstruct
    public void init() {
        createBarModels();
        createPieModel();
        //createLineModel();
    }

    public BarChartModel getBarModel() {
        return barModel;
    }

    private BarChartModel initBarModel() {
        BarChartModel model = new BarChartModel();
        model.addSeries(numApptYear());
        return model;
    }

    private void createBarModels() {
        barModel = initBarModel();

        barModel.setTitle("Appointment Chart");
        barModel.setLegendPosition("ne");

        Axis xAxis = barModel.getAxis(AxisType.X);
        xAxis.setLabel("Year");

        Axis yAxis = barModel.getAxis(AxisType.Y);
        yAxis.setLabel("No. of Appointment");
        yAxis.setMin(0);
        yAxis.setMax(40);

    }

    public PieChartModel getPieModel() {
        return pieModel;
    }

    private void createPieModel(){
        pieModel = new PieChartModel();

        //add in piechart data
        PatientDAO pDAO = null;
        try {
            pDAO = new PatientDAO();
            Patient p = new Patient();
            List<Patient> pList = pDAO.getAllPatient();
            int numMPatient = 0;
            int numFPatient = 0;
            for(int i = 0; i < pList.size() ; i ++){
                p = pList.get(i);
                if(p.getGender().equals("Male")){
                    numMPatient = numMPatient + 1;
                }
            }
            numFPatient = pList.size() - numMPatient;

            pieModel.set("Male", numMPatient);
            pieModel.set("Female", numFPatient);

            pieModel.setTitle("Patient Pie");
            pieModel.setLegendPosition("ne");
            pieModel.setShowDataLabels(true);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private ChartSeries numApptYear(){
        String [] yearArr = {"2001", "2002","2003","2004","2005","2006","2007","2008",
                "2009","2010","2011","2012","2013","2014","2015","2016","2017"};
        ChartSeries avgAppt = new ChartSeries();
        avgAppt.setLabel("Num of Appointment");
        AppointmentDAO dao = null;
        try {
            dao = new AppointmentDAO();
            Appointment a = new Appointment();
            List<Appointment> apptList = dao.getAllAppointment();
            int numAppt;
            String temp = null;

            for(int i = 0 ; i < yearArr.length; i++){
                numAppt = 0;
                for(int j = 0 ; j < apptList.size(); j++){
                    a = apptList.get(j);
                    temp = a.getDate().substring(6);
                    if(temp.equals(yearArr[i])){
                        numAppt = numAppt + 1;
                    }
                }

                avgAppt.set(yearArr[i],numAppt);
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return avgAppt;
    }

    /*

    public LineChartModel getLineModel() {
        return lineModel;
    }

    public void setLineModel(LineChartModel lineModel) {
        this.lineModel = lineModel;
    }

    private LineChartModel initLinearModel(){
        LineChartModel model = new LineChartModel();
        model.addSeries(numParticipation());
        return model;
    }

    private void createLineModel(){
        lineModel = initLinearModel();
        lineModel.setTitle("Event Participation");
        lineModel.setLegendPosition("ne");
        Axis yAxis = lineModel.getAxis(AxisType.Y);
        yAxis.setLabel("No. of Appointment");

        Axis xAxis = lineModel.getAxis(AxisType.X);
        xAxis.setLabel("Events");
    }

    private LineChartSeries numParticipation(){
        LineChartSeries participation = new LineChartSeries();
        participation.setLabel("Participation");
        //add in data
        participation.set("Event A", 300);
        participation.set("Event B", 347);
        participation.set("Event C", 452);
        participation.set("Event D", 561);
        participation.set("Event E", 621);
        return participation;
    }

    */

}

