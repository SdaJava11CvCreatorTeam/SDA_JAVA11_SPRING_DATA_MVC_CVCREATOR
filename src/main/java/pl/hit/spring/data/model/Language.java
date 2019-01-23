package pl.hit.spring.data.model;

public class Language {

    //  languageName languageLevel                          English B2

    private long id;
    private String languageName;
    private String languageLevel;

    public Language(String languageName, String languageLevel) {
        this.languageName = languageName;
        this.languageLevel = languageLevel;
    }

    public String getLanguageName() {
        return languageName;
    }

    public void setLanguageName(String languageName) {
        this.languageName = languageName;
    }

    public String getLanguageLevel() {
        return languageLevel;
    }

    public void setLanguageLevel(String languageLevel) {
        this.languageLevel = languageLevel;
    }
}
