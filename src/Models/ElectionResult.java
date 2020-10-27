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

    public void setProvince(String province)
    {

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
        if (electoralDistrictNum >=10001 && electoralDistrictNum <=62001) //The lowest and highest district number
            this.electoralDistrictNum = electoralDistrictNum;
        else
            throw new IllegalArgumentException("The Electoral Distric Number must be between 10001 - 62001");

    }

    public int getPopulation() {
        return population;
    }

    public void setPopulation(int population) {
        if (population >=20000 && population <=200000) //The lowest and highest population range
            this.population = population;
        else
            throw new IllegalArgumentException("The Population can't be less than 20,000 or more than 200,000 people");
    }

    public int getElectors() {
        return electors;
    }

    public void setElectors(int electors) {
        if (!(electors >=20000 && electors <population)) //if outside of the range of min and max population
            throw new IllegalArgumentException("There must be at least 20,000 electors and max less than the population");
        else
            this.electors = electors;
    }

    public int getNumberOfPollingStations() {
        return numberOfPollingStations;
    }

    public void setNumberOfPollingStations(int numberOfPollingStations) {
        if (numberOfPollingStations >=50 && numberOfPollingStations <=400) //The lowest and highest population range
            this.numberOfPollingStations = numberOfPollingStations;
        else
            throw new IllegalArgumentException("There must be at least 50 polling station, and no more than 400");
    }

    public int getValidBallots() {
        return validBallots;
    }

    public void setValidBallots(int validBallots) {
        if(validBallots >= (population/4) && validBallots < population) //at least 1/4 of potential voters must be valid and cannot exceed population amount
            this.validBallots = validBallots;
        else
            throw new IllegalArgumentException("There cannot be more ballots than people, and one must be at least there");
    }

    public double getPercentageValidBallots() {
        return percentageValidBallots;
    }

    public void setPercentageValidBallots(double percentageValidBallots) {
        if( percentageValidBallots >= 95 && percentageValidBallots <= 100) //if at least 90% of votes are valid, and doesn't exceed 100%
            this.percentageValidBallots = percentageValidBallots;
        else
            throw new IllegalArgumentException("There range of valid ballots casted must be between 80-100%");
    }

    public int getRejectedBallots() {
        return rejectedBallots;
    }

    public void setRejectedBallots(int rejectedBallots) {
        if( rejectedBallots >= 50 && rejectedBallots <= 5000) //a suitable range of potential rejected ballots
            this.rejectedBallots = rejectedBallots;
        else
            throw new IllegalArgumentException("There range of reject ballots casted must be between 50-5000");
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
        if (validBallots + rejectedBallots == totalBallotsCast)
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
