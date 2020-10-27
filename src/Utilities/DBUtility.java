package Utilities;

import Models.ElectionResult;
import javafx.scene.chart.XYChart;

import java.sql.*;
import java.util.ArrayList;

public class DBUtility
{
    private static String user = "root"; //set user name
    private static String pass = ""; //set password variable


    /**
     *  Method to obtain all the info from the database to view in a table
     *  Returns all info in the database
     */
    public static ArrayList<ElectionResult> getAllElectionResults () throws SQLException
    {
       ArrayList<ElectionResult> er = new ArrayList<>();

        //set up variables to hold configurations
       Connection connection = null;
       Statement statement = null;
       ResultSet resultSet = null;

       //try catch to run or not based on the data
       try
       {
           connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/F20COMP1101", user, pass);

           statement = connection.createStatement();

           resultSet = statement.executeQuery("SELECT * FROM elections_results"); //retrieve info from the database

           while (resultSet.next())
           {
               ElectionResult elecResults = new ElectionResult(
                       resultSet.getInt("ID"),                      //match the column names from the db
                       resultSet.getString("Province"),             //not the model
                       resultSet.getString("ElectoralDistrictName"),
                       resultSet.getInt("ElectoralDistrictNum"),
                       resultSet.getInt("Population"),
                       resultSet.getInt("Electors"),
                       resultSet.getInt("NumberOfPollingStations"),
                       resultSet.getInt("ValidBallots"),
                       resultSet.getDouble("PercentageValidBallots"),
                       resultSet.getInt("RejectedBallots"),
                       resultSet.getDouble("PercentageRejectBallots"),
                       resultSet.getInt("TotalBallotsCast"),
                       resultSet.getDouble("VoterTurnoutPercent"),
                       resultSet.getString("ElectedCandidate")

               );
               er.add(elecResults); //add to the Array list that will display
           }

       } catch (Exception e)
           {
           e.printStackTrace();
            }
       finally
       {
           if (connection != null)
           {
               connection.close(); //if the connection is not already closed then close it
           }
           if (statement != null)
           {
               statement.close();
           }
           if (resultSet != null)
           {
               resultSet.close();
           }
           return er;
       }
    }


    /**
     *  Method to obtain province and avg voter turnout across the province to see which province doesnt vote as much as the others.
     *  Needed the output list to be the same as the XYChart class so changed from ArrayList to XYChart Series
     *  This video was extremely helpful when it came to syntax for line 112: https://www.youtube.com/watch?v=ckHkfT0RjeE&t=986s&ab_channel=DanMlayah
     *  specifically "series.getData().add(new XYChart.Data<>" where I was not adding "new XYChart.Data<>" before the result set
     *
     * @return series - a XYChart.Series (an ObservableList) that hold all data of the chart
     * @throws SQLException
     */
    public static XYChart.Series<String, Number> getVoterTurnoutByProvince () throws SQLException {
        XYChart.Series<String, Number> series = null;

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/F20COMP1101", user, pass);

            statement = connection.createStatement();

            resultSet = statement.executeQuery("SELECT substring_index(Province, '/', 1) as Province, VoterTurnoutPercent FROM elections_results GROUP BY Province"); //retrieve info from the database

            /*
            XYChart.Series<X,Y> is a class
            variable called series
            calling the empty constructor of Series
            */
            series = new XYChart.Series<>();

            while (resultSet.next())
            {
                series.getData().add(new XYChart.Data<>(resultSet.getString("Province"),
                                                        resultSet.getDouble("VoterTurnoutPercent")));
                //XYChart.Data is to add one new piece of data to the chart
                //series is a collection of the data.
                //so you are adding one data (one column of the chart) to the series to output to the chart.
                //passing the result set to the new series

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection.close(); //if the connection is not already closed then close it
            }
            if (statement != null) {
                statement.close();
            }
            if (resultSet != null) {
                resultSet.close();
            }
            return series; //changed from old er (ArrayList) to new XYChart series which also hold a collection of data
        }
    }





}
