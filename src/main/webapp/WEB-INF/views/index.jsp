<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CV konstruktor</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/lib/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath}/lib/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/lib/vendor/agency.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">CV Creator</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ml-auto">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#portfolio">Stwórz cv(bez rejestracji)</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Header -->
<header class="masthead">
    <div class="container">
        <div class="intro-text">
            <div class="intro-lead-in">Witaj w naszym kreatorze CV!</div>
            <div class="intro-heading text-uppercase">Dobrego dnia</div>
            <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="/form">Form</a>
        </div>
    </div>
</header>

<!-- Portfolio Grid -->
<section class="bg-light" id="portfolio">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading text-uppercase">Dostępne opcje</h2>
                <h3 class="section-subheading text-muted">Proszę wybrać z poniższych</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-sm-6 portfolio-item">
                <a class="portfolio-link" data-toggle="modal" href="/form">
                    <div class="portfolio-hover">
                        <div class="portfolio-hover-content">
                            <i class="fas fa-plus fa-3x"></i>
                        </div>
                    </div>
                    <img class="img-fluid" src="${pageContext.request.contextPath}/lib/img/portfolio/01-thumbnail.jpg"
                         alt="">
                </a>
                <div class="portfolio-caption">
                    <h4>Napisz i pobierz</h4>
                    <p class="text-muted">Bez rejestracji bez zapamiętywania danych</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 portfolio-item">
                <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
                    <div class="portfolio-hover">
                        <div class="portfolio-hover-content">
                            <i class="fas fa-plus fa-3x"></i>
                        </div>
                    </div>
                    <img class="img-fluid" src="${pageContext.request.contextPath}/lib/img/portfolio/02-thumbnail.jpg"
                         alt="">
                </a>
                <div class="portfolio-caption">
                    <h4>Zarejestruj się</h4>
                    <p class="text-muted">program zapamięta wprowadzone dane, będziesz mógł je edytować</p>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<!-- Footer -->
<footer class="bg-dark">
    <div class="container">
        <p class="text-center text-white">Kod źródłowy:
        <a href="https://github.com/SdaJava11CvCreatorTeam/SDA_JAVA11_SPRING_DATA_MVC_CVCREATOR">
                            <i class="fab fa-github-square fa-500px"></i>
                        </a></p>
        <div class="row">
            <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                <ul class="list-inline">
                    <li class="list-inline-item text-white">
                        Łukasz Kwecko
                        <a href="#">
                            <i class="fab fa-linkedin"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                <ul class="list-inline">
                    <li class="list-inline-item text-white">
                        Mateusz Petrykowski
                    </li>
                    <li class="list-inline-item">
                        <a href="#">
                            <i class="fab fa-linkedin"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                <ul class="list-inline">
                    <li class="list-inline-item text-white">
                        Mariusz Guść
                    </li>
                    <li class="list-inline-item">
                        <a href="#">
                            <i class="fab fa-linkedin"></i>
                        </a>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</footer>


<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/lib/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/lib/vendor/jquery-easing/jquery.easing.min.js"></script>


<!-- Custom scripts for this template -->
<script src="${pageContext.request.contextPath}/lib/js/agency.min.js"></script>

</body>

</html>
