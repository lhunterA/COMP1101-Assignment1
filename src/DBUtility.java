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
                       resultSet.getInt("ID"),
                       resultSet.getString("Province"),
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
               er.add(elecResults); //add to the Array list that will diplay
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
    public static ArrayList<ElectionResult> getVoterTurnoutByProvince () throws SQLException {

        ArrayList<ElectionResult> er = new ArrayList<>();

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try
        {
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/F20COMP1101", user, pass);

            statement = connection.createStatement();

            resultSet = statement.executeQuery("SELECT Province, VoterTurnoutPercent FROM elections_results GROUP BY Province"); //retrieve info from the database

            while (resultSet.next())
            {
            ElectionResult elecRes = new ElectionResult(
                    resultSet.getString("Province"),
                    resultSet.getDouble("VoterTurnoutPercent")
            );

                er.add(elecRes);
            }
        }catch (Exception e)
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





}
