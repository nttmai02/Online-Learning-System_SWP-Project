<%-- 
    Document   : UserManagement
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

                        <div class="search-input dropdown-menu">
                            <form action="#">
                                
                            </form>
                        </div>

                    </div>
                    <!-- Header Search End -->

                    <!-- Header Action Start -->
                    <div class="login-header-action ml-auto">
                        

                        <a class="action author" href="#">
                            <img src="${pageContext.request.contextPath}/assets/images/author/${sessionScope.user.getImage()}" alt="Author">
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

            <!-- Courses Admin Start -->
            <div class="section overflow-hidden position-relative" id="wrapper">

                <!-- Sidebar Wrapper Start -->
                <div class="sidebar-wrapper">
                    <div class="menu-list">
                        <a style="color:#fff" href="CoursesManagement">Course</a>
                        <a class="active" style="color:#fff" href="ManagerUsers">User</a>
                        <a style="color:#fff" href="profile">Profile</a>
                        <a style="color:#fff" href="logout">Logout</a>
                    </div>
                </div>
                <!-- Sidebar Wrapper End -->

                <div class="page-content-wrapper py-0">

                    <!-- Admin Tab Menu Start -->
<!--                    <div class="nav flex-column nav-pills admin-tab-menu">
                        <a href="overview.html">Overview</a>
                        <a href="user-manage.html" class="active">Users Management</a>
                        <a href="students.html">Student’s</a>
                        <a href="engagement.html">Course Engagement</a>
                        <a href="traffic-conversion.html">Traffic & Conversion</a>
                    </div>-->
                    <!-- Admin Tab Menu End -->

                    <!-- Page Content Wrapper Start -->
                    <div class="main-content-wrapper" style="padding-left: 0">
                        <div class="container-fluid">

                            <!-- Admin Top Bar Start -->
                            <div class="admin-courses-tab">
                                <h3 class="title"><a href="managerusers">Users Management</a></h3>
                                <h2></h2>
                                <div class="courses-tab-wrapper">    

                                    <div class="tab-btn">
                                        <a href="addusers" class="btn btn-primary btn-hover-dark">Add new User</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Admin Top Bar End -->

                            <!-- Message Start -->

                            <!-- Message End -->


                            <!--Table-->
                            <div class="content" style="padding: 10px;">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <h4 class="card-title"> Users</h4>
                                            </div>
                                            <div class="card-body">
                                                <div class="table-responsive">
                                                    <table class="table table-striped table-hover">
                                                        <thead class=" text-primary">
                                                            <!--<th></th>-->
                                                        <th>
                                                            Name
                                                        </th>
                                                        <th>
                                                            Email
                                                        </th>
                                                        <th>
                                                            Phone
                                                        </th>
                                                        <th>
                                                            Gender
                                                        </th>
                                                        <th class="text-right">
                                                            Role
                                                        </th>
                                                        <!--<th >Action</th>-->
                                                        </thead>
                                                        <c:forEach items="${listUser}" var="g" begin="${page.getBegin()}" end="${page.getEnd()}">
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <div class="thumb">
                                                                            <img style="border-radius:50%; height: 50px; width: 50px" src="${pageContext.request.contextPath}/assets/images/author/${g.image}" alt="Courses">
                                                                            <span>${g.fullName}</span>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        ${g.email}
                                                                    </td>
                                                                    <td>
                                                                        ${g.phone}
                                                                    </td>
                                                                    <td>${g.gender}</td>
                                                                    <td >
                                                                        ${g.role.name}
                                                                    </td>
                                                                    <!--                                                                <td class="text-right">
                                                                                                                                        <a class="font-weight-bolder" href="#">View Detail</a>
                                                                                                                                        <a href="UserDetail" class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit"></i></a>
                                                                                                                                        <a href="DeleteUser" class="delete" ><i class="material-icons" data-toggle="tooltip" title="Delete"></i>
                                                                                                                                        </a>
                                                                                                                                    </td>-->

                                                                </tr>

                                                            </tbody>
                                                        </c:forEach>
                                                            <c:if test="${listC.size() != 0}"> 
                            <div class="page-pagination">
                                <form action="managerusers">
                                    <ul class="pagination justify-content-center">
                                        <c:if test="${page.getCp() != 1}">
                                            <li><a title="managerusers" href="ManagerUsers?cp=1"><i class="icofont-rounded-double-left"></i></a></li>
                                            <li><a href="ManagerUsers?cp=${page.getCp()-1}"><i class="icofont-rounded-left"></i></a></li>
                                                </c:if>

                                        <c:forEach begin="${page.getStartPage()}" end="${page.getEndPage()}" var="i">
                                            <li><a <c:if test="${i == page.getCp()}">class="active"</c:if> href="ManagerUsers?cp=${i}">${i}</a></li>
                                            </c:forEach>


                                        <c:if test="${page.getCp() != page.getTp()}">
                                            <li><a href="ManagerUsers?cp=${page.getCp()+1}"><i class="icofont-rounded-right"></i></a></li>
                                            <li><a title="End" href="ManagerUsers?cp=${page.getTp()}"><i class="icofont-rounded-double-right"></i></i></a></li>
                                            </c:if>
                                    </ul>
                                </form>
                            </div>
                        </c:if>

                                                    </table>

                                                    <div class="col-md-4">
                                                        <div class="update ml-auto mr-auto">
                                                            <!--<button type="submit" class="btn btn-primary btn-round" style="background-color: red;">Delete all selected users</button>-->
                                                        </div>
                                                    </div>

                                                </div>
                                                </br>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- Engagement Courses End -->
                            <div class="engagement-courses table-responsive">




                                <!-- Engagement Courses End -->

                            </div>
                        </div>
                        <!-- Page Content Wrapper End -->

                    </div>

                </div>
                <!-- Courses Admin End -->

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
            <!-- <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script> -->


            <!-- Main JS -->
            <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
            <script>
                                                function formSubmit() {
                                                    document.getElementById("rId").submit();
                                                }
            </script>

    </body>
</html>
