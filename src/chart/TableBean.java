package chart;

import appointment.Appointment;
import chart.DataValues;
import appointment.AppointmentDAO;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.primefaces.event.ItemSelectEvent;
import org.primefaces.event.SelectEvent;
import patient.Patient;
import patient.PatientDAO;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

/**
 * Created by acer on 29/1/2017.
 */
@ManagedBean(name="tableBean")
@ViewScoped
public class TableBean implements Serializable {

    private List<ColumnModel> columns;
    private List<ColumnModel> pieColumns;
    private List<DataValues> dataValues;
    private List<PieValues> pieDataValues;
    List<Appointment> apptList;
    List<Appointment> selectYearAppt = new ArrayList<Appointment>();
    private String colName;
    private DataValues selectedRow;
    private String buttonValue;
    private int navValue;
    private String selectedMenu = null;

    public TableBean() {
        createDynamicColumns();
        addTableView();
        addPieTableView();
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

    private void addPieTableView(){
        pieDataValues = new ArrayList<PieValues>();

        try {
            PatientDAO dao = new PatientDAO();
            Patient p = new Patient();
            List<Patient> pList = dao.getAllPatient();
            int[] ageGrpValue = calAgeGrp(pList);
            String[] ageGrp = {"20 and below", "Between 20 and 40", "Between 40 and 60", "60 and above"};

           for(int i = 0; i< ageGrpValue.length; i++){
               PieValues pv = new PieValues(ageGrp[i],ageGrpValue[i],calPercent(ageGrpValue[i],pList.size()));
               pieDataValues.add(pv);
           }
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
        DecimalFormat df = new DecimalFormat("#0.00");
        double percent = (double)value / total;
        return df.format(percent*100);
    }

    private int[] calAgeGrp(List<Patient> pList){
        Patient p = new Patient();
        int below20 =0;
        int between20n40 =0;
        int between40n60 =0;
        int above60 = 0;

        for(int i = 0; i < pList.size() ; i ++){
            p = pList.get(i);
            if(p.getAge() <= 20){
                below20 = below20+1;
            }
            else if(p.getAge() <= 40){
                between20n40 = between20n40 + 1;
            }
            else if(p.getAge() <= 60){
                between40n60 = between40n60 + 1;
            }
            else{
                above60 = above60 + 1;
            }
        }
        int[] ageGrp = {below20, between20n40, between40n60, above60};
        return ageGrp;
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

    public void itemSelect(ItemSelectEvent event) {
        int selected = event.getItemIndex();
        String[] ageGrp = {"20 and below", "Between 20 and 40", "Between 40 and 60", "60 and above"};
        Patient p = new Patient();
        pieDataValues.clear();


        PatientDAO pDao = null;
        try {
            pDao = new PatientDAO();
            //male
            if (selected == 0) {
                List<Patient> maleList = pDao.getPatientByGender("Male");
                int[] grpValues = calAgeGrp(maleList);

                for (int x = 0; x < ageGrp.length; x++) {
                    PieValues pv = new PieValues(ageGrp[x], grpValues[x], calPercent(grpValues[x], maleList.size()));
                    pieDataValues.add(pv);
                }
            }
            //female
            else {
                List<Patient> femaleList = pDao.getPatientByGender("Female");
                int[] grpValues = calAgeGrp(femaleList);

                for (int x = 0; x < ageGrp.length; x++) {
                    PieValues pv = new PieValues(ageGrp[x], grpValues[x], calPercent(grpValues[x], femaleList.size()));
                    pieDataValues.add(pv);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<ColumnModel> getColumns() {
        return columns;
    }

    public void setColumns(List<ColumnModel> columns) {
        this.columns = columns;
    }

    public List<ColumnModel> getPieColumns() {
        return pieColumns;
    }

    public void setPieColumns(List<ColumnModel> pieColumns) {
        this.pieColumns = pieColumns;
    }

    public List<DataValues> getDataValues() {
        return dataValues;
    }

    public void setDataValues(List<DataValues> dataValues) {
        this.dataValues = dataValues;
    }

    public List<PieValues> getPieDataValues() {
        return pieDataValues;
    }

    public void setPieDataValues(List<PieValues> pieDataValues) {
        this.pieDataValues = pieDataValues;
    }

    public List<Appointment> getApptList() {
        return apptList;
    }

    public void setApptList(List<Appointment> apptList) {
        this.apptList = apptList;
    }

    public List<Appointment> getSelectYearAppt() {
        return selectYearAppt;
    }

    public void setSelectYearAppt(List<Appointment> selectYearAppt) {
        this.selectYearAppt = selectYearAppt;
    }

    public String getColName() {
        return colName;
    }

    public void setColName(String colName) {
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

    public int getNavValue() {
        return navValue;
    }

    public void setNavValue(int navValue) {
        this.navValue = navValue;
    }

    public String getSelectedMenu() {
        return selectedMenu;
    }

    public void setSelectedMenu(String selectedMenu) {
        this.selectedMenu = selectedMenu;
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



