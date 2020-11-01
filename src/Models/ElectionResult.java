package Models;

/**
 * Lindsay Hunter
 * 200425671
 *
 *
 * The model class for the object I will retrieve from my database.
 * Will return all information/ columns from the table elections_results.sql attached to the project
 * Each Object will be for every MP elected in the 2019 Canadian Federal Election
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
     * @param id -Id from the database
     * @param province - Name of a canadian Province or territory
     * @param electoralDistrictName - Name of the district in the province
     * @param electoralDistrictNum - The assigned number for that district
     * @param population - the number of people who live there
     * @param electors - how many people are working the polling stations
     * @param numberOfPollingStations - How many polling stations per electoral district
     * @param validBallots -how many ballots received were valid
     * @param percentageValidBallots - a percentage of that number
     * @param rejectedBallots -how many rejected ballots were received
     * @param percentageRejectBallots - the percentage of the rejected ballots
     * @param totalBallotsCast - total number of ballots received
     * @param voterTurnoutPercent - how much of the population per district showed up
     * @param electedCandidate - which MP won
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



    public int getId() {
        return id;
    }

    /**
     * If there is a valid id number (not a negative)
     * @param id
     */
    public void setId(int id) {
        if (id>0)
            this.id = id;
        else
            throw new IllegalArgumentException("There must be a valid Id per row");
    }

    public String getProvince() {
       return province;
    }

    /**
     * Remove the french version of the province and display valid province names only
     * @param province
     */
    public void setProvince(String province)
    {
        String[] provinceArray = province.split("/"); //scrub out the french from the database
        if(provinceArray[0].matches("[A-Z][a-z]*[\\sA-z]*[\\sA-z]"))
            this.province= provinceArray[0];
        else
            throw new IllegalArgumentException("Must be a valid Province or Territory with proper capitalization");
    }

    public String getElectoralDistrictName() {
        return electoralDistrictName;
    }

    /**
     * Split the french from the district name. But even in english there are still unicode characters present
     * so make sure that the name can be in either language, and that it can support '.', '-' and "'" characters
     * Unicode characters was pulled from this stackoverflow page: https://stackoverflow.com/questions/19652188/regular-expression-to-allow-french-text-as-well-as-english-text/19653784
     * @param electoralDistrictName
     */
    public void setElectoralDistrictName(String electoralDistrictName) {
        String[] districtArray = electoralDistrictName.split("/"); //scrub out the french from the database
        if(districtArray[0].matches("([A-Z][a-z] àâäèéêëîïôœùûüÿçÀÂÄÈÉÊËÎÏÔŒÙÛÜŸÇ\\.)*[-\\sA-z\\. àâäèéêëîïôœùûüÿçÀÂÄÈÉÊËÎÏÔŒÙÛÜŸÇ\']*[-\\sA-z\\. àâäèéêëîïôœùûüÿçÀÂÄÈÉÊËÎÏÔŒÙÛÜŸÇ]"))
            this.electoralDistrictName= districtArray[0];
        else
            throw new IllegalArgumentException("Must be a valid district name with proper capitalization");
    }

    public double getElectoralDistrictNum() {
        return electoralDistrictNum;
    }

    /**
     * Check to see the district number
     * @param electoralDistrictNum
     */
    public void setElectoralDistrictNum(int electoralDistrictNum) {
        if (electoralDistrictNum >=10001 && electoralDistrictNum <=62001) //The lowest and highest district number
            this.electoralDistrictNum = electoralDistrictNum;
        else
            throw new IllegalArgumentException("The Electoral District Number must be between 10001 - 62001");
    }

    public int getPopulation() {
        return population;
    }

    /**
     * The population of the district
     * @param population
     */
    public void setPopulation(int population) {
        if (population >=20000 && population <=200000) //The lowest and highest population range
            this.population = population;
        else
            throw new IllegalArgumentException("The Population can't be less than 20,000 or more than 200,000 people");
    }

    public int getElectors() {
        return electors;
    }

    /**
     * A count of how many people are working the polling stations cross a district throughout the election period
     * @param electors
     */
    public void setElectors(int electors) {
        if (!(electors >=20000 && electors <population)) //if outside of the range of min and max population
            throw new IllegalArgumentException("There must be at least 20,000 electors and max less than the population");
        else
            this.electors = electors;
    }

    public int getNumberOfPollingStations() {
        return numberOfPollingStations;
    }

    /**
     * How many polling stations in one district.
     * @param numberOfPollingStations
     */
    public void setNumberOfPollingStations(int numberOfPollingStations) {
        if (numberOfPollingStations >=50 && numberOfPollingStations <=400) //The lowest and highest population range
            this.numberOfPollingStations = numberOfPollingStations;
        else
            throw new IllegalArgumentException("There must be at least 50 polling station, and no more than 400");
    }

    public int getValidBallots() {
        return validBallots;
    }

    /**
     * How many of the ballots cast are valid/properly signed/etc.
     * @param validBallots
     */
    public void setValidBallots(int validBallots) {
        if(validBallots >= (population/4) && validBallots < population) //at least 1/4 of potential voters must be valid and cannot exceed population amount
            this.validBallots = validBallots;
        else
            throw new IllegalArgumentException("There cannot be more ballots than people, and one must be at least there");
    }

    public double getPercentageValidBallots() {
        return percentageValidBallots;
    }

    /**
     * The percentage amount of proper ballots
     * @param percentageValidBallots
     */
    public void setPercentageValidBallots(double percentageValidBallots) {
        if( percentageValidBallots >= 95 && percentageValidBallots <= 100) //if at least 90% of votes are valid, and doesn't exceed 100%
            this.percentageValidBallots = percentageValidBallots;
        else
            throw new IllegalArgumentException("There range of valid ballots casted must be between 80-100%");
    }

    public int getRejectedBallots() {
        return rejectedBallots;
    }

    /**
     * The number of rejected ballots
     * @param rejectedBallots
     */
    public void setRejectedBallots(int rejectedBallots) {
        if( rejectedBallots >= 50 && rejectedBallots <= 5000) //a suitable range of potential rejected ballots
            this.rejectedBallots = rejectedBallots;
        else
            throw new IllegalArgumentException("There range of reject ballots casted must be between 50-5000");
    }

    public double getPercentageRejectBallots() {
        return percentageRejectBallots;
    }

    /**
     * Setting the percentage amount of reject ballots in relation to the total amount of ballots
     * @param percentageRejectBallots
     */
    public void setPercentageRejectBallots(double percentageRejectBallots) {
        if( percentageRejectBallots >= 0 && percentageRejectBallots <= 5)
        this.percentageRejectBallots = percentageRejectBallots;
        else
            throw new IllegalArgumentException("There cannot be more rejected ballots than Valid one");
    }

    public int getTotalBallotsCast() {
        return totalBallotsCast;
    }

    /**
     * the combination of the rejected and valid ballots should be equal to the total cast.
     * @param totalBallotsCast
     */
    public void setTotalBallotsCast(int totalBallotsCast) {
        if (validBallots + rejectedBallots == totalBallotsCast)
        this.totalBallotsCast = totalBallotsCast;
    }

    public double getVoterTurnoutPercent() {
        return voterTurnoutPercent;
    }

    /**
     * Set how much of the population voted in this election
     * @param voterTurnoutPercent
     */
    public void setVoterTurnoutPercent(double voterTurnoutPercent) {
        if (voterTurnoutPercent > 0) //someone has to turn out
            this.voterTurnoutPercent = voterTurnoutPercent;
        else
            throw new IllegalArgumentException("Voter Turnout is not correct");
    }

    public String getElectedCandidate() {
        return electedCandidate;
    }

    /**
     * Set the last name of the winning candidate of the district. Allow for both french and english names.
     *
     *Unicode characters was pulled from this stackoverflow page: https://stackoverflow.com/questions/19652188/regular-expression-to-allow-french-text-as-well-as-english-text/19653784
     *
     * @param electedCandidate
     */
    public void setElectedCandidate(String electedCandidate) {

       if(electedCandidate.matches("[A-Za-z\\' àâäèéêëîïôœùûüÿ]*[\\s-A-z àâäèéêëîïôœùûüÿ]*[\\s-A-z àâäèéêëîïôœùûüÿ]")) //one of the elected last names is d'Entremont'
            this.electedCandidate = electedCandidate;
       else
            throw new IllegalArgumentException("Must be a valid French or English name.");
    }



    /*public String toString()
    {
        return String.format("Results: %s %.2f %n", province, voterTurnoutPercent);
    }
    */
}
