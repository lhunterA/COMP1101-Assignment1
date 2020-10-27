package Models;

/**
 * The model class for the object I will retrieve from my database.
 * Will return all information/ columns from the table elections_results.sql attached to the project
 * Each Object will be for every MP elected in the 2019 Canadian Federal Election
 *
 * ADD VALIDATION FOR THE ELECTION RESULT LATER
 */

public class ElectionResult
{
    /**
     * The instance Variables of the class which names match the ones in the database for consistency
     */
    private int id;
    private String province;
    private String electoralDistrictName;
    private int electoralDistrictNum;
    private int population;
    private int electors;
    private int numberOfPollingStations;
    private int validBallots;
    private double percentageValidBallots;
    private int rejectedBallots;
    private double percentageRejectBallots;
    private int totalBallotsCast;
    private double voterTurnoutPercent;
    private String electedCandidate;


    /**
     * Constructor that will retrieve all the information from each row. Used to display the table of all info for the project
     *
     * @param id
     * @param province
     * @param electoralDistrictName
     * @param electoralDistrictNum
     * @param population
     * @param electors
     * @param numberOfPollingStations
     * @param validBallots
     * @param percentageValidBallots
     * @param rejectedBallots
     * @param percentageRejectBallots
     * @param totalBallotsCast
     * @param voterTurnoutPercent
     * @param electedCandidate
     */
    public ElectionResult(int id, String province, String electoralDistrictName, int electoralDistrictNum,
                          int population, int electors, int numberOfPollingStations, int validBallots,
                          double percentageValidBallots, int rejectedBallots, double percentageRejectBallots,
                          int totalBallotsCast, double voterTurnoutPercent, String electedCandidate)
    {
        setId (id);
        setProvince (province);
        setElectoralDistrictName (electoralDistrictName);
        setElectoralDistrictNum (electoralDistrictNum);
        setPopulation (population);
        setElectors (electors);
        setNumberOfPollingStations (numberOfPollingStations);
        setValidBallots (validBallots);
        setPercentageValidBallots (percentageValidBallots);
        setRejectedBallots (rejectedBallots);
        setPercentageRejectBallots (percentageRejectBallots);
        setTotalBallotsCast (totalBallotsCast);
        setVoterTurnoutPercent (voterTurnoutPercent);
        setElectedCandidate (electedCandidate);
    }


    /**
     * Constructor to get the voter turnout percentage
     * @param province
     * @param voterTurnoutPercent
     */
    public ElectionResult(String province, double voterTurnoutPercent) {
        setProvince (province);
        setVoterTurnoutPercent (voterTurnoutPercent);
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getElectoralDistrictName() {
        return electoralDistrictName;
    }

    public void setElectoralDistrictName(String electoralDistrictName) {
        this.electoralDistrictName = electoralDistrictName;
    }

    public double getElectoralDistrictNum() {
        return electoralDistrictNum;
    }

    public void setElectoralDistrictNum(int electoralDistrictNum) {
        this.electoralDistrictNum = (int)electoralDistrictNum;
    }

    public int getPopulation() {
        return population;
    }

    public void setPopulation(int population) {
        this.population = population;
    }

    public int getElectors() {
        return electors;
    }

    public void setElectors(int electors) {
        this.electors = electors;
    }

    public int getNumberOfPollingStations() {
        return numberOfPollingStations;
    }

    public void setNumberOfPollingStations(int numberOfPollingStations) {
        this.numberOfPollingStations = numberOfPollingStations;
    }

    public int getValidBallots() {
        return validBallots;
    }

    public void setValidBallots(int validBallots) {
        this.validBallots = validBallots;
    }

    public double getPercentageValidBallots() {
        return percentageValidBallots;
    }

    public void setPercentageValidBallots(double percentageValidBallots) {
        this.percentageValidBallots = percentageValidBallots;
    }

    public int getRejectedBallots() {
        return rejectedBallots;
    }

    public void setRejectedBallots(int rejectedBallots) {
        this.rejectedBallots = rejectedBallots;
    }

    public double getPercentageRejectBallots() {
        return percentageRejectBallots;
    }

    public void setPercentageRejectBallots(double percentageRejectBallots) {
        this.percentageRejectBallots = percentageRejectBallots;
    }

    public int getTotalBallotsCast() {
        return totalBallotsCast;
    }

    public void setTotalBallotsCast(int totalBallotsCast) {
        this.totalBallotsCast = totalBallotsCast;
    }

    public double getVoterTurnoutPercent() {
        return voterTurnoutPercent;
    }

    public void setVoterTurnoutPercent(double voterTurnoutPercent) {
        this.voterTurnoutPercent = voterTurnoutPercent;
    }

    public String getElectedCandidate() {
        return electedCandidate;
    }

    public void setElectedCandidate(String electedCandidate) {
        this.electedCandidate = electedCandidate;
    }



    /*public String toString()
    {
        return String.format("Results: %s %.2f %n", province, voterTurnoutPercent);
    }
    */
}
