package chart;

import appointment.Appointment;
import appointment.AppointmentDAO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;

/**
 * Created by acer on 29/1/2017.
 */
@ManagedBean
public class TableBean implements Serializable {

    private List<ColumnModel> columns;
    private List<Appointment> appt;

    private String colName;

    public TableBean() {
        createDynamicColumns();
        addTableView();
    }

    private void addTableView(){
        appt = new ArrayList<Appointment>();
        try {
            AppointmentDAO dao = new AppointmentDAO();

        } catch (Exception e) {
            e.printStackTrace();
        }
        //retrieve and add to arraylist

    }

    private void createDynamicColumns(){
        columns = new ArrayList<ColumnModel>();
        columns.add(new ColumnModel("Types","type"));
        columns.add(new ColumnModel("Amount","amount"));
        columns.add(new ColumnModel("Percentage","percentage"));
    }

    public List<Appointment> getAppt(){
        return appt;
    }

    public void setTableView(List<Appointment> tableView){
        this.appt = tableView;
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

