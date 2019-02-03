<%--
  Created by IntelliJ IDEA.
  User: Łukasz
  Date: 24.01.2019
  Time: 08:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <form:form method="post" action="/result" modelAttribute="PersonDTO">
        <div class="form-row">
            <div class="form-group col-md-4">
                <form:label path="firstName">Imię</form:label>
                <form:input path="firstName" type="text" class="form-control" name="firstName" placeholder="Jan"/>
            </div>
            <div class="form-group col-md-4">
                <form:label path="lastName">Nazwisko</form:label>
                <form:input path="lastName" type="text" class="form-control" name="lastName" placeholder="Kowalski"/>
            </div>
            <div class="form-group col-md-4">
                <form:label path="email">email</form:label>
                <form:input path="email" type="email" class="form-control" name="email" placeholder="Kowalski@mail.pl"/>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-4">
                <form:label path="adress">Miejsce zamieszkania</form:label>
                <form:input path="adress" type="text" class="form-control" name="adress" placeholder="Warszawa"/>
            </div>
            <div class="form-group col-md-4">
                <form:label path="tel" for="inputAddress2">Numer telefonu</form:label>
                <form:input path="tel" type="tel" class="form-control" name="tel" placeholder="888999000"/>
            </div>
            <div class="form-group col-md-4">
                <form:label path="dateOfBirth">Data urodzenia</form:label>
                <form:input path="dateOfBirth" type="date" class="form-control"  name="dateOfBirth"/>
            </div>
        </div>
        <div class="form-row">
            <div class="fab fa-linkedin-in fa-fw col-md-4">
                <form:label path="linkedIn">LinkedIn</form:label>
                <form:input path="linkedIn" type="text" class="form-control" name="linkedin"
                       placeholder="linkedin.com/in/stevedoe"/>
            </div>
            <div class="fab fa-github-alt fa-fw col-md-4">
                <form:label path="github">Github</form:label>
                <form:input path="github" type="text" class="form-control" name="gitHub" placeholder="github.com/username"/>
            </div>
            <div class="fas fa-globe fa-fw col-md-4">
                <form:label path="yourWebsite">YouWebsite</form:label>
                <form:input path="yourWebsite" type="text" class="form-control" name="yourWebsite"
                       placeholder="www.myWebsite.com"/>
            </div>
        </div>
        <h3 class="text-center">O sobie</h3>
        <div id="aboutMe">
            <div class="form-group col-md-13">
                <form:label path="aboutMe">Parę słów o sobie</form:label>
                <form:input path="aboutMe" type="text" class="form-control" name="aboutMe" value=""/>
            </div>
        </div>
        <hr>
        <h3 class="text-center">Edukacja</h3>
        <div id="education_fields">
                <%--tu zostaną utworzone nowe formy po kliknięciu + --%>
        </div>
        <div class="form-row">
            <div class="form-group col-xs-6 col-sm-4 col-md-3 col-lg-3 col-xl-3">
                <form:label path="schoolName" for="schoolName">Uczelnia/Kurs</form:label>
                <form:input path="schoolName" type="text" class="form-control" id="schoolName" name="schoolName" value=""/>
            </div>
            <div class="form-group col-xs-6 col-sm-4 col-md-3 col-lg-3 col-xl-3">
                <form:label path="studySubject" for="studySubject">przedmiot nauki</form:label>
                <form:input path="studySubject" type="text" class="form-control" id="studySubject" name="studySubject" value=""/>
            </div>
            <div class="form-group col-xs-6 col-sm-4 col-md-3 col-lg-3 col-xl-3">
                <form:label path="studyDateFrom" for="studyDateFrom">data od</form:label>
                <form:input path="studyDateFrom" type="date" class="form-control" id="studyDateFrom" name="studyDateFrom"/>
            </div>
            <div class="form-group col-xs-6 col-sm-4 col-md-3 col-lg-3 col-xl-3">
                <form:label path="studyDateTo">data do</form:label>
                <form:input path="studyDateTo" class="form-control" id="studyDateTo" name="studyDateTo"/>
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
                <form:label path="jobCompany">Firma</form:label>
                <form:input path="jobCompany" type="text" class="form-control" id="schoolName3" name="jobCompany"/>
            </div>
            <div class="form-group col-md-3">
                <form:label path="occupance" for="studySubject3">stanowisko</form:label>
                <form:input path="occupance" type="text" class="form-control" id="studySubject3" name="occupance"/>
            </div>
            <div class="form-group col-md-3">
                <form:label path="jobDateFrom" for="studyDateFrom3">data od</form:label>
                <form:input path="jobDateFrom" type="date" class="form-control" id="studyDateFrom3" name="jobDateFrom"/>
            </div>
            <div class="form-group col-md-3">
                <form:label path="jobDateTo" for="studyDateTo3">data do</form:label>
                <form:input path="jobDateTo" type="date" class="form-control" id="studyDateTo3" name="jobDateTo"/>
            </div>
            <div class="form-group col-md-12">
                <form:label path="description" for="aboutJob">Opis stanowiska</form:label>
                <form:input path="description" type="text" class="form-control" id="aboutJob" name="description"/>
            </div>
        </div>

        <hr>
        <h3 class="text-center">Języki</h3>
        <div id="language_fields">
        </div>
        <div class="form-group col-xs-6 col-sm-4 col-md-3 col-lg-3 col-xl-3">
            <form:label path="language" for="language">Język</form:label>
            <form:input path="language" type="text" class="form-control" id="language" name="language"/>
        </div>
        <div class="input-group-btn">
            <button class="btn btn-success" type="button" onclick="language_fields();"><span
                    class="fa fa-plus" aria-hidden="true"></span></button>
        </div>
        <input type="submit" value="submit" name="submit" class="btn btn-primary align-content-center">
    </form:form>
</div>
<a href="/result">result page</a>


<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/lib/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/vendor/bootstrap/js/bootstrap.js"></script>

<!-- Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/lib/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>
