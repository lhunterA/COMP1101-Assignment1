import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;

/**
 *  * Lindsay Hunter
 *  * 200425671
 */

public class Main extends Application
{
    public static void main(String[] args)
    {
        launch(args);

        /*
        //See if it will return my election result info. Lab 05
        try {
            ArrayList<Models.ElectionResult> elecResults = Utilities.DBUtility.getAllElectionResults();
            System.out.printf(elecResults.toString());

            System.out.printf("%n %n");

            ArrayList<Models.ElectionResult> er = Utilities.DBUtility.getVoterTurnoutByProvince();
            System.out.printf(er.toString());
        } catch (SQLException e) {
            e.printStackTrace();
        }

         */

    }

    @Override
    public void start(Stage primaryStage) throws Exception {
         Parent root = FXMLLoader.load(getClass().getResource("Views/TableView.fxml"));
         Scene scene = new Scene(root);
         scene.getStylesheets().add("Utilities/styleSheet.css");
         primaryStage.setScene(scene);
         primaryStage.setTitle("2019 Canadian Election");
         primaryStage.getIcons().add(new Image("Images/icon.png"));
         primaryStage.show();

    }
}


