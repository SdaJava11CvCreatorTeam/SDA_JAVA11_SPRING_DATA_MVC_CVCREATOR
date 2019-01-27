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
<h1>this is for test</h1>
<form>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputName">Imię</label>
            <input type="" class="form-control" id="inputName" placeholder="Jan">
        </div>
        <div class="form-group col-md-6">
            <label for="inputSurName">Nazwisko</label>
            <input type="SecondName" class="form-control" id="inputSurName" placeholder="Kowalski">
        </div>
    </div>
    <div class="form-group">
        <label for="inputAddress">Miejsce zamieszkania</label>
        <input type="text" class="form-control" id="inputAddress" placeholder="Warszawa">
    </div>
    <div class="form-group">
        <label for="inputAddress2">Numer telefonu</label>
        <input type="text" class="form-control" id="inputAddress2" placeholder="888999000">
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCity">Data urodzenia</label>
            <input type="text" class="form-control" id="inputCity" placeholder="15-03-1975">
        </div>
        <%--<div class="form-group col-md-4">--%>
            <%--<label for="inputState">State</label>--%>
            <%--<select id="inputState" class="form-control">--%>
                <%--<option selected>Choose...</option>--%>
                <%--<option>...</option>--%>
            <%--</select>--%>
        <%--</div>--%>
        <%--<div class="form-group col-md-2">--%>
            <%--<label for="inputZip">Zip</label>--%>
            <%--<input type="text" class="form-control" id="inputZip">--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="form-group">--%>
        <%--<div class="form-check">--%>
            <%--<input class="form-check-input" type="checkbox" id="gridCheck">--%>
            <%--<label class="form-check-label" for="gridCheck">--%>
                <%--Check me out--%>
            <%--</label>--%>
        <%--</div>--%>
    <%--</div>--%>
    <button type="submit" class="btn btn-primary">Sign in</button>
</form>
<a href="/result">result page</a>
<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/lib/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/lib/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>
