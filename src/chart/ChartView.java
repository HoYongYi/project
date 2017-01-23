package chart;

/**
 * Created by acer on 14/12/2016.
 */
import javax.annotation.PostConstruct;
import java.io.Serializable;
import java.util.List;
import javax.faces.bean.ManagedBean;

import appointment.Appointment;
import appointment.AppointmentDAO;
import org.primefaces.model.chart.*;

@ManagedBean
public class ChartView implements Serializable {

    private BarChartModel barModel;
    private LineChartModel lineModel;

    @PostConstruct
    public void init() {
        createBarModels();
        createLineModels();
    }

    public BarChartModel getBarModel() {
        return barModel;
    }
    public LineChartModel getLineModel() {
        return lineModel;
    }

    private BarChartModel initBarModel() {
        BarChartModel model = new BarChartModel();
        model.addSeries(numApptYear());
        return model;
    }

    private void createBarModels() {
        createBarModel();
    }

    private void createBarModel() {
        barModel = initBarModel();

        barModel.setTitle("Bar Chart");
        barModel.setLegendPosition("ne");

        Axis xAxis = barModel.getAxis(AxisType.X);
        xAxis.setLabel("Year");

        Axis yAxis = barModel.getAxis(AxisType.Y);
        yAxis.setLabel("No. of Appointment");
        yAxis.setMin(0);
        yAxis.setMax(40);
    }

    private void createLineModels() {

        lineModel = initLineModel();
        lineModel.setTitle("Line Chart");
        lineModel.setLegendPosition("e");
        lineModel.setShowPointLabels(true);
        Axis yAxis = lineModel.getAxis(AxisType.Y);
        lineModel.getAxes().put(AxisType.X, new CategoryAxis("No. of Appointment"));
        yAxis.setLabel("Year");
        yAxis.setMin(0);
        yAxis.setMax(200);
    }

    private LineChartModel initLineModel() {
        LineChartModel model = new LineChartModel();
        model.addSeries(numApptYear());
        return model;
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

}

