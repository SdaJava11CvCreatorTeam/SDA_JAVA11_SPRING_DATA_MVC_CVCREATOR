package pl.hit.spring.data.model;

public class Experience {

    //  jobtitle                                                   Trener SDA
    //  company | location | startYear - endYear                   SDA | BL Wrocław | 2016 - Present
    //  subtitle                                                   Trener przyszłego pokolenia programistów
    //  - responsibilities                                         - Przekzywanie wiedzy,
    //                                                             - Pomoc w rozwiązywanie problemów,
    //                                                             - Dołowanie podopiecznych.

    private long id;
    private String startYear;
    private String endYear;
    private String company;
    private String location;
    private String jobTitle;
    private String subtitle;
    private String[] responsibilities;

    public Experience(String startYear, String endYear, String company, String location, String jobTitle,
                      String subtitle, String[] responsibilities) {
        this.startYear = startYear;
        this.endYear = endYear;
        this.company = company;
        this.location = location;
        this.jobTitle = jobTitle;
        this.subtitle = subtitle;
        this.responsibilities = responsibilities;
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

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public String[] getResponsibilities() {
        return responsibilities;
    }

    public void setResponsibilities(String[] responsibilities) {
        this.responsibilities = responsibilities;
    }
}
