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
            <div class="form-group col-md-4">
                <label for="firstName">Imię</label>
                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Jan">
            </div>
            <div class="form-group col-md-4">
                <label for="inputSurName">Nazwisko</label>
                <input type="text" class="form-control" id="inputSurName" name="lastName" placeholder="Kowalski">
            </div>
            <div class="form-group col-md-4">
                <label for="inputMail">Nazwisko</label>
                <input type="email" class="form-control" id="inputMail" name="email" placeholder="Kowalski@mail.pl">
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
                <h3> Wybierz zdjęcie do CV </h3>
                <form action="upload" method="post" enctype="multipart/form-data">
                    <input type="file" name="file" />
                    <input type="submit" value="upload" />
                </form>
            </div>

        </div>
        <hr>
        <h3 class="text-center">Edukacja</h3>
        <div id="education_fields">
            <%--tu zostaną utworzone nowe formy po kliknięciu + --%>
        </div>
        <div class="form-row">
            <div class="form-group col-xs-6 col-sm-4 col-md-3 col-lg-3 col-xl-3">
                <label for="Schoolname">Uczelnia/Kurs</label>
                <input type="text" class="form-control" id="Schoolname" name="Major[]" value="">
            </div>
            <div class="form-group col-xs-6 col-sm-4 col-md-3 col-lg-3 col-xl-3">
                <label for="studySubject">przedmiot nauki</label>
                <input type="text" class="form-control" id="studySubject" name="Schoolname[]" value="">
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
        <div id="work_fields">

        </div>
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