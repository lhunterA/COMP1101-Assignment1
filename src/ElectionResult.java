/**
 * The model class for the object I will retrieve from my database.
 * Will return all information/ columns from the table elections_results.sql attached to the project
 * Each Object will be for every MP elected in the 2019 Canadian Federal Election
 * Version: 1.0 = Making a base Class and constructor for retrieving the rows of data.
 */

public class ElectionResult
{
    /**
     * The instance Variables of the class which names match the ones in the database for consistency
     */
    private int id;
    private String province;
    private String electoralDistrictName;
    private double electoralDistrictNum;
    private double population;
    private double electors;
    private double numberOfPollingStations;
    private double validBallots;
    private double percentageValidBallots;
    private double rejectedBallots;
    private double percentageRejectBallots;
    private double totalBallotsCast;
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
    public ElectionResult(int id, String province, String electoralDistrictName, double electoralDistrictNum,
                          double population, double electors, double numberOfPollingStations, double validBallots,
                          double percentageValidBallots, double rejectedBallots, double percentageRejectBallots,
                          double totalBallotsCast, double voterTurnoutPercent, String electedCandidate)
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

    public void setElectoralDistrictNum(double electoralDistrictNum) {
        this.electoralDistrictNum = electoralDistrictNum;
    }

    public double getPopulation() {
        return population;
    }

    public void setPopulation(double population) {
        this.population = population;
    }

    public double getElectors() {
        return electors;
    }

    public void setElectors(double electors) {
        this.electors = electors;
    }

    public double getNumberOfPollingStations() {
        return numberOfPollingStations;
    }

    public void setNumberOfPollingStations(double numberOfPollingStations) {
        this.numberOfPollingStations = numberOfPollingStations;
    }

    public double getValidBallots() {
        return validBallots;
    }

    public void setValidBallots(double validBallots) {
        this.validBallots = validBallots;
    }

    public double getPercentageValidBallots() {
        return percentageValidBallots;
    }

    public void setPercentageValidBallots(double percentageValidBallots) {
        this.percentageValidBallots = percentageValidBallots;
    }

    public double getRejectedBallots() {
        return rejectedBallots;
    }

    public void setRejectedBallots(double rejectedBallots) {
        this.rejectedBallots = rejectedBallots;
    }

    public double getPercentageRejectBallots() {
        return percentageRejectBallots;
    }

    public void setPercentageRejectBallots(double percentageRejectBallots) {
        this.percentageRejectBallots = percentageRejectBallots;
    }

    public double getTotalBallotsCast() {
        return totalBallotsCast;
    }

    public void setTotalBallotsCast(double totalBallotsCast) {
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
}
