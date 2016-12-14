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

    private LineChartModel lineModel1;
    private LineChartModel lineApptModel;
    Appointment appt = new Appointment();

    @PostConstruct
    public void init() {

        createLineModels();

    }

    public LineChartModel getLineModel1() {
        return lineModel1;
    }

    public LineChartModel getLineApptModel() {
        return lineApptModel;
    }

    private void createLineModels() {
        lineModel1 = initLinearModel();
        lineModel1.setTitle("Linear Chart");
        lineModel1.setLegendPosition("e");
        Axis yAxis = lineModel1.getAxis(AxisType.Y);
        yAxis.setLabel("Year");
        yAxis.setMin(0);
        yAxis.setMax(10);
        Axis xAxis = lineModel1.getAxis(AxisType.X);
        xAxis.setLabel("Number");
        xAxis.setMin(0);
        xAxis.setMax(10);


    }

    private LineChartModel initLinearModel() {
        LineChartModel model = new LineChartModel();

        LineChartSeries series1 = new LineChartSeries();
        series1.setLabel("Series 1");

        series1.set(1, 2);
        series1.set(2, 1);
        series1.set(3, 3);
        series1.set(4, 6);
        series1.set(5, 8);

        LineChartSeries series2 = new LineChartSeries();
        series2.setLabel("Series 2");

        series2.set(1, 6);
        series2.set(2, 3);
        series2.set(3, 2);
        series2.set(4, 7);
        series2.set(5, 9);

        model.addSeries(series1);
        model.addSeries(series2);

        return model;
    }

    //x = year , y = no. of appt
    private LineChartModel initLineApptModel() throws Exception {
        LineChartModel model = new LineChartModel();
        AppointmentDAO apptDAO = new AppointmentDAO();
        List<Appointment> apptList = apptDAO.getAllAppointment();

        LineChartSeries series1 = new LineChartSeries();
        series1.setLabel("Average appointment per year");

        series1.set(1, 2);
        series1.set(2, 1);
        series1.set(3, 3);
        series1.set(4, 6);
        series1.set(5, 8);

        model.addSeries(series1);

        return model;
    }


}

