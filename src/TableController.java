import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class TableController implements Initializable
{
    @FXML
    private TableView<?> electionTableView;

    @FXML
    private TableColumn<?, ?> IDColumn;

    @FXML
    private TableColumn<?, ?> provinceColumn;

    @FXML
    private TableColumn<?, ?> dNameColumn;

    @FXML
    private TableColumn<?, ?> dNumColumn;

    @FXML
    private TableColumn<?, ?> populationColumn;

    @FXML
    private TableColumn<?, ?> electorsColumn;

    @FXML
    private TableColumn<?, ?> pollStationColumn;

    @FXML
    private TableColumn<?, ?> vBallotNumColumn;

    @FXML
    private TableColumn<?, ?> vBallotPercColumn;

    @FXML
    private TableColumn<?, ?> rBallotNumColumn;

    @FXML
    private TableColumn<?, ?> rBallotPercColumn;

    @FXML
    private TableColumn<?, ?> totalBallotColumn;

    @FXML
    private TableColumn<?, ?> voterTurnoutColumn;

    @FXML
    private TableColumn<?, ?> electedCandidateColumn;


    @Override
    public void initialize(URL location, ResourceBundle resources) {

    }


}
