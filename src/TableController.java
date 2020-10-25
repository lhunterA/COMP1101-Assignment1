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
    private TableColumn<ElectionResult, Double> dNumColumn;

    @FXML
    private TableColumn<ElectionResult, Double> populationColumn;

    @FXML
    private TableColumn<ElectionResult, Double> electorsColumn;

    @FXML
    private TableColumn<ElectionResult, Double> pollStationColumn;

    @FXML
    private TableColumn<ElectionResult, Double> vBallotNumColumn;

    @FXML
    private TableColumn<ElectionResult, Double> vBallotPercColumn;

    @FXML
    private TableColumn<ElectionResult, Double> rBallotNumColumn;

    @FXML
    private TableColumn<ElectionResult, Double> rBallotPercColumn;

    @FXML
    private TableColumn<ElectionResult, Double> totalBallotColumn;

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
        dNumColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Double>("electoralDistrictNum"));
        populationColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Double>("population"));
        electorsColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Double>("electors"));
        pollStationColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Double>("numberOfPollingStations"));
        vBallotNumColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Double>("validBallots"));
        vBallotPercColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Double>("percentageValidBallots"));
        rBallotNumColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Double>("rejectedBallots"));
        rBallotPercColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Double>("percentageRejectBallots"));
        totalBallotColumn.setCellValueFactory(new PropertyValueFactory<ElectionResult, Double>("totalBallotsCast"));
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


}
