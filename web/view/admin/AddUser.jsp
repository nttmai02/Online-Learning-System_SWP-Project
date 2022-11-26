<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <!--<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">-->
        <!--<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />-->
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
        <!--<link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">-->
        <!-- CSS Files -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
        <!-- CSS Just for demo purpose, don't include it in your project -->
        <!--<link href="$ {pageContext.request.contextPath}/assets/demo/demo.css" rel="stylesheet" />-->
    </head>

    <body>

        <div class="main-wrapper main-wrapper-02" style="background-color: rgb(230, 230, 230);">

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
                        <button class="search-toggle" data-bs-toggle="dropdown"><i class="flaticon-loupe"></i></button>

                        <div class="search-input dropdown-menu">
                            <form action="#">
                                <input type="text" placeholder="Search here">
                            </form>
                        </div>

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
            <!-- Login Header End -->

            <!-- Courses Admin Start -->
            <div class="section overflow-hidden position-relative" id="wrapper">

                <!-- Sidebar Wrapper Start -->
                <div class="sidebar-wrapper">
                    <div class="menu-list">
                        <a class="active" href="courses-admin.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-1.png" alt="Icon"></a>
                        <a href="messages.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-2.png" alt="Icon"></a>
                        <a href="overview.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-3.png" alt="Icon"></a>
                        <a href="engagement.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-4.png" alt="Icon"></a>
                        <a href="traffic-conversion.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-5.png" alt="Icon"></a>
                    </div>
                </div>
                <!-- Sidebar Wrapper End -->

                <div class="page-content-wrapper py-0" >

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
                    <div class="">
                        <!--<div class="container-fluid">-->
                        <div class="col-md-12">
                            <div class="card card-user" style="padding: 10px 10px; margin-left: 200px;margin-right: 200px; margin-top: 50px; margin-bottom: 50px;">
                                <div class="card-header">
                                    <h2 class="card-title">Add new user</h2>
                                </div>
                             
                                    <!--                                        <div class="col-md-3">
                                                                                <div class="row">
                                                                                    <a href="ChangePass" class="btn border-gray" style="background-color: rgb(82 181 119);">Change Password</a>
                                                                                </div>
                                                                            </div>-->


                                    <form action="addusers" enctype="multipart/form-data" method="post">
                                           <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-6 pr-1">
                                                <label>Role</label>
                                                <div class="">
                                                    <select name="roleID">Select Role
                                                        <option value="3">Expert</option>
                                                    </select>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 pr-1">
                                                <!--                                                    <div class="form-group">
                                                                                                        <label>Email (disabled)</label>
                                                                                                        <input type="text" class="form-control"  placeholder="Company" value="Hoadarealpotato@gmail.com">
                                                                                                    </div>-->
                                                <div class="form-group">
                                                    <label>Username</label>
                                                    <input type="text" class="form-control"  placeholder="Username" name="Fullname" required="">
                                                </div>
                                            </div>
                                            <div class="col-md-6 pl-1">
                                                <div class="form-group">
                                                    <label>Email address</label>
                                                    <input type="email" class="form-control"  placeholder="Email" name="Email" required="">
                                                </div>
                                                <div>${requestScope.message1}</div>
                                            </div>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 pr-1">
                                        <div class="form-group">
                                            <label>Image</label>
                                            <input type="file" class="form-control"  placeholder="image" name="image">
                                        </div>
                                        <div>${requestScope.message}</div>
                                    </div>
                                    <div class="col-md-6 pl-1">
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input pattern="^[0-9a-zA-Z]{6,}$" type="password" class="form-control"  placeholder="password" name="pass" required="">
                                        </div>
                                    </div>
                                </div>
                                <!--                                            <div class="row">
                                                                                <div class="col-md-12">
                                                                                    <div class="form-group">
                                                                                        <label>Address</label>
                                                                                        <input type="text" class="form-control" placeholder="Home Address" value="Melbourne, Australia">
                                                                                    </div>
                                                                                </div>
                                                                            </div>-->
                                <div class="row">
                                    <div class="col-md-4 pr-1">
                                        <div class="form-group">
                                            <label>Phone</label>
                                            <input  pattern="^[0-9]{10,}$"  type="text" class="form-control"  placeholder="phone" name="phone">
                                        </div>
                                    </div>

                                    <!--                                                <div class="col-md-4 pl-1">
                                                                                        <div class="form-group">
                                                                                            <label>Postal Code</label>
                                                                                            <input type="number" class="form-control" placeholder="ZIP Code">
                                                                                        </div>
                                                                                    </div>-->
                                </div>
                                <div class="row">

                                    <div class="form-group" >
                                        <label>Gender</label></br>
                                        <div style="padding-top: 8px">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input"  type="radio" name="inlineRadioOptions" id="inlineRadio1" value="1" >
                                                <label class="form-check-label" for="inlineRadio1" style="font-size: 14px; color: black;">Male</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input"  type="radio" name="inlineRadioOptions" id="inlineRadio2" value="2">
                                                <label class="form-check-label" for="inlineRadio2" style="font-size: 14px; color: black;">Female</label>
                                            </div>
                                        </div>

                                        <!--<input type="radio" class="form-control" placeholder="Country" value="Australia">-->
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="update ml-auto mr-auto">
                                        <button type="submit" class="btn btn-primary btn-round" style="background-color: rgb(48 146 85);">Submit</button>
                                        <!--<button type="submit" class="btn btn-primary btn-round" style="background-color: rgb(255 193 7)!important;">Cancel</button>-->
                                    </div>


                                </div>
                                <!--                                            <div class="row">-->
                                <!--<div class="col-md-12">-->
                                <!--                                            <div class="css-1kgnfh8">
                                                                                <div class="row">
                                                                                    <div class="col-md-3 css-1gj72dd">
                                                                                        <svg aria-hidden="true" fill="none" focusable="false" height="20" viewBox="0 0 20 20" width="20" class="css-1xaidju" id="cds-react-aria-2">
                                                                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M10.027 2.5a3.473 3.473 0 100 6.945 3.473 3.473 0 000-6.945zM5.554 5.973a4.473 4.473 0 118.946 0 4.473 4.473 0 01-8.946 0zM6.58 11.516a.5.5 0 01.357.04 6.73 6.73 0 003.073.744 6.649 6.649 0 003.051-.743.5.5 0 01.36-.04c3.305.861 5.079 3.675 5.079 6.483h-1c0-2.34-1.439-4.676-4.152-5.467a7.676 7.676 0 01-3.336.767h-.004a7.759 7.759 0 01-3.355-.767C3.954 13.324 2.5 15.661 2.5 18h-1c0-2.81 1.793-5.622 5.08-6.484z" fill="currentColor">
                                                                                        </path>
                                                                                        </svg>
                                                                                    </div>
                                                                                    </br>
                                                                                    <div class="col-md-6 css-1cq002f">
                                                                                        <div class="css-ek3fxo">
                                                                                            <div aria-live="polite">
                                                                                                <div class="rc-PhotoUploadButtonContainer">
                                                                                                    <div class="rc-PhotoUploadButton css-m82vil">
                                                                                                        <button class="cds-30 cds-1 cds-3 css-l20o0z cds-12 cds-button-disableElevation" tabindex="0" type="button">
                                                                                                            <span class="cds-2 cds-button-label">Upload photo</span>
                                                                                                        </button>
                                                                                                        <span class="transloadit-form" style="overflow: hidden; cursor: pointer; display: inline-block; position: relative;">
                                                                                                            <input id="photo-uploader" type="file" name="my_file" accept="image/*" style="position: absolute; top: 0px; right: 0px; height: 100%; font-size: 100px; cursor: pointer;">
                                                                                                        </span> 
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div><p class="caption-text color-secondary-text" style="margin-top: 12px; font-size: 12px">Maximum size of 1MB. JPG, GIF, or PNG.</p>
                                                                                    </div>
                                                                                </div>
                                
                                                                            </div>-->
                                <!--</div>-->
                                <!--</div>-->
                                <!--                                            <div class="row">
                                                                                <div class="update ml-auto mr-auto">
                                                                                    <button type="submit" class="btn btn-primary btn-round" style="background-color: rgb(48 146 85);">Update Profile</button>
                                                                                </div>
                                                                            </div>-->
                                </form>
                                <!--                                        <form>
                                                                            <div class="row">
                                                                                <div class="col-md-4 form-group">
                                                                                    <label>Role</label>
                                                                                    <select class="form-select form-select-lg mb-3">
                                                                                        <option selected>Marketing</option>
                                                                                        <option value="1">Expert</option>
                                                                                    </select>
                                                                                    <input type="text" class="form-control"  placeholder="Company" value="Chet">
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="update ml-auto mr-auto">
                                                                                    <button type="submit" class="btn btn-primary btn-round" style="background-color: rgb(48 146 85);">Update Role</button>
                                                                                </div>
                                                                            </div>
                                                                        </form>-->
                            </div>
                        </div>
                    </div>
                    <!-- Admin Top Bar Start -->


                    <!-- Admin Top Bar End -->

                    <!-- Message Start -->

                    <!-- Message End -->


                    <!--Table-->

                    <!-- Engagement Courses End -->

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

</body>
</html>
