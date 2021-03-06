<%@ page import="java.nio.charset.Charset"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="jdk.internal.util.xml.impl.ReaderUTF8"%>
<%@ page import="java.nio.charset.StandardCharsets"%>
<%@ page import="javafx.util.converter.ByteStringConverter"%>
<%@ page import="java.io.InputStream"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="pl">
<head>
    <title>result</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Responsive Resume Template">
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Alegreya:400,500,700,800,900" rel="stylesheet">

    <!-- FontAwesome JS-->
    <script defer src="https://use.fontawesome.com/releases/v5.1.1/js/all.js"
            integrity="sha384-BtvRZcyfv4r0x/phJt9Y9HhnN5ur1Z+kZbKVgzVBAlQZX4jvAuImlIz+bG7TS00a"
            crossorigin="anonymous"></script>

    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/lib/assets/css/pillar-2.css">


</head>

<body>


<article class="resume-wrapper text-center position-relative">
    <div class="resume-wrapper-inner mx-auto text-left bg-white shadow-lg">
        <header class="resume-header pt-4 pt-md-0">
            <div class="media flex-column flex-md-row">
                <img class="mr-3 img-fluid picture mx-auto"
                     src="${pageContext.request.contextPath}/lib/assets/images/profile.jpg" alt="">
                <div class="media-body p-4 d-flex flex-column flex-md-row mx-auto mx-lg-0">
                    <div class="primary-info">
                        <h1 class="name mt-0 mb-1 text-white text-uppercase text-uppercase">${firstName} ${lastName}
                        </h1>
                        <div class="title mb-3">${occupance}</div>
                        <ul class="list-unstyled">
                            <li class="mb-2"><a href="#"><i class="far fa-envelope fa-fw mr-2"
                                                            data-fa-transform="grow-3"></i>${email}
                            </a></li>
                            <li class="mb-2"><a href="#"><i class="fas fa-mobile-alt fa-fw mr-2"
                                                            data-fa-transform="grow-6"></i>${tel}
                            </a></li>
                            <li class="mb-2"><a href="#"><i class="fa fa-home fa-fw mr-2"></i>${adress}
                            </a></li>
                            <li class="mb-2"><a href="#"><i class="fa fa-calendar fa-fw mr-2"></i>${dateOfBirth}
                            </a></li>
                            <br>
                        </ul>
                    </div><!--//primary-info-->
                    <div class="secondary-info ml-md-auto mt-2">
                        <ul class="resume-social list-unstyled">
                            <li class="mb-3"><a href="${linkedIn}"><span class="fa-container text-center mr-2"><i
                                    class="fab fa-linkedin-in fa-fw"></i></span>${linkedIn}</a></li>
                            <li class="mb-3"><a href="${github}"><span class="fa-container text-center mr-2"><i
                                    class="fab fa-github-alt fa-fw"></i></span>${github}</a></li>
                            <li class="mb-3"> <a href="${yourWebsite}"><span class="fa-container text-center mr-2"><i
                                    class="fas fa-globe"></i></span>${yourWebsite}</a></li>
                        </ul>
                    </div><!--//secondary-info-->
                </div><!--//media-body-->
            </div><!--//media-->
        </header>
        <div class="resume-body p-5">
            <section class="resume-section summary-section mb-5">
                <h2 class="resume-section-title text-uppercase font-weight-bold pb-3 mb-3">Some about ${firstName}</h2>
                <div class="resume-section-content">
                    <p class="mb-0">${aboutMe}</p>
                </div>
            </section><!--//summary-section-->
            <div class="row">
                <div class="col-lg-9">
                    <section class="resume-section experience-section mb-5">
                        <h2 class="resume-section-title text-uppercase font-weight-bold pb-3 mb-3">Experience
                            </h2>
                        <div class="resume-section-content">
                            <div class="resume-timeline position-relative">
                                <article class="resume-timeline-item position-relative pb-5">

                                    <div class="resume-timeline-item-header mb-2">
                                        <div class="d-flex flex-column flex-md-row">
                                            <h3 class="resume-position-title font-weight-bold mb-1">${occupance}
                                            </h3>
                                            <div class="resume-company-name ml-auto">${jobCompany}
                                            </div>
                                        </div><!--//row-->
                                        <div class="resume-position-time">${jobDateFrom} - ${jobDateTo}
                                        </div>
                                    </div><!--//resume-timeline-item-header-->
                                    <div class="resume-timeline-item-desc">
                                        <p>${description}</p>
                                    </div><!--//resume-timeline-item-desc-->
                                </article><!--//resume-timeline-item-->
                            </div><!--//resume-timeline-->


                        </div>
                    </section><!--//experience-section-->
                </div>
                <div class="col-lg-3">
                    <section class="resume-section education-section mb-5">
                        <h2 class="resume-section-title text-uppercase font-weight-bold pb-3 mb-3">Education</h2>
                        <div class="resume-section-content">
                            <ul class="list-unstyled">
                                <li class="mb-2">
                                    <div class="resume-degree font-weight-bold">${studySubject}
                                    </div>
                                    <div class="resume-degree-org">${schoolName}
                                    </div>
                                    <div class="resume-degree-time">${studyDateFrom} - ${studyDateTo}
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </section><!--//education-section-->
                    <section class="resume-section language-section mb-5">
                        <h2 class="resume-section-title text-uppercase font-weight-bold pb-3 mb-3">Language</h2>
                        <div class="resume-section-content">
                            <ul class="list-unstyled resume-lang-list">
                                <li class="mb-2"><span class="resume-lang-name font-weight-bold">${language}</span>
                                    <small class="text-muted font-weight-normal">(Native)</small>
                                </li>
                            </ul>
                        </div>
                    </section><!--//language-section-->
                    <section class="resume-section interests-section mb-5">
                        <h2 class="resume-section-title text-uppercase font-weight-bold pb-3 mb-3">Interests</h2>
                        <div class="resume-section-content">
                            <ul class="list-unstyled">
                                <li class="mb-1">Climbing</li>
                                <li class="mb-1">Snowboarding</li>
                                <li class="mb-1">Cooking</li>
                            </ul>
                        </div>
                    </section><!--//interests-section-->

                </div>
            </div><!--//row-->
        </div><!--//resume-body-->


    </div>
</article>


<footer class="footer text-center pt-2 pb-5">
    <!--/* This template is released under the Creative Commons Attribution 3.0 License. Please keep the attribution link below when using for your own project. Thank you for your support. :) If you'd like to use the template without the attribution, you can buy the commercial license via our website: themes.3rdwavemedia.com */-->
    <small class="copyright">Designed with <i class="fas fa-heart"></i> by <a href="http://themes.3rdwavemedia.com"
                                                                              target="_blank">Xiaoying Riley</a> for
        developers
    </small>
</footer>


</body>
</html>
