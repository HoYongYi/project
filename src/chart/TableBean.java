package chart;

import appointment.Appointment;
import chart.DataValues;
import appointment.AppointmentDAO;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.primefaces.event.SelectEvent;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

/**
 * Created by acer on 29/1/2017.
 */
@ManagedBean(name="tableBean")
@ViewScoped
public class TableBean implements Serializable {

    private List<ColumnModel> columns;
    private List<DataValues> dataValues;
    List<Appointment> apptList;
    List<Appointment> selectYearAppt = new ArrayList<Appointment>();
    private String colName;
    private DataValues selectedRow;
    private String buttonValue;
    private int navValue;

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
            apptList = dao.getAllAppointment();
            Appointment appt = new Appointment();
            int numAppt;
            String temp;

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
            navValue = 0;
            buttonValue = "View";

        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    private void createDynamicColumns(){
        columns = new ArrayList<ColumnModel>();
        columns.add(new ColumnModel("Period","period"));
        columns.add(new ColumnModel("Amount","amount"));
        columns.add(new ColumnModel("Percentage","percentage"));
    }


    private String calPercent(int value , int total){
        DecimalFormat df = new DecimalFormat("#0.0#");
        double percent = (double)value / total;
        return df.format(percent*100);
    }


    public void changeData(){
        if(navValue == 0){
            String year = selectedRow.getPeriod();
            dataValues.clear();
            String apptYear;
            int numAppt;
            String[] monthArr = {"01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"};
            String[] month={"Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec"};
            Appointment appt;

            //get all appt of that year
            for(int i = 0 ; i < apptList.size(); i++){
                appt = apptList.get(i);
                apptYear= appt.getDate().substring(6);
                if(apptYear.equals(year)){
                    selectYearAppt.add(appt);
                }
            }
            //count appt in diff months
            for(int x = 0 ; x < monthArr.length; x++){
                numAppt = 0;
                for(int i = 0 ; i < selectYearAppt.size(); i++){
                    appt = selectYearAppt.get(i);
                    if(appt.getDate().substring(3,5).equals(monthArr[x])){
                        numAppt = numAppt+1;
                    }

                }
                DataValues dv = new DataValues(month[x],numAppt,calPercent(numAppt, apptList.size()));
                dataValues.add(dv);
            }
            navValue = 1;
            buttonValue = "Back";
        }

        else{
            addTableView();
        }
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

    public DataValues getSelectedRow() {
        return selectedRow;
    }

    public void setSelectedRow(DataValues selectedRow) {
        this.selectedRow = selectedRow;
    }

    public String getButtonValue() {
        return buttonValue;
    }

    public void setButtonValue(String buttonValue) {
        this.buttonValue = buttonValue;
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

