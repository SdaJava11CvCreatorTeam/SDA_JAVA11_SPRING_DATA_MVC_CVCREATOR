<%--
  Created by IntelliJ IDEA.
  User: Łukasz
  Date: 24.01.2019
  Time: 08:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="pl">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/lib/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath}/lib/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">

    <title>CV form</title>
</head>
<body>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">formularz bez rejestracji</li>
    </ol>
</nav>
<h1 class="text-center">Formularz bez rejestracji</h1>
<hr class="style18">
<div class="container">
    <form name="testform" action="/result" method="post">
        <div class="form-row">
            <div class="form-group col-md-3">
                <label for="firstName">Imię</label>
                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Jan">
            </div>
            <div class="form-group col-md-3">
                <label for="inputSurName">Nazwisko</label>
                <input type="text" class="form-control" id="inputSurName" name="lastName" placeholder="Kowalski">
            </div>
            <div class="form-group col-md-3">
                <label for="inputMail">Adres e-mail</label>
                <input type="email" class="form-control" id="inputMail" name="email" placeholder="Kowalski@mail.pl">
            </div>
            <div action="some.jsp col-md-3">
                <label for="Płeć">Płeć</label>
                <div></div>
                <select name="Płeć" id="Płeć">
                    <option value="1">Kobieta</option>
                    <option value="2">Mężczyzna</option>
                    <option value="3">Nie określone</option>
                </select>
                <%--<input type="submit" value="Submit"> --%>
            </div>

        </div>

        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="inputAddress">Miejsce zamieszkania</label>
                <input type="text" class="form-control" id="inputAddress" name="adress" placeholder="Warszawa">
            </div>
            <div class="form-group col-md-4">
                <label for="inputAddress2">Numer telefonu</label>
                <input type="tel" class="form-control" id="inputAddress2" name="tel" placeholder="888999000">
            </div>
            <div class="form-group col-md-4">
                <label for="dob">Data urodzenia</label>
                <input type="date" class="form-control" id="dob" name="dateOfBirth">
            </div>
            <div>
            </div>
        </div>
        <div class="form-row">
           <div class="fab fa-linkedin-in fa-fw col-md-4">
                <label for="LinkedIn"></label>
                <input type="text" class = "form-control" id="linkedin" name="linkedin" placeholder="linkedin.com/in/stevedoe">
            </div>
            <div class="fab fa-github-alt fa-fw col-md-4">
                <label for="gitHub"></label>
                <input type="text" class = "form-control" id="gitHub" name="gitHub" placeholder="github.com/username">
            </div>
            <div class="fas fa-globe fa-fw col-md-4">
                <label for="yourWebsite"></label>
                <input type="text" class = "form-control" id="yourWebsite" name="yourWebsite" placeholder="www.myWebsite.com">
            </div>
        </div>
        <hr>
        <h3 class ="text-center">O sobie</h3>
        <div id="aboutMe">
            <div class="form-group col-md-13">
            <label for="schoolName">Parę słów o sobie</label>
            <input type="text" class="form-control" id="aboutMe" name="aboutMe" value="">
            </div>
        </div>


        <hr>
        <h3 class="text-center">Edukacja</h3>
        <div id="education_fields">
            <%--tu zostaną utworzone nowe formy po kliknięciu + --%>
        </div>
        <div class="form-row">
            <div class="form-group col-xs-6 col-sm-4 col-md-3 col-lg-3 col-xl-3">
                <label for="schoolName">Uczelnia/Kurs</label>
                <input type="text" class="form-control" id="schoolName" name="schoolName" value="">
            </div>
            <div class="form-group col-xs-6 col-sm-4 col-md-3 col-lg-3 col-xl-3">
                <label for="studySubject">przedmiot nauki</label>
                <input type="text" class="form-control" id="studySubject" name="studySubject" value="">
            </div>
            <div class="form-group col-xs-6 col-sm-4 col-md-3 col-lg-3 col-xl-3">
                <label for="studyDateFrom">data od</label>
                <input type="date" class="form-control" id="studyDateFrom" name="studyDateFrom">
            </div>
            <div class="form-group col-xs-6 col-sm-4 col-md-3 col-lg-3 col-xl-3">
                <label for="studyDateTo">data do</label>
                <input type="date" class="form-control" id="studyDateTo" name="studyDateTo">
            </div>
            <div class="input-group-btn">
                <button class="btn btn-success" type="button" onclick="education_fields();"><span
                        class="fa fa-plus" aria-hidden="true"></span></button>
            </div>
            <div class="clear"></div>
        </div>
        <%--<div class="form-row">--%>
        <%--<div class="form-group col-md-3">--%>
        <%--<label for="schoolName">Uczelnia/kurs/szkolenie</label>--%>
        <%--<input type="text" class="form-control" id="schoolName">--%>
        <%--</div>--%>
        <%--<div class="form-group col-md-3">--%>
        <%--<label for="studySubject">przedmiot nauki</label>--%>
        <%--<input type="tel" class="form-control" id="studySubject">--%>
        <%--</div>--%>
        <%--<div class="form-group col-md-3">--%>
        <%--<label for="studyDateFrom">data od</label>--%>
        <%--<input type="date" class="form-control" id="studyDateFrom">--%>
        <%--</div>--%>
        <%--<div class="form-group col-md-3">--%>
        <%--<label for="studyDateTo">data do</label>--%>
        <%--<input type="date" class="form-control" id="studyDateTo">--%>
        <%--</div>--%>
        <%--</div>--%>

        <hr>
        <h3 class="text-center">Praca</h3>
        <div class="form-row">
            <div class="form-group col-md-3">
                <label for="schoolName3">Firma</label>
                <input type="text" class="form-control" id="schoolName3" name="jobCompany">
            </div>
            <div class="form-group col-md-3">
                <label for="studySubject3">stanowisko</label>
                <input type="text" class="form-control" id="studySubject3" name="occupance">
            </div>
            <div class="form-group col-md-3">
                <label for="studyDateFrom3">data od</label>
                <input type="date" class="form-control" id="studyDateFrom3" name="jobDateFrom">
            </div>
            <div class="form-group col-md-3">
                <label for="studyDateTo3">data do</label>
                <input type="date" class="form-control" id="studyDateTo3" name="jobDateTo">
            </div>
            <div class="form-group col-md-12">
                <label for="aboutJob">Opis stanowiska</label>
                <input type="text" class="form-control" id="aboutJob" name="description">
            </div>
        </div>

        <hr>
        <h3 class="text-center">Języki</h3>
        <div id="language_fields">
        </div>
        <div class="form-group col-xs-6 col-sm-4 col-md-3 col-lg-3 col-xl-3">
            <label for="language">Język</label>
            <input type="text" class="form-control" id="language" name="language">
        </div>
        <div class="input-group-btn">
            <button class="btn btn-success" type="button" onclick="language_fields();"><span
                    class="fa fa-plus" aria-hidden="true"></span></button>
        </div>
        <div class="clear"></div>
        </div>



        <input type="submit" value="submit" name="submit" class="btn btn-primary align-content-center">
    </form>
</div>
<a href="/result">result page</a>


<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/lib/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/vendor/bootstrap/js/bootstrap.js"></script>

<!-- Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/lib/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>