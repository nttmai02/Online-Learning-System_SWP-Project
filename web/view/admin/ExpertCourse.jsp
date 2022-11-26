<%-- 
    Document   : ExpertCourse
    Created on : Oct 8, 2022, 3:25:14 PM
    Author     : Ngoc Hoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Edule - eLearning Website Template</title>
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


        <!--====== Use the minified version files listed below for better performance and remove the files listed above ======-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/vendor/plugins.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    </head>

    <body>

        <div class="main-wrapper main-wrapper-02">

            <!-- Login Header Start -->
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
                        <div class="search-input">
                            <form action="ExpertCourse" >
                                <input type="hidden" name="courseId" value="${course.id}"/>
                                <input name="search" type="text"<c:if test="${search == null}">placeholder="Search here"</c:if><c:if test="${search != null}">value="${search}"</c:if>>
                                    <button><i class="icofont-search-1"></i></button>
                                </form>
                            </div>
                        </div>
                        <!-- Header Search End -->

                        <!-- Header Action Start -->
                        <div class="login-header-action ml-auto">
                            <div class="dropdown">
                            </div>

                            <a class="action author" href="#">
                                    <img src="${pageContext.request.contextPath}/assets/images/author/${user.image}" alt="Author">
                        </a>

                        <div class="dropdown">
                            <button class="action more" data-bs-toggle="dropdown">
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="" href="#"><i class="icofont-user"></i> Profile</a></li>
                                <li><a class="" href="#"><i class="icofont-logout"></i> Sign Out</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Header Action End -->

                </div>
                <!-- Login Header Wrapper End -->
            </div>
            <!-- Login Header End -->

            <!-- Courses Admin Start -->
            <div class="section overflow-hidden position-relative" id="wrapper">

                <!-- Sidebar Wrapper Start -->
                <div class="sidebar-wrapper">
                    <div class="menu-list">
                        <a class="active" style="color:#fff" href="CoursesManagement">Course</a>
                        <a style="color:#fff" href="ManagerUsers">User</a>
                        <a style="color:#fff" href="profile">Profile</a>
                        <a style="color:#fff" href="logout">Logout</a>
<!--                        <a class="active" href="courses-admin.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-1.png" alt="Icon"></a>
                        <a href="messages.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-2.png" alt="Icon"></a>
                        <a href="overview.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-3.png" alt="Icon"></a>
                        <a href="engagement.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-4.png" alt="Icon"></a>
                        <a href="traffic-conversion.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-5.png" alt="Icon"></a>-->
                    </div>
                </div>
                <!-- Sidebar Wrapper End -->

                <!-- Page Content Wrapper Start -->
                <div class="page-content-wrapper">
                    <div class="container-fluid custom-container" >



                        <!-- Admin Courses Tab Start -->
                        <div class="admin-courses-tab">
                            <h3 class="title">Assgin</h3>

                            <div class="courses-tab-wrapper">
                                <div class="tab-btn">
                                    <c:if test="${search != null}">
                                        <a href="ExpertCourse?courseId=${course.id}" class="btn btn-primary btn-hover-dark">All</a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                        <!-- Admin Courses Tab End -->

                        <!-- Admin Courses Tab Content Start -->
                        <div class="admin-courses-tab-content">
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="tab1">

                                    <!-- Courses Item Start -->
                                    <c:if test="${expertList.size() != 0}"> 
                                        <c:forEach items="${expertList}" var="e" begin="${page.getBegin()}" end="${page.getEnd()}">
                                            <div class="courses-item">
                                                <div class="item-thumb">
                                                    <a href="#">
                                                        <img style="width: 250px" src="${pageContext.request.contextPath}/assets/images/author/${e.image}" alt="Expert">
                                                    </a>
                                                </div>


                                                <div class="content-title">
                                                    <div class="meta">
                                                    </div>
                                                    <h3 class="title"><a href="#"></a>${e.fullName}</h3>
                                                    <h5 class="title"><a href="#"></a>${e.email}</h5>
                                                    <h5 class="title"><a href="#"></a>${e.phone}</h5>
                                                </div>

                                                <div class="content-wrapper">
                                                    <div class="tab-btn">
                                                        <form action = "ExpertCourse" method="post">
                                                            <c:set var="check" value="false"></c:set>
                                                            <c:forEach items="${course.usersTeach}" var="u">
                                                                <c:if test="${u.id==e.id}">
                                                                    <!--<button class="btn btn-primary btn-hover-dark">-->
                                                                    <a style="width:150px;padding:0" href="${pageContext.request.contextPath}/AssignCourse?courseId=${course.id}&&userId=${e.id}&&unassign=1" class="btn btn-primary btn-hover-dark">Unassign</a>
                                                                    <!--Unassign-->
                                                                    <!--</button>-->
                                                                    <c:set var="check" value="true"></c:set>
                                                                </c:if>   
                                                            </c:forEach>
                                                            <c:if test="${check==false}">
                                                                <!--<button class="btn btn-primary btn-hover-dark">-->
                                                                <a style="width:150px;padding:0" href="${pageContext.request.contextPath}/AssignCourse?courseId=${course.id}&&userId=${e.id}&&unassign=0" class="btn btn-primary btn-hover-dark">Assign</a>
                                                                <!--Assign-->
                                                                <!--</button>-->
                                                            </c:if>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                        <!-- Admin Courses Tab Content End -->


                        <c:if test="${expertList.size() != 0}"> 
                            <!--Paging Start-->
                            <div class="page-pagination">
                                <form action="BlogServlet">
                                    <ul class="pagination justify-content-center">
                                        <c:if test="${page.getCp() != 1}">
                                            <li><a title="Home" href="ExpertCourse?cp=1&&courseId=${course.id}"><i class="icofont-rounded-double-left"></i></a></li>
                                            <li><a href="ExpertCourse?cp=${page.getCp()-1}&&courseId=${course.id}"><i class="icofont-rounded-left"></i></a></li>
                                                </c:if>

                                        <c:forEach begin="${page.getStartPage()}" end="${page.getEndPage()}" var="i">
                                            <li><a <c:if test="${i == page.getCp()}">class="active"</c:if> href="ExpertCourse?cp=${i}&&courseId=${course.id}">${i}</a></li>
                                            </c:forEach>


                                        <c:if test="${page.getCp() != page.getTp()}">
                                            <li><a href="ExpertCourse?cp=${page.getCp()+1}&&courseId=${course.id}"><i class="icofont-rounded-right"></i></a></li>
                                            <li><a title="End" href="ExpertCourse?cp=${page.getTp()}&&courseId=${course.id}"><i class="icofont-rounded-double-right"></i></i></a></li>
                                            </c:if>
                                    </ul>
                                </form>
                            </div>
                        </c:if>
                        <!--Paging End-->



                        <!-- Courses Resources Start -->
                        <div class="courses-resources">
                            <!--<h4 class="title">Here are our most popular instructor resources.</h4>-->

                            <!-- Resources Wrapper Start -->
                            <div class="resources-wrapper">
                                <div class="row row-cols-xl-6 row-cols-md-3 row-cols-2">

                                </div>
                            </div>
                            <!-- Resources Wrapper End -->

                        </div>
                        <!-- Courses Resources End -->

                    </div>
                </div>
                <!-- Page Content Wrapper End -->

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
            <!-- <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script> -->


            <!-- Main JS -->
            <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

    </body>
</html>
