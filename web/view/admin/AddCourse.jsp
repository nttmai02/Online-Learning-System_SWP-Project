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
        <!--     Fonts and icons     -->
                <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
                 <!--CSS Files--> 
                <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
                <!--<link href="${pageContext.request.contextPath}/assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />-->
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
                    </div>
                    <!-- Header Search End -->

                    <!-- Header Action Start -->
                    <div class="login-header-action ml-auto">
                        <div class="dropdown">
                            <!--khum can doan nay-->
                            <div class="dropdown-menu dropdown-notification">
                                
                                <!--end-->
                            </div>
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
                        <!--<a class="active" href="courses-admin.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-1.png" alt="Icon"></a>-->
                        <a class="active" style="color:#fff" href="CoursesManagement">Course</a>
                        <a style="color:#fff" href="ManagerUsers">User</a>
                        <a style="color:#fff" href="profile">Profile</a>
                        <a style="color:#fff" href="logout">Logout</a>
                        
<!--                    <a href="messages.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-2.png" alt="Icon"></a>
                        <a href="overview.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-3.png" alt="Icon"></a>
                        <a href="engagement.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-4.png" alt="Icon"></a>
                        <a href="traffic-conversion.html"><img src="${pageContext.request.contextPath}/assets/images/menu-icon/icon-5.png" alt="Icon"></a>-->
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
                            <div class="card card-user" style="padding: 10px 10px; margin-left: 200px;margin-right: 200px; margin-top: 20px; margin-bottom: 50px;">
                                <div class="card-header">
                                    <h2 class="card-title">New Course</h2>
                                </div>
                                <form  action="AddCourse" enctype="multipart/form-data" method="post" class="form-horizontal" style="padding: 20px">
                                    <fieldset style="color: rgb(35 100 60)">

                                        <!-- Form Name -->
                                        <!--<legend>COURSES</legend>-->

                                        <!-- Text input-->
                                        

                                        <!-- Text input-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="course_name">COURSE NAME</label>  
                                            <div class="col-md-6">
                                                <input id="course_name" name="courseName" placeholder="COURSE NAME" class="form-control input-md" required="" type="text"/>

                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="course_category">COURSE CATEGORY</label>
                                            <div class="col-md-6"  >
                                                <div style="height: 100px;width: 172.25px;overflow-y: scroll;">
                                                <select  onmousedown="if(this.options.length>4){this.size=4;}"  onchange='this.size=0;' onblur="this.size=0;" size="5" style="width: 100%"  id="course_category" name="courseCategory" class="form-control">

                                                    <option selected value="${categoryList[0].id}">${categoryList[0].name}</option>
                                                    <c:forEach begin="1" end="${categoryList.size()-1}" var="i">
                                                        <option value="${categoryList[i].id}">${categoryList[i].name}</option>
                                                    </c:forEach>
                                                </select>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Text input-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="course_image">COURSE IMAGE</label>  
                                            <div class="col-md-6">
                                                <input id="course_image" name="courseImage" placeholder="COURSE IMAGE" class="form-control input-md" required="" type="file"/>

                                            </div>
                                        </div>

                                        <!-- Textarea -->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="course_description">COURSE DESCRIPTION</label>
                                            <div class="col-md-6">                     
                                                <textarea class="form-control" id="courseDescription" name="courseDescription" placeholder="COURSE DESCRIPTION" required=""></textarea>
                                            </div>
                                        </div>
                                    
                                       
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="course_status">STATUS</label>  
                                            <div style="padding-top: 5px" class="col-md-6">
                                                <!--<input id="course_status"  placeholder="COURSE STATUS" class="form-control input-md" required="" type="file" accept="image/*"/>-->
                                                <input id="course_status" type="radio" value="1" name="courseStatus" checked/> Published &nbsp;
                                                <input id="course_status" type="radio" value="0" name="courseStatus"/> Unpublished

                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="course_featured">ADD TO FEATURED ITEM</label>  
                                            <div style="padding-top: 5px" class="col-md-6">
                                                <!--<input id="course_status"  placeholder="COURSE STATUS" class="form-control input-md" required="" type="file" accept="image/*"/>-->
                                                <input id="course_featured" type="radio" value="1" name="courseFeatured" checked/> Yes &nbsp;
                                                <input id="course_featured" type="radio" value="0" name="courseFeatured"/> No

                                            </div>
                                        </div>

                                        

                                            <!-- Button -->
                                            <div class="form-group">
                                                <label class="col-md-6 control-label" for="singlebutton"></label>
                                                <div class="col-md-4">
                                                    <button id="singlebutton" name="singlebutton" class="btn btn-primary">ADD</button>
                                                </div>
                                            </div>

                                    </fieldset>
                                </form>
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
<!--                                <a href="#">Terms of Service</a>
                                <a href="#">Privacy Policy</a>
                                <a href="#">Sitemap</a>
                                <a href="#">Security</a>-->
                            </div>
                            <div class="copyright-text">
                                <!--<p>&copy; 2021 <span> Edule </span> Made with <i class="icofont-heart-alt"></i> by <a href="#">Codecarnival</a></p>-->
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
