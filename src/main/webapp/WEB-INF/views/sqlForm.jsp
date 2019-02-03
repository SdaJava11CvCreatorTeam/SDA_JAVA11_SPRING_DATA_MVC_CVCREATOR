<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Set" %>
<%@ page import="pl.hit.spring.data.model.*" %>
<%--
  Created by IntelliJ IDEA.
  User: Mariusz
  Date: 28.01.2019
  Time: 09:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="pl">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="${pageContext.request.contextPath}/lib/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/lib/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">

    <title>sqlForm</title>
</head>
<body>
    <h1 class="align-content-center">Dane użytkownika ${person.user.login}</h1>
    <hr class="style18">
    <h3 class="align-content-center">Nie działa:</h3>
    <h3 class="align-content-center">- nie wyświetla daty</h3>
    <hr class="style11">
    <%
        Person person = (Person) request.getAttribute("person");
    %>
    <form method="post" action="/sqlForm/<%=Integer.toString(person.getUser().getHashCode()).substring(1)%>/save">
        <h2 class="align-content-center">Dane podstawowe</h2>
        <hr class="style14">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="firstName">Imię</label>
                <input type="text" class="form-control" id="firstName" name="newFirstName" value=${person.firstName}>
            </div>
            <div class="form-group col-md-6">
                <label for="lastName">Nazwisko</label>
                <input type="text" class="form-control" id="lastName" name="newLastName" value=${person.lastName}>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="dateOfBirth">Data urodzenia</label>
                <input type="date" class="form-control" id="dateOfBirth" name="newDateOfBirth" value=${person.dateOfBirth}>
            </div>
            <div class="form-group col-md-6">
                <label for="gender">Płeć</label>
                <select name="gender" id="gender">
                    <option value="male">Mężczyzna</option>
                    <option value="female">Kobieta</option>
                </select>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="phone">Numer telefonu</label>
                <%
                    if (person.getPhone() == -1) {
                %>
                <input type="tel" class="form-control" name="newPhone" id="phone">
                <%
                    } else {
                %>
                <input type="tel" class="form-control" id="phone" name="newPhone" value=${person.phone}>
                <%
                    }
                %>
            </div>
            <div class="form-group col-md-6">
                <label for="email">Adres e-Mail</label>
                <input type="email" class="form-control" id="email" name="newEmail" value=${person.email}>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="about">O mnie</label>
                <input type="text" class="form-control" id="about" name="newAbout" value="<%=person.getAbout()%>">
            </div>
        </div>

        <h2 class="align-content-center">Miejsce zamieszkania</h2>
        <hr class="style14">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="street">Ulica</label>
                <input type="text" class="form-control" id="street" value=${person.idAddress.street}>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="houseNumber">Numer budynku</label>
                <%
                    if (person.getIdAddress().getHouseNumber() == -1) {
                %>
                <input type="text" class="form-control" id="houseNumber">
                <%
                    } else {
                %>
                <input type="text" class="form-control" id="houseNumber" value=${person.idAddress.houseNumber}>
                <%
                    }
                %>
            </div>
            <div class="form-group col-md-6">
                <label for="apartmentNumber">Numer lokalu</label>
                <%
                    if (person.getIdAddress().getApartmentNumber() == -1) {
                %>
                <input type="text" class="form-control" id="apartmentNumber">
                <%
                    } else {
                %>
                <input type="text" class="form-control" id="apartmentNumber"  value="${person.idAddress.apartmentNumber}">
                <%
                    }
                %>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="postCode">Kod pocztowy</label>
                <input type="text" class="form-control" id="postCode" value="<%=person.getIdAddress().getPostCode()%>">
            </div>
            <div class="form-group col-md-6">
                <label for="city">Miasto</label>
                <input type="text" class="form-control" id="city" value=${person.idAddress.city}>
            </div>
        </div>

        <h2 class="align-content-center">Doświadczenie zawodowe</h2>
        <hr class="style14">
        <%
            Set<Experience> experienceSet = person.getExperience();
            ArrayList<Experience> experienceArrayList = new ArrayList<>(experienceSet);

            if (experienceArrayList.get(0).getJobTitle() != null) {
                for (int i = 0; i < experienceArrayList.size(); i++) {
        %>
        <div class="form-row">
            <div class="form-group col-md-6">
                <h4>Doświadczenie numer <%= i + 1 %></h4>
                <label for="jobTitle">Nazwa stanowiska</label>
                <input type="text" class="form-control" id="jobTitle" value="<%=experienceArrayList.get(i).getJobTitle()%>">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="company">Firma</label>
                <input type="text" class="form-control" id="company" value=<%=experienceArrayList.get(i).getCompany()%>>
            </div>
            <div class="form-group col-md-6">
                <label for="location">Miejsce pracy</label>
                <input type="text" class="form-control" id="location" value=<%=experienceArrayList.get(i).getLocation()%>>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="startYear">Data rozpoczecia</label>
                <input type="text" class="form-control" id="startYear" value=<%=experienceArrayList.get(i).getStartYear()%>>
            </div>
            <div class="form-group col-md-6">
                <label for="endYear">Data zakończenia</label>
                <input type="text" class="form-control" id="endYear" value=<%=experienceArrayList.get(i).getEndYear()%>>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="subtitle">Opis stanowiska</label>
                <input type="text" class="form-control" id="subtitle" value="<%=experienceArrayList.get(i).getDescription()%>">
            </div>
        </div>
        <%
            Set<Responsibility> responsibilitySet = experienceArrayList.get(i).getResponsibility();
            ArrayList<Responsibility> responsibilityArrayList = new ArrayList<>(responsibilitySet);
        %>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="responsibility">Zakres osbowiązków</label>
                <%
                    for (Responsibility responsibility : responsibilityArrayList) {
                %>
                <input type="text" class="form-control" id="responsibility"
                       value="<%=responsibility.getResp()%>">
                <button type="submit" class="btn btn-primary"> Usuń obowiązek</button>
                <%
                    }
                %>
                <input type="text" class="form-control" id="responsibility" placeholder="Dodaj nowy obowiązek">
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Usuń doświadczenie</button>
        <%
                }
            }
        %>
        <div class="form-row">
            <div class="form-group col-md-6">
                <h4>Dodaj doświadczenie</h4>
                <label for="newJobTitle">Nazwa stanowiska</label>
                <input type="text" class="form-control" id="newJobTitle">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="newCompany">Firma</label>
                <input type="text" class="form-control" id="newCompany">
            </div>
            <div class="form-group col-md-6">
                <label for="newLocation">Miejsce pracy</label>
                <input type="text" class="form-control" id="newLocation">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="newStartYear">Data rozpoczecia</label>
                <input type="text" class="form-control" id="newStartYear">
            </div>
            <div class="form-group col-md-6">
                <label for="newEndYear">Data zakończenia</label>
                <input type="text" class="form-control" id="newEndYear">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="newSubtitle">Opis stanowiska</label>
                <input type="text" class="form-control" id="newSubtitle">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="newResponsibility">Zakres osbowiązków</label>
                <input type="text" class="form-control" id="newResponsibility">
                <button type="submit" class="btn btn-primary">Dodaj obowiązek</button>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Dodaj więcej doświadczenia</button>

        <h2 class="align-content-center">Edukacja</h2>
        <hr class="style14">
        <%
            Set<Education> educationSet = person.getEducation();
            ArrayList<Education> educationArrayList = new ArrayList<>(educationSet);

            if (educationArrayList.get(0).getCollege() != null) {
                for (int i = 0; i < educationArrayList.size(); i++) {
        %>
        <div class="form-row">
            <div class="form-group col-md-6">
                <h4>Uczelnia numer <%= i + 1 %></h4>
                <label for="college">Uczelnia</label>
                <input type="text" class="form-control" id="college" value="<%=educationArrayList.get(i).getCollege()%>">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="direction">Kierunek</label>
                <input type="text" class="form-control" id="direction" value="<%=educationArrayList.get(i).getDirection()%>">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="collegeStartYear">Data rozpoczecia</label>
                <input type="text" class="form-control" id="collegeStartYear" value=<%=educationArrayList.get(i).getStartYear()%>>
            </div>
            <div class="form-group col-md-6">
                <label for="collegeEndYear">Data zakończenia</label>
                <input type="text" class="form-control" id="collegeEndYear" value=<%=educationArrayList.get(i).getEndYear()%>>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Usuń uczelnie</button>
        <%
                }
            }
        %>
        <div class="form-row">
            <div class="form-group col-md-6">
                <h4>Dodaj nową uczelnię</h4>
                <label for="newCollege">Uczelnia</label>
                <input type="text" class="form-control" id="newCollege">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="newDirection">Kierunek</label>
                <input type="text" class="form-control" id="newDirection">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="newCollegeStartYear">Dat a rozpoczecia</label>
                <input type="text" class="form-control" id="newCollegeStartYear">
            </div>
            <div class="form-group col-md-6">
                <label for="newCollegeEndYear">Data zakończenia</label>
                <input type="text" class="form-control" id="newCollegeEndYear">
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Dodaj kolejną uczelnię</button>

        <h2 class="align-content-center">Języki obce</h2>
        <hr class="style14">
        <%
            Set<Language> languageSet = person.getLanguage();
            ArrayList<Language> languageArrayList = new ArrayList<>(languageSet);

            if (languageArrayList.get(0).getName() != null) {
                for (int i = 0; i < languageArrayList.size(); i++) {
        %>
        <div class="form-row">
            <div class="form-group col-md-6">
                <h4>Język numer <%= i + 1 %></h4>
                <label for="languageName">Język</label>
                <input type="text" class="form-control" id="languageName" value=<%=languageArrayList.get(i).getName()%>>
            </div>
            <div class="form-group col-md-6">
                <label for="languageLevel">Poziom</label>
                <input type="text" class="form-control" id="languageLevel" value=<%=languageArrayList.get(i).getLevel()%>>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Usuń język</button>
        <%
                }
            }
        %>
        <div class="form-row">
            <div class="form-group col-md-6">
                <h4>JDodaj nowy język</h4>
                <label for="newLanguageName">Język</label>
                <input type="text" class="form-control" id="newLanguageName">
            </div>
            <div class="form-group col-md-6">
                <label for="newLanguageLevel">Poziom</label>
                <input type="text" class="form-control" id="newLanguageLevel">
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Dodaj język</button>

        <h2 class="align-content-center">Umiejętności</h2>
        <hr class="style14">
        <%
            Set<Skill> skillSet = person.getSkill();
            ArrayList<Skill> skillArrayList = new ArrayList<>(skillSet);

            if (skillArrayList.get(0).getSkillName() != null) {
                for (int i = 0; i < skillArrayList.size(); i++) {
        %>
        <div class="form-row">
            <div class="form-group col-md-6">
                <h4>Umiejętność numer <%= i + 1 %></h4>
                <label for="skillName">Nazwa</label>
                <input type="text" class="form-control" id="skillName" value=<%=skillArrayList.get(i).getSkillName()%>>
            </div>
            <div class="form-group col-md-6">
                <label for="skillLevel">Poziom</label>
                <input type="text" class="form-control" id="skillLevel" value=<%=skillArrayList.get(i).getSkillLevel()%>>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Usuń umiejętność</button>
        <%
                }
            }
        %>
        <div class="form-row">
            <div class="form-group col-md-6">
                <h4>Nowa umiejętność</h4>
                <label for="newSkillName">Nazwa</label>
                <input type="text" class="form-control" id="newSkillName">
            </div>
            <div class="form-group col-md-6">
                <label for="newSkillLevel">Poziom</label>
                <input type="text" class="form-control" id="newSkillLevel">
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Dodaj umiejętność</button>

        <h2 class="align-content-center">Media społecznościowe</h2>
        <hr class="style14">
        <%
            Set<SocialMedia> socialMediaSet = person.getSocialMedia();
            ArrayList<SocialMedia> socialMediaArrayList = new ArrayList<>(socialMediaSet);

            if (socialMediaArrayList.get(0).getName() != null) {
                for (int i = 0; i < socialMediaArrayList.size(); i++) {
        %>
        <div class="form-row">
            <div class="form-group col-md-6">
                <h4>Społeczność numer <%= i + 1 %></h4>
                <label for="socialMediaName">Nazwa</label>
                <input type="text" class="form-control" id="socialMediaName" value=<%=socialMediaArrayList.get(i).getName()%>>
            </div>
            <div class="form-group col-md-6">
                <label for="socialMediaLink">Link</label>
                <input type="text" class="form-control" id="socialMediaLink" value=<%=socialMediaArrayList.get(i).getLink()%>>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Usuń społeczność</button>
        <%
                }
            }
        %>
        <div class="form-row">
            <div class="form-group col-md-6">
                <h4>Nowa społeczność</h4>
                <label for="newSocialMediaName">Nazwa</label>
                <input type="text" class="form-control" id="newSocialMediaName">
            </div>
            <div class="form-group col-md-6">
                <label for="newSocialMediaLink">Link</label>
                <input type="text" class="form-control" id="newSocialMediaLink">
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Dodaj społeczność</button>

        <button type="submit" class="btn btn-primary">Anuluj</button>
        <button type="submit" class="btn btn-primary">Wygeneruj</button>
    </form>

    <script src="${pageContext.request.contextPath}/lib/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>