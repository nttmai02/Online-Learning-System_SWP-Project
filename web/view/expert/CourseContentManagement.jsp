<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
    <%--<jsp:include page="../component/common/head.jsp" />--%>
    <head>
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Quiz Practicing System</title>
        <meta name="robots" content="noindex, follow" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

    </head>
    <style>
        .search-filter {
            width: 660px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .search-input {
            margin-right: 12px;
            padding-left: 10px;
            height: 50px;
            border-radius: 10px;
            border: 1px solid rgba(48, 146, 85, 0.2);
        }

        .search-button {
            color: #fff;
            line-height: 50px;
            font-size: 15px;
            padding: 0 30px;
            border-radius: 10px;
            border: 0 solid transparent;
            background-color: #309255;
            border-color: #309255;
            font-weight: 500;
        }

        .featured {
            margin-top: 20px;
            display: flex;
            align-items: center;
        }

        .featured-label {
            font-size: 16px;
            font-weight: 450;
            color: rgb(33 40 50);
        }

        /*                    .item-thumb img{

                }*/
        .modal-body {
            color: black;
            align-items: center;
            font-weight: 500;
        }

        .btn-secondary {
            display: flex;
            align-items: center;
            height: 30px;
            padding: 10px;
        }

        .choose {
            color: black;
            margin-right: 20px;
        }

        .submit {
            background-color: rgb(79 162 111);
            border-radius: 5px;
            border: rgb(79 162 111);
            color: white;
        }

        .close {
            border: none;
            background-color: white;
            font-size: 20px;
        }
    </style>

    <body>

        <div class="main-wrapper main-wrapper-02">
            <%--<jsp:include page="../component/administration/header.jsp" />--%>
            <div class="section login-header">
                <!-- Login Header Wrapper Start -->
                <div class="login-header-wrapper navbar navbar-expand">

                    <!-- Header Logo Start -->
                    <div class="login-header-logo">
                        <a href="index.html"><img src="${pageContext.request.contextPath}/assets/images/logo-icon.png" alt="Logo"></a></li>
                    </div>
                    <!-- Header Logo End -->

                    <!-- Header Search Start -->
                    <div class="login-header-search dropdown">
                    </div>
                    <!-- Header Search End -->

                    <!-- Header Action Start -->
                    <div class="login-header-action ml-auto">
                        <div class="dropdown">
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
                        </div>

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
            <!-- Courses Admin Start -->
            <div class="section overflow-hidden position-relative" id="wrapper">

                <!-- Sidebar Wrapper Start -->
                <%--<jsp:include page="../component/administration/menu.jsp" />--%>
                <div class="sidebar-wrapper">
                    <div class="menu-list">
                        <a class="active" style="color:#fff" href="ExpertCoursesManagement">Course</a>
                        <a style="color:#fff" href="QuizManagement">Quiz</a>
                        <a style="color:#fff" href="managequestion">Question</a>
                        <a style="color:#fff" href="profile">Profile</a>
                        <a style="color:#fff" href="logout">Logout</a>
                    </div>
                </div>
                <!-- Sidebar Wrapper End -->

                <!--Modal ADD-->
                <div class="modal fade" id="add" tabindex="-1" role="dialog"
                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog ">
                        <div class="modal-content">
                            <div class="modal-header">

                                <h5 class="modal-title" id="exampleModalLongTitle"
                                    style="color:black;">Add a Topic</h5>
                                <button type="button" class="close"
                                        data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form action="addTopic" method="post">
                                    <input type="hidden" value="edit" name="type" />
                                    <div class="form-group" >
                                        <label class="control-label" for="subject_name">TOPIC NAME</label>
                                        <div class="single-form">
                                            <input id="question_content" name="topic_name" placeholder="Name"
                                                   class="form-control input-md" type="text"/>
                                            <input hidden="" name="courseId" value="${courseId}"/>
                                            <div id="package_name-error"></div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                                data-dismiss="modal">Close</button>
                                        <input class="submit" type="submit"
                                               value="Add" />

                                    </div>
                                </form>
                            </div>


                        </div>
                    </div>
                </div>
                <!--End Modal-->

                <!-- Page Content Wrapper Start -->
                <div class="page-content-wrapper">
                    <div class="container-fluid custom-container">
                        <!-- Admin Courses Tab Start -->
                        <div class="admin-courses-tab" style="margin-bottom: 20px;">
                            <h3 class="title">Manage Course Content</h3>

                            <div class="courses-tab-wrapper">
                                <div class="tab-btn" >
                                    <button type="button" data-toggle="modal" data-target="#add"
                                            class="btn btn-primary btn-hover-dark"><i
                                            ></i>
                                        <span>New Topic</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <!-- Admin Courses Tab End -->

                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Lessons</th>
                                    <th></th>
                                    <th>Type</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:if test="${topicList.size() != 0}"> 
                                    <c:forEach items="${requestScope.topicList}" var="c" >
                                        <!--topic-->
                                        <tr>
                                            <td>*</td>
                                            <td>${c.getName()}</td>
                                            <td></td>
                                            <td>Topic</td>
                                            <td>
                                                <div style="display: flex;align-items: stretch;">
                                                    <a href="" class=""></a>
                                                    <a href="addLesson?topicId=${c.getId()}" class="" style="margin-left: 20px;">Add Lesson</a>
                                                    <a href="addQuiz?topicId=${c.getId()}" class="" style="margin-left: 20px;">Add Quiz</a>
                                                </div>
                                            </td>
                                        </tr>

                                        <!--lesson and quiz-->
                                        <c:forEach items="${c.getLessons()}" var="l" >
                                            <tr>
                                                <td></td>
                                                <td><i class='fas fa-angle-double-right'></i>
                                                    ${l.getName()}</td>
                                                <td></td>
                                                <td>Lesson</td>
                                                <td>
                                                    <div style="display: flex;align-items: stretch;">
                                                        <a href="editLesson?topicId=${c.getId()}&&lessonId=${l.getId()}" class="">Edit</a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        <c:forEach items="${c.getQuizs()}" var="q" >

                                            <tr>
                                                <td></td>
                                                <td><i class='fas fa-angle-right'></i>
                                                    ${q.getName()}</td>
                                                <td></td>

                                                <td>Quiz</td>
                                                <td>
                                                    <div style="display: flex;align-items: stretch;">
                                                        <a href="" class="">Edit</a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>


                                    </c:forEach>
                                </c:if>
                            </tbody>

                        </table>
                    </div>
                    <%--<jsp:include page="../component/administration/courses-resources.jsp" />--%>
                </div>
            </div>
            <!-- Page Content Wrapper End -->

        </div>
        <!-- Courses Admin End -->
        <%--<jsp:include page="../component/common/footer.jsp" />--%>
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
        <!--Back To Start-->
        <a href="#" class="back-to-top">
            <i class="icofont-simple-up"></i>
        </a>
        <!--Back To End-->

    </div>

    <!-- JS ============================================ -->
    <%--<jsp:include page="../../component/js.jsp" />--%>
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
    <!-- <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script> -->


    <!-- Main JS -->
    <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>
        function changeStatus(id, status) {
            swal({
                title: "Are you sure?",
                text: "You want to change status of this lesson!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                    .then((willDelete) => {
                        if (willDelete) {
                            $.ajax({
                                url: 'lessons',
                                type: 'POST',
                                data: {
                                    lessonId: id,
                                    action: 'changeStatus',
                                    status: !status
                                },
                                success: function (data) {
                                    if (data === 'success') {
                                        swal({
                                            title: "Success!",
                                            text: "Status has been changed!",
                                            icon: "success",
                                            button: "OK",
                                        })
                                                .then(function () {
                                                    location.reload();
                                                });
                                    } else {
                                        swal("Error!", "Status not changed!", "error");
                                    }
                                }
                            });
                        } else {
                            swal("Cancelled", "Status not changed!", "error");
                        }
                    });

        }
    </script>

</body>

</html>