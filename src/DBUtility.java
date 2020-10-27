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
                       resultSet.getDouble("ElectoralDistrictNum"),
                       resultSet.getDouble("Population"),
                       resultSet.getDouble("Electors"),
                       resultSet.getDouble("NumberOfPollingStations"),
                       resultSet.getDouble("ValidBallots"),
                       resultSet.getDouble("PercentageValidBallots"),
                       resultSet.getDouble("RejectedBallots"),
                       resultSet.getDouble("PercentageRejectBallots"),
                       resultSet.getDouble("TotalBallotsCast"),
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




    //Method to obtain province and avg voter turnout across the province to see which province doesnt vote as much as the others
    //changed from ArrayList to XYChart.Series
    public static XYChart.Series<String, Number> getVoterTurnoutByProvince () throws SQLException {

        // List<ElectionResult> er = new ArrayList<>();

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        XYChart.Series<String, Number> series = null;
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/F20COMP1101", user, pass);

            statement = connection.createStatement();

            resultSet = statement.executeQuery("SELECT Province, VoterTurnoutPercent FROM elections_results GROUP BY Province"); //retrieve info from the database

            //new
            //XYChart.Series<X,Y> is a class
            //variable called series
            //calling the empty constructor or Series
            series = new XYChart.Series<>();

            while (resultSet.next()) {
                //ElectionResult elecRes = new ElectionResult(
                series.getData().add(new XYChart.Data<>(resultSet.getString("Province"), resultSet.getDouble("VoterTurnoutPercent")));
                //pass the data to a series which is an
                //resultSet.getString("Province"),
                //resultSet.getDouble("VoterTurnoutPercent")
                //);

                //er.add(elecRes);
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
            return series;
        }
    }





}
