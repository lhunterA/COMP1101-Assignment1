import java.sql.SQLException;
import java.util.ArrayList;

public class Main
{
    public static void main(String[] args)
    {



        //See if it will return my election result info.
        try {
            ArrayList<ElectionResult> elecResults = DBUtility.getAllElectionResults();
            System.out.printf(elecResults.toString());

            System.out.printf("%n %n");

            ArrayList<ElectionResult> er = DBUtility.getVoterTurnoutByProvince();
            System.out.printf(er.toString());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}


