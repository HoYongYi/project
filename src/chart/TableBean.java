package chart;

import appointment.Appointment;
import chart.DataValues;
import appointment.AppointmentDAO;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;

/**
 * Created by acer on 29/1/2017.
 */
@ManagedBean
public class TableBean implements Serializable {

    private List<ColumnModel> columns;
    private List<DataValues> dataValues;

    private String colName;

    public TableBean() {
        createDynamicColumns();
        addTableView();
    }

    private void addTableView(){
        dataValues = new ArrayList<DataValues>();
        try {
            //retrieve, process and add to arraylist
            AppointmentDAO dao = new AppointmentDAO();
            String [] yearArr = {"2001", "2002","2003","2004","2005","2006","2007","2008",
                    "2009","2010","2011","2012","2013","2014","2015","2016","2017"};
            List<Appointment> apptList = dao.getAllAppointment();
            Appointment appt = new Appointment();
            int numAppt;
            String temp = null;

            for(int i = 0 ; i < yearArr.length; i++) {
                numAppt = 0;
                for (int j = 0; j < apptList.size(); j++) {
                    appt = apptList.get(j);
                    temp = appt.getDate().substring(6);
                    if (temp.equals(yearArr[i])) {
                        numAppt = numAppt + 1;
                    }
                }

                DataValues dv = new DataValues(yearArr[i], numAppt, calPercent(numAppt, apptList.size()));
                dataValues.add(dv);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    private void createDynamicColumns(){
        columns = new ArrayList<ColumnModel>();
        columns.add(new ColumnModel("Year","year"));
        columns.add(new ColumnModel("Amount","amount"));
        columns.add(new ColumnModel("Percentage","percentage"));
    }
    private String calPercent(int value , int total){
        DecimalFormat df = new DecimalFormat("#0.00");
        double percent = (double)value / total;

        return df.format(percent);
    }

    public List<DataValues> getDataValues(){
        return dataValues;
    }

    public void setTableView(List<DataValues> tableView){
        this.dataValues = tableView;
    }

    public List<ColumnModel> getColumns(){
        return columns;
    }

    public String getColName(){
        return colName;
    }

    public void setColName(String colName){
        this.colName = colName;
    }

    public static class ColumnModel implements Serializable{

        private String header;
        private String property;

        public ColumnModel(String header, String property){
            this.header = header;
            this.property = property;
        }

        public String getHeader(){
            return header;
        }

        public String getProperty(){
            return property;
        }

    }

}

