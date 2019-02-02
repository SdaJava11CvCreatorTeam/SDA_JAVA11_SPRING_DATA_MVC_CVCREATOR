<%--
  Created by IntelliJ IDEA.
  User: Mariusz
  Date: 28.01.2019
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="pl">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="${pageContext.request.contextPath}/lib/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/lib/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">

    <title>login</title>
</head>
<body>
    <h1 class="align-content-center">Panel logowania</h1>
    <hr class="style18">

    <form method="post">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="login">Login</label>
                <input type="text" class="form-control" required name="login" id="login">
            </div>
            <div class="form-group col-md-6">
                <label for="password">Password</label>
                <input type="password" class="form-control" required name="password" id="password">
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Zaloguj</button>
    </form>
</body>
</html>
