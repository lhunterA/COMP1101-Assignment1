package Controllers;

/*
Had to import the classes so that the controller had access to the methods.
 */
import Utilities.DBUtility;
import Utilities.SceneChanger;


import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class ProvinceVoterTurnoutController implements Initializable {



    /*
          Below code is an example from Java Docs from Oracle: https://docs.oracle.com/javafx/2/charts/bar-chart.htm
    */

    @FXML
    private CategoryAxis provinceXAxis = new CategoryAxis(); //add the = new CategoryAxis(); by javadoc recommendations

    @FXML
    private NumberAxis avgYAxis = new NumberAxis(); //add the = new NumberAxis(); by javadoc recommendations

    /*
    Moved this below to allow the Axis variables to not red out.
     */
    @FXML
    private BarChart<String, Number> electionBarChart = new BarChart<String,Number>(provinceXAxis,avgYAxis);


    @Override
    public void initialize(URL location, ResourceBundle resources)
    {
        /*
        Below code is an example from Java Docs from Oracle: https://docs.oracle.com/javafx/2/charts/bar-chart.htm
         */
        provinceXAxis.setLabel("Provinces");
        avgYAxis.setLabel("Percentages");
        //electionBarChart.setTitle("2019 Canadian Election Voter Turnout");

        XYChart.Series<String, Number> series = new XYChart.Series<>(); //imported the XYChart class which is a parent class of BarChart takes a String and Number
       // series.setName("VoterTurnout by Percent");

        XYChart.Series<String, Number> electionResults = null;

        try {
            electionResults = DBUtility.getVoterTurnoutByProvince();
            electionResults.setName("Voter Turnout by Percent"); //adding a legend to the bottom of the chart
            electionBarChart.getData().addAll(electionResults);//adding the array of data to the chart using getData instead of addItems();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }


    /**
     * When the button on the ProvinceVoterTurnoutView is clicked change to the TableView
     * Uses the class Utilities.SceneChanger method changeScene() which takes 2 arguments, the fxml file that wants to be viewed
     * and the new title for the new scene.
     * @param event
     * @throws IOException
     */
    @FXML
    private void viewBarChart(ActionEvent event) throws IOException {
        SceneChanger.changeScene(event, "../Views/TableView.fxml", "2019 Canadian Election"); //on the event go to the view chosen, and title
    }
}
