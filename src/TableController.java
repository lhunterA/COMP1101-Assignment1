import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;

public class TableController implements Initializable
{
    @FXML
    private TableView<ElectionResult> electionTableView;

    /*
    binding the object and Data type to each of the cells in the table.
    Knows what type of data to expect from the the database.
     */
    @FXML
    private TableColumn<ElectionResult, Integer> IDColumn;

    @FXML
    private TableColumn<ElectionResult, String> provinceColumn;

    @FXML
    private TableColumn<ElectionResult, String> dNameColumn;

    @FXML
    private TableColumn<ElectionResult, Integer> dNumColumn;

    @FXML
    private TableColumn<ElectionResult, Integer> populationColumn;

    @FXML
    private TableColumn<ElectionResult, Integer> electorsColumn;

    @FXML
    private TableColumn<ElectionResult, Integer> pollStationColumn;

    @FXML
    private TableColumn<ElectionResult, Integer> vBallotNumColumn;

    @FXML
    private TableColumn<ElectionResult, Double> vBallotPercColumn;

    @FXML
    private TableColumn<ElectionResult, Integer> rBallotNumColumn;

    @FXML
    private TableColumn<ElectionResult, Double> rBallotPercColumn;

    @FXML
    private TableColumn<ElectionResult, Integer> totalBallotColumn;

    @FXML
    private TableColumn<ElectionResult, Double> voterTurnoutColumn;

    @FXML
    private TableColumn<ElectionResult, String> electedCandidateColumn;


    /**
     * Bind the cells of the javafx table "electionTableView" to the data of the table in
     * elections_results.sql
     *
     * @param location
     * @param resources
     */
    @Override
    public void initialize(URL location, ResourceBundle resources)
    {
        IDColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Integer>("id"));
        provinceColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, String>("province"));
        dNameColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, String>("electoralDistrictName"));
        dNumColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Integer>("electoralDistrictNum"));
        populationColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Integer>("population"));
        electorsColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Integer>("electors"));
        pollStationColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Integer>("numberOfPollingStations"));
        vBallotNumColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Integer>("validBallots"));
        vBallotPercColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Double>("percentageValidBallots"));
        rBallotNumColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Integer>("rejectedBallots"));
        rBallotPercColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Double>("percentageRejectBallots"));
        totalBallotColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Integer>("totalBallotsCast"));
        voterTurnoutColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Double>("voterTurnoutPercent"));
        electedCandidateColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, String>("electedCandidate"));

        //grab the data from the table, wrap in try/catch to avoid a SQL compile error
        try
        {
            ArrayList<ElectionResult> electionResults = DBUtility.getAllElectionResults();
            electionTableView.getItems().addAll(electionResults);
        }
        catch (SQLException throwables)
        {
            throwables.printStackTrace();
        }
    }

    /**
     * When the button on the TableView is clicked change to the ProvinceVoterTurnoutView
     * Uses the class SceneChanger method changeScene() which takes 2 arguments, the fxml file that wants to be viewed
     * and the new title for the new scene.
     * @param event
     * @throws IOException
     */
    @FXML
    private void viewBarChart(ActionEvent event) throws IOException {
        SceneChanger.changeScene(event, "ProvinceVoterTurnoutView.fxml", "2019 Canadian Election"); //on the event go to the view chosen, and title
    }
}
