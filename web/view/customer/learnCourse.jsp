<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edule</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico">

    <!-- CSS
	============================================ -->

    <!-- Icon Font CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/icofont.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/font-awesome.min.css">

    <!-- Plugins CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/swiper-bundle.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/apexcharts.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/jqvmap.min.css">

    <!-- Main Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">


    <!--====== Use the minified version files listed below for better performance and remove the files listed above ======-->
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/vendor/plugins.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css"> -->
</head>

<body>
    <script>
        var intervalQuiz;
        var startQuiz = (id, h, m, s) => {
        var form = document.querySelector('.quiz-form' + id);
        form.classList.add("attemp");
        form.style.display='block';
        var seconds = form.querySelector('.seconds');  
        console.log(seconds);
        var timer = document.querySelector('.timer');
        var second = 0;
        intervalQuiz = setInterval(() => {
        second++;
        //set value
        seconds.value = second;
        s--;
        if(s == -1) {
            s = 59;
            m--;
        }
        if(m == -1) {
            m = 59;
            h--;
        }
        timer.innerHTML = h + ":" + m + ":" + s;
        if(h == 0 && m == 0 && s == 0) {
            //clear in
            clearInterval(intervalQuiz);
            //submit
            form.submit();
        }
        }, 1000);
        }
        var displayQuiz = (id) => {
            //submit attemping quiz
            var quizAttemp = document.querySelector('.attemp');
            if(quizAttemp != null) {
                quizAttemp.submit();
                clearInterval(intervalQuiz);
                quizAttemp.classList.remove('attemp');
                return;
            }
            document.querySelector('.courses-video-player').style.display = 'none';
            var quizInfos = document.querySelectorAll("div[class^='quiz-info']");
            console.log(quizInfos);
            quizInfos.forEach((item) => {
                
                item.style.display = 'none';
            });
            document.querySelector('.quiz').style.display = 'block';
            document.querySelector('.quiz-info' + id).style.display = 'block';
        }
                                
    </script>
    <div class="main-wrapper">

        <!-- Login Header Start -->
        <div class="section login-header">
            <!-- Login Header Wrapper Start -->
            <div class="login-header-wrapper navbar navbar-expand">

                <!-- Header Logo Start -->
                <div class="login-header-logo logo-2">
                    <a href="index.html"><img src="${pageContext.request.contextPath}/assets/images/logo-icon.png" alt="Logo"></a></li>
                    <a href="index.html"><img src="${pageContext.request.contextPath}/assets/images/text-logo.png" alt="Logo"></a></li>
                </div>
                <!-- Header Logo End -->

                <!-- Header Search Start -->
                <!-- <div class="login-header-search search-2 dropdown">
                    <button class="search-toggle" data-bs-toggle="dropdown"><i class="flaticon-loupe"></i></button>

                    <div class="search-input dropdown-menu">
                        <form action="#">
                            <input type="text" placeholder="Search here">
                        </form>
                    </div>

                </div> -->
                <!-- Header Search End -->

                <!-- Header Action Start -->
                <div class="login-header-action action-2 ml-auto">
                    <!-- <div class="dropdown">
                        <button class="action notification" data-bs-toggle="dropdown">
                            <i class="flaticon-notification"></i>
                            <span class="active"></span>
                        </button>
                        <div class="dropdown-menu dropdown-notification">
                            <ul class="notification-items-list">
                                <li class="notification-item">
                                    <span class="notify-icon bg-success text-white"><i class="icofont-ui-user"></i></span>
                                    <div class="dropdown-body">
                                        <a href="#">
                                            <p><strong>Martin</strong> has added a <strong>customer</strong> Successfully
                                            </p>
                                        </a>
                                    </div>
                                    <span class="notify-time">3:20 am</span>
                                </li>
                                <li class="notification-item">
                                    <span class="notify-icon bg-success text-white"><i class="icofont-shopping-cart"></i></span>
                                    <div class="dropdown-body">
                                        <a href="#">
                                            <p><strong>Jennifer</strong> purchased Light Dashboard 2.0.</p>
                                        </a>
                                    </div>
                                    <span class="notify-time">3:20 am</span>
                                </li>
                                <li class="notification-item">
                                    <span class="notify-icon bg-danger text-white"><i class="icofont-book-mark"></i></span>
                                    <div class="dropdown-body">
                                        <a href="#">
                                            <p><strong>Robin</strong> marked a <strong>ticket</strong> as unsolved.
                                            </p>
                                        </a>
                                    </div>
                                    <span class="notify-time">3:20 am</span>
                                </li>
                                <li class="notification-item">
                                    <span class="notify-icon bg-success text-white"><i class="icofont-heart-alt"></i></span>
                                    <div class="dropdown-body">
                                        <a href="#">
                                            <p><strong>David</strong> purchased Light Dashboard 1.0.</p>
                                        </a>
                                    </div>
                                    <span class="notify-time">3:20 am</span>
                                </li>
                                <li class="notification-item">
                                    <span class="notify-icon bg-success text-white"><i class="icofont-image"></i></span>
                                    <div class="dropdown-body">
                                        <a href="#">
                                            <p><strong> James.</strong> has added a<strong>customer</strong> Successfully
                                            </p>
                                        </a>
                                    </div>
                                    <span class="notify-time">3:20 am</span>
                                </li>
                            </ul>
                            <a class="all-notification" href="#">See all notifications <i class="icofont-simple-right"></i></a>
                        </div>
                    </div> -->

                    <a class="action author" href="#">
                        <img src="${pageContext.request.contextPath}/assets/images/author/author-07.jpg" alt="Author">
                    </a>

                    <div class="dropdown">
                        <button class="action more" data-bs-toggle="dropdown">
                            <span></span>
                            <span></span>
                            <span></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="" href="#"><i class="icofont-user"></i> Profile</a></li>
                            <li><a class="" href="#"><i class="icofont-inbox"></i> Inbox</a></li>
                            <li><a class="" href="#"><i class="icofont-logout"></i> Sign Out</a></li>
                        </ul>
                    </div>
                </div>
                <!-- Header Action End -->

            </div>
            <!-- Login Header Wrapper End -->
        </div>
        <!-- Login Header End -->

        <!-- Courses Enroll Start -->
        <div class="section">
            <!-- Courses Enroll Wrapper Start -->
            <div class="courses-enroll-wrapper">

                <!-- Courses Video Player Start -->
                <div class="courses-video-player">

                    <!-- Courses Video Container Start -->
                    <div class="vidcontainer">
                        <iframe width="100%" height="100%" allowfullscreen=""  webkit-playsinline playsinline id="myvid"></iframe>

<!--                        <div class="video-play-bar">
                            <div class="topControl">
                                <div class="progress">
                                    <span class="bufferBar"></span>
                                    <span class="timeBar"></span>
                                </div>
                                <div class="time">
                                    <span class="current"></span> /
                                    <span class="duration"></span>
                                </div>
                            </div>

                            <div class="controllers">
                                <div class="controllers-left">
                                    <button class="prevvid disabled" title="Previous video"><i class="icofont-ui-previous"></i></button>
                                    <button class="btnPlay" title="Play/Pause video"></button>
                                    <button class="nextvid" title="Next video"><i class="icofont-ui-next"></i></button>
                                    <button class="sound sound2" title="Mute/Unmute sound"></button>
                                    <div class="volume" title="Set volume">
                                        <span class="volumeBar"></span>
                                    </div>
                                </div>

                                <div class="controllers-right">
                                    <button class="btnspeed" title="Video speed"><i class="fa fa-gear"></i></button>
                                    <ul class="speedcnt">
                                        <li class="spdx50">1.5</li>
                                        <li class="spdx25">1.25</li>
                                        <li class="spdx1 selected">Normal</li>
                                        <li class="spdx050">0.5</li>
                                    </ul>
                                    <button class="btnFS" title="full screen"></button>
                                </div>
                            </div>
                        </div>

                        <div class="bigplay" title="play the video">
                            <i class="fa fa-play"></i>
                        </div>

                        <div class="loading">
                            <div class="spinner-border spinner">
                                <span class="visually-hidden">Loading...</span>
                            </div>
                        </div>-->

                    </div>
                    <!-- Courses Video Container End -->

                    <!-- Courses Enroll Content Start -->
                    <div class="courses-enroll-content">

                        <!-- Courses Enroll Title Start -->
                        <div class="courses-enroll-title">
                            <h2 class="title">Finance & Investment Series: Learn to Budget and Calculate Your Net Worth.</h2>
                        </div>
                        <!-- Courses Enroll Title End -->

                        <!-- Courses Enroll Tab Start -->
                        <div class="courses-enroll-tab">
                            <div class="enroll-tab-menu">
                                <ul class="nav">
                                    <li><button class="active" data-bs-toggle="tab" data-bs-target="#tab1">Description</button></li>
                                    <li><button data-bs-toggle="tab" data-bs-target="#tab2">Instructor</button></li>
                                </ul>
                            </div>

                        </div>
                        <!-- Courses Enroll Tab End -->

                        <!-- Courses Enroll Tab Content Start -->
                        <div class="courses-enroll-tab-content">
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="tab1">

                                    <!-- Description Start -->
                                    <div class="description">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="enroll-tab-title">
                                                    <h3 class="title">Description</h3>
                                                </div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="enroll-tab-content">
                                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been industry's standard dummy text ever since the 1500s when andom unknown printer took a galley of type scrambled it to make a type specimen book. It has survived not’s only and five centuries, but also the lea into electronic typesetting, remaining priting essentially unchanged. It was popularsed in the 1960 with containing Lorem Ipsum passages desktop publishing software.</p>

                                                    <p class="text">“Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has industry's standard dummy text ever since the 1500s when andom unknown printer took a galley scrambled it to make a type specimen book.”</p>

                                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been industry's standard dummy text ever since the 1500s when andom unknown printer took a galley of type scrambled it to make a type specimen book. It has survived not’s only and five centuries, but also the lea into electronic typesetting, remaining priting essentially unchanged. It was popularsed in the 1960 with containing Lorem Ipsum passages desktop publishing software.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Description End -->

                                </div>
                                <div class="tab-pane fade" id="tab2">

                                    <!-- Instructor Start -->
                                    <div class="instructor">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="enroll-tab-title">
                                                    <h3 class="title">Instructor</h3>
                                                </div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="enroll-tab-content">

                                                    <!-- Single Instructor Start -->
                                                    <div class="single-instructor">
                                                        <div class="review-author">
                                                            <div class="author-thumb">
                                                                <img src="${pageContext.request.contextPath}/assets/images/author/author-06.jpg" alt="Author">
                                                            </div>
                                                            <div class="author-content">
                                                                <h4 class="name">Sara Alexander</h4>
                                                                <span class="designation">Product Designer, USA</span>
                                                                <span class="rating-star">
																		<span class="rating-bar" style="width: 80%;"></span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been industry's standard dummy text ever since the 1500s when andom unknown printer took a galley of type scrambled it to make a type specimen book.</p>
                                                    </div>
                                                    <!-- Single Instructor End -->

                                                    <!-- Single Instructor Start -->
                                                    <div class="single-instructor">
                                                        <div class="review-author">
                                                            <div class="author-thumb">
                                                                <img src="${pageContext.request.contextPath}/assets/images/author/author-07.jpg" alt="Author">
                                                            </div>
                                                            <div class="author-content">
                                                                <h4 class="name">Karol Bachman</h4>
                                                                <span class="designation">Product Designer, USA</span>
                                                                <span class="rating-star">
																		<span class="rating-bar" style="width: 80%;"></span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been industry's standard dummy text ever since the 1500s when andom unknown printer took a galley of type scrambled it to make a type specimen book.</p>
                                                    </div>
                                                    <!-- Single Instructor End -->

                                                    <!-- Single Instructor Start -->
                                                    <div class="single-instructor">
                                                        <div class="review-author">
                                                            <div class="author-thumb">
                                                                <img src="${pageContext.request.contextPath}/assets/images/author/author-03.jpg" alt="Author">
                                                            </div>
                                                            <div class="author-content">
                                                                <h4 class="name">Gertude Culbertson</h4>
                                                                <span class="designation">Product Designer, USA</span>
                                                                <span class="rating-star">
																		<span class="rating-bar" style="width: 80%;"></span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been industry's standard dummy text ever since the 1500s when andom unknown printer took a galley of type scrambled it to make a type specimen book.</p>
                                                    </div>
                                                    <!-- Single Instructor End -->

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Instructor End -->

                                </div>
                            </div>
                        </div>
                        <!-- Courses Enroll Tab Content End -->

                    </div>
                    <!-- Courses Enroll Content End -->
                </div>
                <!-- Courses Video Player End -->
                <div class="quiz" style="width: 71.8%; padding-bottom: 80px; display: none; padding-left: 100px;">
                    <c:forEach var="u" items="${userQuizs}">
                        <div class="quiz-info${u.getQuiz().getId()}" style="display: none">
                            <h4>Quiz: ${u.getQuiz().getName()}</h4>
                            <p>Level: ${u.getQuiz().getLevel()}</p>
                            <div class="submit-info">
                                <p>Last Submit: ${u.getGrade() == -1 ? "" : u.getGrade()}</p>
                                <p>Time Taken: ${u.getTimeTaken()}</p>
                            </div>
                            <button 
                                style="margin-top: 20px; padding: 14 6px; background-color: #ccc; border: black;"
                                onclick="startQuiz(${u.getQuiz().getId()}, ${u.getQuiz().getDuration().getHours()}, ${u.getQuiz().getDuration().getMinutes()}, ${u.getQuiz().getDuration().getSeconds()})"
                            >Attemp/ReAttemp</button>
                            <div class="count" style="text-align: center">
                                <h4 class="timer">${u.getQuiz().getDuration()}</h4>
                            </div>
                        </div>
                    </c:forEach>
                    <c:forEach var="u" items="${userQuizs}">
                        <form class="quiz-form${u.getQuiz().getId()}" action="submitquiz" method="post" style="display: none">
                            <ul class="quiz-list">
                                <c:forEach var="q" items="${u.getQuiz().getQuestion()}" varStatus="order">
                                    <li class="quiz-item" style="margin-bottom: 30px;">
                                        <p>${order.index + 1} ${q.getContent()}</p>
                                        <c:forEach var="a" items="${q.getAnswers()}" varStatus="loop">
                                            <p>
                                                <input display="block" type="radio" name="${order.index+1}" value="${a.getId()}"> ${a.getContent()}
                                            </p>
                                        </c:forEach>
                                    </li>
                                </c:forEach>
                                <input type="text" hidden name="size"  value="${u.getQuiz().getQuestion().size()}">
                                <input class="seconds" type="text" hidden name="seconds"  value="0">
                                <input type="text" hidden name="quizId"  value="${u.getQuiz().getId()}">
                                <input type="text" hidden name="courseId"  value="${c.getId()}">
                                <input type="submit" value="submit">
                            </ul>
                        </form>
                    </c:forEach>
                </div>
                <!-- Courses Video Playlist Start -->
                <div class="courses-video-playlist">
                    <div class="playlist-title">
                        <h3 class="title">Course Content</h3>
                        <span>${lessons} Lessons</span>
                    </div>

                    <!-- Video Playlist Start  -->
                    <div class="video-playlist">
                        <div class="accordion" id="videoPlaylist">
                            <c:forEach var ="t" items="${c.getTopics()}">
                                <!-- Accordion Items Start  -->
                                <div class="accordion-item">
                                    <button class="collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#topic${t.getId()}">
                                        <p>Topic-${t.getOrder()}: ${t.getName()}</p>
                                        <span class="total-duration"></span>
                                    </button>

                                    <div id="topic${t.getId()}" class="accordion-collapse collapse" data-bs-parent="#videoPlaylist">
                                        <nav class="vids">
                                            <c:forEach var="l" items="${t.getLessons()}">
                                               <a class="
                                                  link 
                                                  <c:if test="${t.getOrder() == 1 && l.getOrder() == 1}">
                                                    active
                                                  </c:if>
                                                " 
                                                href="${l.getUrl()}"
                                                onclick="
                                                document.querySelector('.courses-video-player').style.display = 'block';
                                                document.querySelector('.quiz').style.display = 'none';
                                                ">
                                                    <p>${l.getOrder()}. ${l.getName()}</p>
                                                    <span class="total-duration"></span>
                                                </a> 
                                            </c:forEach>
                                            <c:forEach var="q" items="${t.getQuizs()}">
                                                <a class="link" href="" onclick="
                                                displayQuiz(${q.getId()})
                                                ">
                                                    <p>Quiz: ${q.getName()}</p>
                                                    <span class="total-duration">${q.getDuration()}</span>
                                                </a>
                                            </c:forEach>
                                            
                                        </nav>
                                    </div>
                                </div>
                                <!-- Accordion Items End  -->
                            </c:forEach>                           
                        </div>
                    </div>
                    <!-- Video Playlist End  -->

                </div>
                <!-- Courses Video Playlist End -->

            </div>
            <!-- Courses Enroll Wrapper End -->

        </div>
        <!-- Courses Enroll End -->

        <!-- Download App Start -->
        <div class="section section-padding download-section">

            <div class="app-shape-1"></div>
            <div class="app-shape-2"></div>
            <div class="app-shape-3"></div>
            <div class="app-shape-4"></div>

            <div class="container">

                <!-- Download App Wrapper Start -->
                <div class="download-app-wrapper mt-n6">

                    <!-- Section Title Start -->
                    <div class="section-title section-title-white">
                        <h5 class="sub-title">Ready to start?</h5>
                        <h2 class="main-title">Download our mobile app. for easy to start your course.</h2>
                    </div>
                    <!-- Section Title End -->

                    <img class="shape-1 animation-right" src="${pageContext.request.contextPath}/assets/images/shape/shape-14.png" alt="Shape">

                    <!-- Download App Button End -->
                    <div class="download-app-btn">
                        <ul class="app-btn">
                            <li><a href="#"><img src="${pageContext.request.contextPath}/assets/images/google-play.png" alt="Google Play"></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/assets/images/app-store.png" alt="App Store"></a></li>
                        </ul>
                    </div>
                    <!-- Download App Button End -->

                </div>
                <!-- Download App Wrapper End -->

            </div>
        </div>
        <!-- Download App End -->

        <!-- Footer Start  -->
        <div class="section footer-section">

            <!-- Footer Widget Section Start -->
            <div class="footer-widget-section">

                <img class="shape-1 animation-down" src="${pageContext.request.contextPath}/assets/images/shape/shape-21.png" alt="Shape">

                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 order-md-1 order-lg-1">

                            <!-- Footer Widget Start -->
                            <div class="footer-widget">
                                <div class="widget-logo">
                                    <a href="#"><img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="Logo"></a>
                                </div>

                                <div class="widget-address">
                                    <h4 class="footer-widget-title">Caribbean Ct</h4>
                                    <p>Haymarket, Virginia (VA).</p>
                                </div>

                                <ul class="widget-info">
                                    <li>
                                        <p> <i class="flaticon-email"></i> <a href="mailto:address@gmail.com">address@gmail.com</a> </p>
                                    </li>
                                    <li>
                                        <p> <i class="flaticon-phone-call"></i> <a href="tel:9702621413">(970) 262-1413</a> </p>
                                    </li>
                                </ul>

                                <ul class="widget-social">
                                    <li><a href="#"><i class="flaticon-facebook"></i></a></li>
                                    <li><a href="#"><i class="flaticon-twitter"></i></a></li>
                                    <li><a href="#"><i class="flaticon-skype"></i></a></li>
                                    <li><a href="#"><i class="flaticon-instagram"></i></a></li>
                                </ul>
                            </div>
                            <!-- Footer Widget End -->

                        </div>
                        <div class="col-lg-6 order-md-3 order-lg-2">

                            <!-- Footer Widget Link Start -->
                            <div class="footer-widget-link">

                                <!-- Footer Widget Start -->
                                <div class="footer-widget">
                                    <h4 class="footer-widget-title">Category</h4>

                                    <ul class="widget-link">
                                        <li><a href="#">Creative Writing</a></li>
                                        <li><a href="#">Film & Video</a></li>
                                        <li><a href="#">Graphic Design</a></li>
                                        <li><a href="#">UI/UX Design</a></li>
                                        <li><a href="#">Business Analytics</a></li>
                                        <li><a href="#">Marketing</a></li>
                                    </ul>

                                </div>
                                <!-- Footer Widget End -->

                                <!-- Footer Widget Start -->
                                <div class="footer-widget">
                                    <h4 class="footer-widget-title">Quick Links</h4>

                                    <ul class="widget-link">
                                        <li><a href="#">Privacy Policy</a></li>
                                        <li><a href="#">Discussion</a></li>
                                        <li><a href="#">Terms & Conditions</a></li>
                                        <li><a href="#">Customer Support</a></li>
                                        <li><a href="#">Course FAQ’s</a></li>
                                    </ul>

                                </div>
                                <!-- Footer Widget End -->

                            </div>
                            <!-- Footer Widget Link End -->

                        </div>
                        <div class="col-lg-3 col-md-6 order-md-2 order-lg-3">

                            <!-- Footer Widget Start -->
                            <div class="footer-widget">
                                <h4 class="footer-widget-title">Subscribe</h4>

                                <div class="widget-subscribe">
                                    <p>Lorem Ipsum has been them an industry printer took a galley make book.</p>

                                    <div class="widget-form">
                                        <form action="#">
                                            <input type="text" placeholder="Email here">
                                            <button class="btn btn-primary btn-hover-dark">Subscribe Now</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- Footer Widget End -->

                        </div>
                    </div>
                </div>

                <img class="shape-2 animation-left" src="${pageContext.request.contextPath}/assets/images/shape/shape-22.png" alt="Shape">

            </div>
            <!-- Footer Widget Section End -->

            <!-- Footer Copyright Start -->
            <div class="footer-copyright">
                <div class="container">

                    <!-- Footer Copyright Start -->
                    <div class="copyright-wrapper">
                        <div class="copyright-link">
                            <a href="#">Terms of Service</a>
                            <a href="#">Privacy Policy</a>
                            <a href="#">Sitemap</a>
                            <a href="#">Security</a>
                        </div>
                        <div class="copyright-text">
                            <p>&copy; 2021 <span> Edule </span> Made with <i class="icofont-heart-alt"></i> by <a href="#">Codecarnival</a></p>
                        </div>
                    </div>
                    <!-- Footer Copyright End -->

                </div>
            </div>
            <!-- Footer Copyright End -->

        </div>
        <!-- Footer End -->

        <!--Back To Start-->
        <a href="#" class="back-to-top">
            <i class="icofont-simple-up"></i>
        </a>
        <!--Back To End-->

    </div>






    <!-- JS
    ============================================ -->
<!-- Modernizer & jQuery JS -->
    <script src="${pageContext.request.contextPath}/assets/js/vendor/modernizr-3.11.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/vendor/jquery-3.5.1.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/assets/js/plugins/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/plugins/bootstrap.min.js"></script>

    <!-- Plugins JS -->
    <script src="${pageContext.request.contextPath}/assets/js/plugins/swiper-bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/plugins/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/plugins/video-playlist.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/plugins/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/plugins/ajax-contact.js"></script>

    <!--====== Use the minified version files listed below for better performance and remove the files listed above ======-->
     <!--<script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>--> 


    <!-- Main JS -->
    <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
    

</body>

</html>
