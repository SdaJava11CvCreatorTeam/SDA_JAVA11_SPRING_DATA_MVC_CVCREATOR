package pl.hit.spring.data.model;

public class Education {

    //  college                             // Politechnika Wrocławska
    //  direction                           // Informatyka
    // startYear - endYear                  // 2015 - Present

    private long id;
    private String college;
    private String direction;
    private String startYear;
    private String endYear;

    public Education(String college, String direction, String startYear, String endYear) {
        this.college = college;
        this.direction = direction;
        this.startYear = startYear;
        this.endYear = endYear;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    public String getStartYear() {
        return startYear;
    }

    public void setStartYear(String startYear) {
        this.startYear = startYear;
    }

    public String getEndYear() {
        return endYear;
    }

    public void setEndYear(String endYear) {
        this.endYear = endYear;
    }
}
