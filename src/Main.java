import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.sql.SQLException;
import java.util.ArrayList;

public class Main extends Application
{
    public static void main(String[] args)
    {
        launch(args);

        /*
        //See if it will return my election result info. Lab 05
        try {
            ArrayList<ElectionResult> elecResults = DBUtility.getAllElectionResults();
            System.out.printf(elecResults.toString());

            System.out.printf("%n %n");

            ArrayList<ElectionResult> er = DBUtility.getVoterTurnoutByProvince();
            System.out.printf(er.toString());
        } catch (SQLException e) {
            e.printStackTrace();
        }

         */

    }

    @Override
    public void start(Stage primaryStage) throws Exception {
         Parent root = FXMLLoader.load(getClass().getResource("TableView.fxml"));
         Scene scene = new Scene(root);
         primaryStage.setScene(scene);
         primaryStage.setTitle("2019 Canadian Election");
         //primaryStage.getIcons();  //commented out until Styling is done.
         primaryStage.show();

    }
}


