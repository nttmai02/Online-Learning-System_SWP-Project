<%-- 
    Document   : home
    Created on : Oct 5, 2022, 10:17:15 AM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Edule - eLearning Website Template</title>
        <meta name="robots" content="noindex, follow" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">

        <!-- CSS
            ============================================ -->

        <!-- Icon Font CSS -->
        <link rel="stylesheet" href="assets/css/plugins/icofont.min.css">
        <link rel="stylesheet" href="assets/css/plugins/flaticon.css">
        <link rel="stylesheet" href="assets/css/plugins/font-awesome.min.css">

        <!-- Plugins CSS -->
        <link rel="stylesheet" href="assets/css/plugins/animate.min.css">
        <link rel="stylesheet" href="assets/css/plugins/swiper-bundle.min.css">
        <link rel="stylesheet" href="assets/css/plugins/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/plugins/nice-select.css">
        <link rel="stylesheet" href="assets/css/plugins/apexcharts.css">
        <link rel="stylesheet" href="assets/css/plugins/jqvmap.min.css">

        <!-- Main Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">


        <!--====== Use the minified version files listed below for better performance and remove the files listed above ======-->
        <!-- <link rel="stylesheet" href="assets/css/vendor/plugins.min.css">
        <link rel="stylesheet" href="assets/css/style.min.css"> -->

    </head>

    <body>

        <div class="main-wrapper">

            <!-- Header Section Start -->
            <div class="header-section">
                <!-- Header Main Start -->
                <div class="header-main">
                    <div class="container">

                        <!-- Header Main Start -->
                        <div class="header-main-wrapper">

                            <!-- Header Logo Start -->
                            <div class="header-logo">
                                <a href="home"><img src="assets/images/logo.png" alt="Logo"></a>
                            </div>
                            <!-- Header Logo End -->

                            <!-- Header Menu Start -->
                            <div class="header-menu d-none d-lg-block">
                                <ul class="nav-menu">
                                    <li><a href="home">Home</a></li>
                                    <li>
                                     
                                    </li>
                                    <!-- <li>
                                        <a href="#">Pages </a>
                                        <ul class="sub-menu">
                                            <li><a href="about.html">About</a></li>
                                            <li><a href="register.html">Register</a></li>
                                            <li><a href="login.html">Login</a></li>
                                            <li><a href="faq.html">FAQ</a></li>
                                            <li><a href="404-error.html">404 Error</a></li>
                                            <li><a href="after-enroll.html">After Enroll</a></li>
                                            <li><a href="courses-admin.html">Instructor Dashboard (Course List)</a></li>
                                            <li><a href="overview.html">Instructor Dashboard (Performance)</a></li>
                                            <li><a href="students.html">Students</a></li>
                                            <li><a href="reviews.html">Reviews</a></li>
                                            <li><a href="engagement.html">Course engagement</a></li>
                                            <li><a href="traffic-conversion.html">Traffic & conversion</a></li>
                                            <li><a href="messages.html">Messages</a></li>
                                        </ul>
                                    </li> -->
                                    <li>
                                        <a href="#">Blog</a>
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="#">Blog</a>
                                                <ul class="sub-menu">
                                                    <!-- <li><a href="blog-grid.html">Blog</a></li>
                                                    <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                                    <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li> -->
                                                    <li><a href="">HTML</a></li>
                                                    <li><a href="">CSS</a></li>
                                                    <li><a href="">JavaScript</a></li>
                                                </ul>
                                            </li>
                                            <!-- <li>
                                                <a href="#">Blog Details</a>
                                                <ul class="sub-menu">
                                                    <li><a href="blog-details-left-sidebar.html">Blog Details Left Sidebar</a></li>
                                                    <li><a href="blog-details-right-sidebar.html">Blog Details Right Sidebar</a></li>
                                                </ul>
                                            </li> -->
                                        </ul>
                                    </li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>

                            </div>
                            <!-- Header Menu End -->

                            <!-- Header Sing In & Up Start -->
                            <div class="header-sign-in-up d-none d-lg-block">
                                <c:if test="${sessionScope.user.role.getId()!=4&&sessionScope.user!=null}">
                                    <ul>
                                        <li><a class="sign-in" href="profile">Manager profile</a></li>
                                        <li><a class="sign-in" href="logout">Log out</a></li>
                                    </ul>
                                </c:if>
                                <c:if test="${sessionScope.user==null}">
                                    <ul>
                                        <li><a class="sign-in" href="login">Login</a></li>
                                        <li><a class="sign-in" href="signup">Sign up</a></li>
                                    </ul>
                                </c:if>
                            </div>
                            <!-- Header Sing In & Up End -->

                            <!-- Header Mobile Toggle Start -->
                            <div class="header-toggle d-lg-none">
                                <a class="menu-toggle" href="javascript:void(0)">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </a>
                            </div>
                            <!-- Header Mobile Toggle End -->

                        </div>
                        <!-- Header Main End -->

                    </div>
                </div>
                <!-- Header Main End -->

            </div>
            <!-- Header Section End -->

            <!-- Mobile Menu Start -->
            <div class="mobile-menu">

                <!-- Menu Close Start -->
                <a class="menu-close" href="javascript:void(0)">    
                    <i class="icofont-close-line"></i>
                </a>
                <!-- Menu Close End -->

                <!-- Mobile Top Medal Start -->
                <div class="mobile-top">
                    <p><i class="flaticon-phone-call"></i> <a href="tel:9702621413">(970) 262-1413</a></p>
                    <p><i class="flaticon-email"></i> <a href="mailto:address@gmail.com">address@gmail.com</a></p>
                </div>
                <!-- Mobile Top Medal End -->

                <!-- Mobile Sing In & Up Start -->
                <div class="mobile-sign-in-up">
                    <ul>
                        <li><a class="sign-in" href="login">Sign In</a></li>
                        <li><a class="sign-up" href="register.html">Sign Up</a></li>
                    </ul>
                </div>
                <!-- Mobile Sing In & Up End -->

                <!-- Mobile Menu Start -->
                <div class="mobile-menu-items">
                    <ul class="nav-menu">
                        <li><a href="view/common/home.jsp">Home</a></li>
                        <li>
                            <a href="view/common/course.jsp">All Course</a>
                            <ul class="sub-menu">
                                <li><a href="view/common/course.jsp">Courses</a></li>
                                <li><a href="courses-details.html">Courses Details</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Pages </a>
                            <ul class="sub-menu">
                                <li><a href="about.html">About</a></li>
                                <li><a href="register.html">Register</a></li>
                                <li><a href="login.html">Login</a></li>
                                <li><a href="faq.html">FAQ</a></li>
                                <li><a href="404-error.html">404 Error</a></li>
                                <li><a href="after-enroll.html">After Enroll</a></li>
                                <li><a href="courses-admin.html">Instructor Dashboard (Course List)</a></li>
                                <li><a href="overview.html">Instructor Dashboard (Performance)</a></li>
                                <li><a href="students.html">Students</a></li>
                                <li><a href="reviews.html">Reviews</a></li>
                                <li><a href="engagement.html">Course engagement</a></li>
                                <li><a href="traffic-conversion.html">Traffic & conversion</a></li>
                                <li><a href="messages.html">Messages</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Blog</a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="#">Blog</a>
                                    <ul class="sub-menu">
                                        <li><a href="blog-grid.html">Blog</a></li>
                                        <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                        <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Blog Details</a>
                                    <ul class="sub-menu">
                                        <li><a href="blog-details-left-sidebar.html">Blog Details Left Sidebar</a></li>
                                        <li><a href="blog-details-right-sidebar.html">Blog Details Right Sidebar</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>

                </div>
                <!-- Mobile Menu End -->

                <!-- Mobile Menu End -->
                <div class="mobile-social">
                    <ul class="social">
                        <li><a href="#"><i class="flaticon-facebook"></i></a></li>
                        <li><a href="#"><i class="flaticon-twitter"></i></a></li>
                        <li><a href="#"><i class="flaticon-skype"></i></a></li>
                        <li><a href="#"><i class="flaticon-instagram"></i></a></li>
                    </ul>
                </div>
                <!-- Mobile Menu End -->

            </div>
            <!-- Mobile Menu End -->

            <!-- Overlay Start -->
            <div class="overlay"></div>
            <!-- Overlay End -->

            <!-- Slider Start -->
            <div class="section slider-section">

                <!-- Slider Shape Start -->
                <div class="slider-shape">
                    <img class="shape-1 animation-round" src="assets/images/shape/shape-8.png" alt="Shape">
                </div>
                <!-- Slider Shape End -->

                <div class="container">

                    <!-- Slider Content Start -->
                    <div class="slider-content">
                        <h4 class="sub-title">Start your favourite course</h4>
                        <h2 class="main-title">Now learning from anywhere, and build your <span>bright career.</span></h2>
                        <p>It has survived not only five centuries but also the leap into electronic typesetting.</p>
                        <a class="btn btn-primary btn-hover-dark" href="#">Start A Course</a>
                    </div>
                    <!-- Slider Content End -->

                </div>

                <!-- Slider Courses Box Start -->
                <div class="slider-courses-box">

                    <img class="shape-1 animation-left" src="assets/images/shape/shape-5.png" alt="Shape">

                    <div class="box-content">
                        <div class="box-wrapper">
                            <i class="flaticon-open-book"></i>
                            <span class="count">1,235</span>
                            <p>courses</p>
                        </div>
                    </div>

                    <img class="shape-2" src="assets/images/shape/shape-6.png" alt="Shape">

                </div>
                <!-- Slider Courses Box End -->

                <!-- Slider Rating Box Start -->
                <div class="slider-rating-box">

                    <div class="box-rating">
                        <div class="box-wrapper">
                            <span class="count">4.8 <i class="flaticon-star"></i></span>
                            <p>Rating (86K)</p>
                        </div>
                    </div>

                    <img class="shape animation-up" src="assets/images/shape/shape-7.png" alt="Shape">

                </div>
                <!-- Slider Rating Box End -->

                <!-- Slider Images Start -->
                <div class="slider-images">
                    <div class="images">
                        <img src="assets/images/slider/slider-1.png" alt="Slider">
                    </div>
                </div>
                <!-- Slider Images End -->

                <!-- Slider Video Start -->
                <div class="slider-video">
                    <img class="shape-1" src="assets/images/shape/shape-9.png" alt="Shape">

                    <div class="video-play">
                        <img src="assets/images/shape/shape-10.png" alt="Shape">
                        <a href="https://www.youtube.com/watch?v=BRvyWfuxGuU" class="play video-popup"><i class="flaticon-play"></i></a>
                    </div>
                </div>
                <!-- Slider Video End -->

            </div>
            <!-- Slider End -->

            <!-- All Courses Start -->
            <div class="section section-padding-02">
                <div class="container">

                    <!-- All Courses Top Start -->
                    <div class="courses-top">

                        <!-- Section Title Start -->
                        <div class="section-title shape-01">
                            <h2 class="main-title">All <span>Courses</span> of Edule</h2>
                        </div>
                        <!-- Section Title End -->

                        <!-- Courses Search Start -->
                        <div class="courses-search">
                            <form action="home" method="post">
                                <input value="${txtSearch}"name="txt" type="text" placeholder="Search your course">
                                <button type="submit"><i class="flaticon-magnifying-glass"></i></button>
                            </form>
                        </div>
                        <!-- Courses Search End -->

                    </div>
                    <!-- All Courses Top End -->

                    <!-- All Courses Tabs Menu Start -->
                    <div class="courses-tabs-menu courses-active">
                        <div class="swiper-container">
                            <ul class="swiper-wrapper nav">
                                <c:forEach items="${listCa}" var='k'>
                                    <a class="swiper-slide" href="home?CateId=${k.id}">${k.name}</a>                       
                                </c:forEach>
                            </ul>
                        </div>

                        <!-- Add Pagination -->
                        <div class="swiper-button-next"><i class="icofont-rounded-right"></i></div>
                        <div class="swiper-button-prev"><i class="icofont-rounded-left"></i></div>
                    </div>
                    <!-- All Courses Tabs Menu End -->

                    <!-- All Courses tab content Start -->
                    <div class="tab-content courses-tab-content">
                        <div class="tab-pane fade show active" id="tabs1">

                            <!-- All Courses Wrapper Start -->
                            <div class="courses-wrapper">
                                <div class="row">
                                    <c:forEach  items="${listC}"  var="o" begin="${page.getBegin()}" end="${page.getEnd()}" >
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="${o.image}" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">

                                                            <div class="author-thumb">
                                                                <c:forEach items="${o.usersTeach}" var="t">                                                                
                                                                    <a href="#"><img src="${t.image}" alt="Author"></a>                                                           
                                                                    </c:forEach>
                                                            </div>
                                                            <div class="author-name">
                                                                <c:forEach items="${o.usersTeach}" var="t">                                                                
                                                                    <a class="name" href="#">${t.fullName}</a>                                                               
                                                                </c:forEach>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">${o.category.name}</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">${o.name}</a></h4>
                                                    <div class="courses-meta">

                                                        <c:forEach items="${requestScope.listH}" var="entry">
                                                            <c:if test="${entry.key.id==o.id}">
                                                                <span> <i class="icofont-read-book"></i> ${entry.value} Topics</span>
                                                            </c:if>
                                                        </c:forEach>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <c:forEach items="${o.pricePackages}" var="p" varStatus="loop">                                                                
                                                                <c:if test="${loop.index == 0}">
                                                                    <span class="sale-parice">${p.listedPrice}</span>
                                                                    <span class="old-parice">${p.salePrice}</span>
                                                                </c:if>                                                          
                                                            </c:forEach>

                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <!--                                <div class="col-lg-4 col-md-6">
                                                                             Single Courses Start 
                                                                            <div class="single-courses">
                                                                                <div class="courses-images">
                                                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-02.jpg" alt="Courses"></a>
                                                                                </div>
                                                                                <div class="courses-content">
                                                                                    <div class="courses-author">
                                                                                        <div class="author">
                                                                                            <div class="author-thumb">
                                                                                                <a href="#"><img src="assets/images/author/author-02.jpg" alt="Author"></a>
                                                                                            </div>
                                                                                            <div class="author-name">
                                                                                                <a class="name" href="#">Pamela Foster</a>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="tag">
                                                                                            <a href="#">Science</a>
                                                                                        </div>
                                                                                    </div>
                                        
                                                                                    <h4 class="title"><a href="courses-details.html">Create Amazing Color Schemes for Your UX Design Projects</a></h4>
                                                                                    <div class="courses-meta">
                                                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                                                    </div>
                                                                                    <div class="courses-price-review">
                                                                                        <div class="courses-price">
                                                                                            <span class="sale-parice">$420.00</span>
                                                                                        </div>
                                                                                         <div class="courses-review">
                                                                                            <span class="rating-count">4.9</span>
                                                                                            <span class="rating-star">
                                                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                                                            </span>
                                                                                        </div> 
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                             Single Courses End 
                                                                        </div>
                                                                        <div class="col-lg-4 col-md-6">
                                                                             Single Courses Start 
                                                                            <div class="single-courses">
                                                                                <div class="courses-images">
                                                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-03.jpg" alt="Courses"></a>
                                                                                </div>
                                                                                <div class="courses-content">
                                                                                    <div class="courses-author">
                                                                                        <div class="author">
                                                                                            <div class="author-thumb">
                                                                                                <a href="#"><img src="assets/images/author/author-03.jpg" alt="Author"></a>
                                                                                            </div>
                                                                                            <div class="author-name">
                                                                                                <a class="name" href="#">Rose Simmons</a>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="tag">
                                                                                            <a href="#">Science</a>
                                                                                        </div>
                                                                                    </div>
                                        
                                                                                    <h4 class="title"><a href="courses-details.html">Culture & Leadership: Strategies for a Successful Business</a></h4>
                                                                                    <div class="courses-meta">
                                                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                                                    </div>
                                                                                    <div class="courses-price-review">
                                                                                        <div class="courses-price">
                                                                                            <span class="sale-parice">$295.00</span>
                                                                                            <span class="old-parice">$340.00</span>
                                                                                        </div>
                                                                                         <div class="courses-review">
                                                                                            <span class="rating-count">4.9</span>
                                                                                            <span class="rating-star">
                                                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                                                            </span>
                                                                                        </div> 
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                             Single Courses End 
                                                                        </div>
                                                                        <div class="col-lg-4 col-md-6">
                                                                             Single Courses Start 
                                                                            <div class="single-courses">
                                                                                <div class="courses-images">
                                                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-04.jpg" alt="Courses"></a>
                                                                                </div>
                                                                                <div class="courses-content">
                                                                                    <div class="courses-author">
                                                                                        <div class="author">
                                                                                            <div class="author-thumb">
                                                                                                <a href="#"><img src="assets/images/author/author-04.jpg" alt="Author"></a>
                                                                                            </div>
                                                                                            <div class="author-name">
                                                                                                <a class="name" href="#">Jason Williams</a>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="tag">
                                                                                            <a href="#">Finance</a>
                                                                                        </div>
                                                                                    </div>
                                        
                                                                                    <h4 class="title"><a href="courses-details.html">Finance Series: Learn to Budget and Calculate your Net Worth.</a></h4>
                                                                                    <div class="courses-meta">
                                                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                                                    </div>
                                                                                    <div class="courses-price-review">
                                                                                        <div class="courses-price">
                                                                                            <span class="sale-parice">Free</span>
                                                                                        </div>
                                                                                         <div class="courses-review">
                                                                                            <span class="rating-count">4.9</span>
                                                                                            <span class="rating-star">
                                                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                                                            </span>
                                                                                        </div> 
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                             Single Courses End 
                                                                        </div>-->
                                        <!--                                <div class="col-lg-4 col-md-6">
                                                                             Single Courses Start 
                                                                            <div class="single-courses">
                                                                                <div class="courses-images">
                                                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-05.jpg" alt="Courses"></a>
                                                                                </div>
                                                                                <div class="courses-content">
                                                                                    <div class="courses-author">
                                                                                        <div class="author">
                                                                                            <div class="author-thumb">
                                                                                                <a href="#"><img src="assets/images/author/author-05.jpg" alt="Author"></a>
                                                                                            </div>
                                                                                            <div class="author-name">
                                                                                                <a class="name" href="#">Jason Williams</a>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="tag">
                                                                                            <a href="#">Marketing</a>
                                                                                        </div>
                                                                                    </div>
                                        
                                                                                    <h4 class="title"><a href="courses-details.html">Build Brand Into Marketing: Tackling the New Marketing Landscape</a></h4>
                                                                                    <div class="courses-meta">
                                                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                                                    </div>
                                                                                    <div class="courses-price-review">
                                                                                        <div class="courses-price">
                                                                                            <span class="sale-parice">$136.00</span>
                                                                                        </div>
                                                                                         <div class="courses-review">
                                                                                            <span class="rating-count">4.9</span>
                                                                                            <span class="rating-star">
                                                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                                                            </span>
                                                                                        </div> 
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                             Single Courses End 
                                                                        </div>-->
                                        <!--                                <div class="col-lg-4 col-md-6">
                                                                             Single Courses Start 
                                                                            <div class="single-courses">
                                                                                <div class="courses-images">
                                                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-06.jpg" alt="Courses"></a>
                                                                                </div>
                                                                                <div class="courses-content">
                                                                                    <div class="courses-author">
                                                                                        <div class="author">
                                                                                            <div class="author-thumb">
                                                                                                <a href="#"><img src="assets/images/author/author-06.jpg" alt="Author"></a>
                                                                                            </div>
                                                                                            <div class="author-name">
                                                                                                <a class="name" href="#">Jason Williams</a>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="tag">
                                                                                            <a href="#">Design</a>
                                                                                        </div>
                                                                                    </div>
                                        
                                                                                    <h4 class="title"><a href="courses-details.html">Graphic Design: Illustrating Badges and Icons with Geometric Shapes</a></h4>
                                                                                    <div class="courses-meta">
                                                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                                                    </div>
                                                                                    <div class="courses-price-review">
                                                                                        <div class="courses-price">
                                                                                            <span class="sale-parice">$237.00</span>
                                                                                        </div>
                                                                                         <div class="courses-review">
                                                                                            <span class="rating-count">4.9</span>
                                                                                            <span class="rating-star">
                                                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                                                            </span>
                                                                                        </div> 
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                             Single Courses End 
                                                                        </div>-->
                                    </c:forEach>
                                </div>
                            </div>

                            <c:if test="${listC.size() != 0}"> 
                                <div class="page-pagination">
                                    <form action="home">
                                        <ul class="pagination justify-content-center">
                                            <c:if test="${page.getCp() != 1}">
                                                <li><a title="Home" href="home?cp=1"><i class="icofont-rounded-double-left"></i></a></li>
                                                <li><a href="home?cp=${page.getCp()-1}"><i class="icofont-rounded-left"></i></a></li>
                                                    </c:if>

                                            <c:forEach begin="${page.getStartPage()}" end="${page.getEndPage()}" var="i">
                                                <li><a <c:if test="${i == page.getCp()}">class="active"</c:if> href="home?cp=${i}">${i}</a></li>
                                                </c:forEach>


                                            <c:if test="${page.getCp() != page.getTp()}">
                                                <li><a href="home?cp=${page.getCp()+1}"><i class="icofont-rounded-right"></i></a></li>
                                                <li><a title="End" href="home?cp=${page.getTp()}"><i class="icofont-rounded-double-right"></i></i></a></li>
                                                </c:if>
                                        </ul>
                                    </form>
                                </div>
                            </c:if>






                            <!-- All Courses Wrapper End -->

                        </div>
                        <div class="tab-pane fade" id="tabs2">

                            <!-- All Courses Wrapper Start -->
                            <div class="courses-wrapper">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-02.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-01.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Jason Williams</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Science</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Data Science and Machine Learning with Python - Hands On!</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$385.00</span>
                                                        <span class="old-parice">$440.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-05.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-02.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Pamela Foster</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Science</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Create Amazing Color Schemes for Your UX Design Projects</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$420.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-01.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-03.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Rose Simmons</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Science</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Culture & Leadership: Strategies for a Successful Business</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$295.00</span>
                                                        <span class="old-parice">$340.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-04.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-04.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Jason Williams</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Finance</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Finance Series: Learn to Budget and Calculate your Net Worth.</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">Free</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-06.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-05.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Jason Williams</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Marketing</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Build Brand Into Marketing: Tackling the New Marketing Landscape</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$136.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-03.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-06.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Jason Williams</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Design</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Graphic Design: Illustrating Badges and Icons with Geometric Shapes</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$237.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                </div>
                            </div>
                            <!-- All Courses Wrapper End -->

                        </div>
                        <div class="tab-pane fade" id="tabs3">

                            <!-- All Courses Wrapper Start -->
                            <div class="courses-wrapper">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-05.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-01.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Jason Williams</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Science</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Data Science and Machine Learning with Python - Hands On!</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$385.00</span>
                                                        <span class="old-parice">$440.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-06.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-02.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Pamela Foster</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Science</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Create Amazing Color Schemes for Your UX Design Projects</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$420.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-03.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-03.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Rose Simmons</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Science</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Culture & Leadership: Strategies for a Successful Business</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$295.00</span>
                                                        <span class="old-parice">$340.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-01.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-04.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Jason Williams</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Finance</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Finance Series: Learn to Budget and Calculate your Net Worth.</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">Free</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-02.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-05.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Jason Williams</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Marketing</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Build Brand Into Marketing: Tackling the New Marketing Landscape</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$136.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-04.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-06.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Jason Williams</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Design</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Graphic Design: Illustrating Badges and Icons with Geometric Shapes</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$237.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                </div>
                            </div>
                            <!-- All Courses Wrapper End -->

                        </div>
                        <div class="tab-pane fade" id="tabs4">

                            <!-- All Courses Wrapper Start -->
                            <div class="courses-wrapper">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-06.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-01.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Jason Williams</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Science</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Data Science and Machine Learning with Python - Hands On!</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$385.00</span>
                                                        <span class="old-parice">$440.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-05.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-02.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Pamela Foster</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Science</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Create Amazing Color Schemes for Your UX Design Projects</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$420.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-04.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-03.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Rose Simmons</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Science</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Culture & Leadership: Strategies for a Successful Business</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$295.00</span>
                                                        <span class="old-parice">$340.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-03.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-04.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Jason Williams</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Finance</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Finance Series: Learn to Budget and Calculate your Net Worth.</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">Free</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-02.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-05.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Jason Williams</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Marketing</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Build Brand Into Marketing: Tackling the New Marketing Landscape</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$136.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-01.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-06.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Jason Williams</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Design</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Graphic Design: Illustrating Badges and Icons with Geometric Shapes</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$237.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Courses End -->
                                    </div>
                                </div>
                            </div>
                            <!-- All Courses Wrapper End -->

                        </div>
                        <div class="tab-pane fade" id="tabs5">

                            <!-- All Courses Wrapper Start -->
                            <div class="courses-wrapper">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6">
                                        <!-- Single Courses Start -->
                                        <div class="single-courses">
                                            <div class="courses-images">
                                                <a href="courses-details.html"><img src="assets/images/courses/courses-03.jpg" alt="Courses"></a>
                                            </div>
                                            <div class="courses-content">
                                                <div class="courses-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="assets/images/author/author-01.jpg" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="#">Jason Williams</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">Science</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="courses-details.html">Data Science and Machine Learning with Python - Hands On!</a></h4>
                                                <div class="courses-meta">
                                                    <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                    <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                </div>
                                                <div class="courses-price-review">
                                                    <div class="courses-price">
                                                        <span class="sale-parice">$385.00</span>
                                                        <span class="old-parice">$440.00</span>
                                                    </div>
                                                    <!-- <div class="courses-review">
                                                        <span class="rating-count">4.9</span>
                                                        <span class="rating-star">
                                                                                                                            <span class="rating-bar" style="width: 80%;"></span>
                                                        </span>
                                                    </div>
                                                </div> -->
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-02.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-02.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Pamela Foster</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Science</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Create Amazing Color Schemes for Your UX Design Projects</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">$420.00</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-01.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-03.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Rose Simmons</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Science</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Culture & Leadership: Strategies for a Successful Business</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">$295.00</span>
                                                            <span class="old-parice">$340.00</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-06.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-04.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Jason Williams</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Finance</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Finance Series: Learn to Budget and Calculate your Net Worth.</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">Free</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-05.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-05.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Jason Williams</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Marketing</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Build Brand Into Marketing: Tackling the New Marketing Landscape</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">$136.00</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-04.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-06.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Jason Williams</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Design</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Graphic Design: Illustrating Badges and Icons with Geometric Shapes</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">$237.00</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                    </div>
                                </div>
                                <!-- All Courses Wrapper End -->

                            </div>
                            <div class="tab-pane fade" id="tabs6">

                                <!-- All Courses Wrapper Start -->
                                <div class="courses-wrapper">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-03.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-01.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Jason Williams</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Science</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Data Science and Machine Learning with Python - Hands On!</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">$385.00</span>
                                                            <span class="old-parice">$440.00</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-05.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-02.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Pamela Foster</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Science</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Create Amazing Color Schemes for Your UX Design Projects</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">$420.00</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-01.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-03.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Rose Simmons</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Science</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Culture & Leadership: Strategies for a Successful Business</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">$295.00</span>
                                                            <span class="old-parice">$340.00</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-04.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-04.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Jason Williams</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Finance</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Finance Series: Learn to Budget and Calculate your Net Worth.</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">Free</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-06.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-05.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Jason Williams</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Marketing</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Build Brand Into Marketing: Tackling the New Marketing Landscape</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">$136.00</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-02.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-06.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Jason Williams</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Design</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Graphic Design: Illustrating Badges and Icons with Geometric Shapes</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">$237.00</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                    </div>
                                </div>
                                <!-- All Courses Wrapper End -->

                            </div>
                            <div class="tab-pane fade" id="tabs7">

                                <!-- All Courses Wrapper Start -->
                                <div class="courses-wrapper">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-04.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-01.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Jason Williams</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Science</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Data Science and Machine Learning with Python - Hands On!</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">$385.00</span>
                                                            <span class="old-parice">$440.00</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-02.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-02.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Pamela Foster</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Science</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Create Amazing Color Schemes for Your UX Design Projects</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">$420.00</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-06.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-03.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Rose Simmons</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Science</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Culture & Leadership: Strategies for a Successful Business</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">$295.00</span>
                                                            <span class="old-parice">$340.00</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-05.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-04.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Jason Williams</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Finance</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Finance Series: Learn to Budget and Calculate your Net Worth.</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">Free</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-01.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-05.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Jason Williams</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Marketing</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Build Brand Into Marketing: Tackling the New Marketing Landscape</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">$136.00</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <!-- Single Courses Start -->
                                            <div class="single-courses">
                                                <div class="courses-images">
                                                    <a href="courses-details.html"><img src="assets/images/courses/courses-03.jpg" alt="Courses"></a>
                                                </div>
                                                <div class="courses-content">
                                                    <div class="courses-author">
                                                        <div class="author">
                                                            <div class="author-thumb">
                                                                <a href="#"><img src="assets/images/author/author-06.jpg" alt="Author"></a>
                                                            </div>
                                                            <div class="author-name">
                                                                <a class="name" href="#">Jason Williams</a>
                                                            </div>
                                                        </div>
                                                        <div class="tag">
                                                            <a href="#">Design</a>
                                                        </div>
                                                    </div>

                                                    <h4 class="title"><a href="courses-details.html">Graphic Design: Illustrating Badges and Icons with Geometric Shapes</a></h4>
                                                    <div class="courses-meta">
                                                        <span> <i class="icofont-clock-time"></i> 08 hr 15 mins</span>
                                                        <span> <i class="icofont-read-book"></i> 29 Lectures </span>
                                                    </div>
                                                    <div class="courses-price-review">
                                                        <div class="courses-price">
                                                            <span class="sale-parice">$237.00</span>
                                                        </div>
                                                        <!-- <div class="courses-review">
                                                            <span class="rating-count">4.9</span>
                                                            <span class="rating-star">
                                                                                                                                <span class="rating-bar" style="width: 80%;"></span>
                                                            </span>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Courses End -->
                                        </div>
                                    </div>
                                </div>
                                <!-- All Courses Wrapper End -->

                            </div>
                        </div>
                        <!-- All Courses tab content End -->

                        <!-- All Courses BUtton Start -->

                        <!-- All Courses BUtton End -->

                    </div>
                </div>
                <!-- All Courses End -->

                <!-- Call to Action Start -->

                <!-- Call to Action End -->

                <!-- How It Work End -->
                <div class="section section-padding mt-n1">
                    <div class="container">

                        <!-- Section Title Start -->
                        <div class="section-title shape-03 text-center">
                            <h5 class="sub-title">Over 1,235+ Course</h5>
                            <h2 class="main-title">How It <span> Work?</span></h2>
                        </div>
                        <!-- Section Title End -->

                        <!-- How it Work Wrapper Start -->
                        <div class="how-it-work-wrapper">

                            <!-- Single Work Start -->
                            <div class="single-work">
                                <img class="shape-1" src="assets/images/shape/shape-15.png" alt="Shape">

                                <div class="work-icon">
                                    <i class="flaticon-transparency"></i>
                                </div>
                                <div class="work-content">
                                    <h3 class="title">Find Your Course</h3>
                                    <p>It has survived not only centurie also leap into electronic.</p>
                                </div>
                            </div>
                            <!-- Single Work End -->

                            <!-- Single Work Start -->
                            <div class="work-arrow">
                                <img class="arrow" src="assets/images/shape/shape-17.png" alt="Shape">
                            </div>
                            <!-- Single Work End -->

                            <!-- Single Work Start -->
                            <div class="single-work">
                                <img class="shape-2" src="assets/images/shape/shape-15.png" alt="Shape">

                                <div class="work-icon">
                                    <i class="flaticon-forms"></i>
                                </div>
                                <div class="work-content">
                                    <h3 class="title">Book A Seat</h3>
                                    <p>It has survived not only centurie also leap into electronic.</p>
                                </div>
                            </div>
                            <!-- Single Work End -->

                            <!-- Single Work Start -->
                            <div class="work-arrow">
                                <img class="arrow" src="assets/images/shape/shape-17.png" alt="Shape">
                            </div>
                            <!-- Single Work End -->

                            <!-- Single Work Start -->
                            <div class="single-work">
                                <img class="shape-3" src="assets/images/shape/shape-16.png" alt="Shape">

                                <div class="work-icon">
                                    <i class="flaticon-badge"></i>
                                </div>
                                <div class="work-content">
                                    <h3 class="title">Get Certificate</h3>
                                    <p>It has survived not only centurie also leap into electronic.</p>
                                </div>
                            </div>
                            <!-- Single Work End -->

                        </div>

                    </div>
                </div>
                <!-- How It Work End -->

                <!-- Download App Start -->

                <!-- Download App End -->

                <!-- Testimonial End -->

                <!-- Testimonial End -->

                <!-- Brand Logo Start -->
                <div class="section section-padding-02">
                    <div class="container">

                        <!-- Brand Logo Wrapper Start -->
                        <div class="brand-logo-wrapper">

                            <img class="shape-1" src="assets/images/shape/shape-19.png" alt="Shape">

                            <img class="shape-2 animation-round" src="assets/images/shape/shape-20.png" alt="Shape">

                            <!-- Section Title Start -->
                            <div class="section-title shape-03">
                                <h2 class="main-title">Best Supporter of <span> Edule.</span></h2>
                            </div>
                            <!-- Section Title End -->

                            <!-- Brand Logo Start -->
                            <div class="brand-logo brand-active">
                                <div class="swiper-container">
                                    <div class="swiper-wrapper">

                                        <!-- Single Brand Start -->
                                        <div class="single-brand swiper-slide">
                                            <img src="assets/images/brand/brand-01.png" alt="Brand">
                                        </div>
                                        <!-- Single Brand End -->

                                        <!-- Single Brand Start -->
                                        <div class="single-brand swiper-slide">
                                            <img src="assets/images/brand/brand-02.png" alt="Brand">
                                        </div>
                                        <!-- Single Brand End -->

                                        <!-- Single Brand Start -->
                                        <div class="single-brand swiper-slide">
                                            <img src="assets/images/brand/brand-03.png" alt="Brand">
                                        </div>
                                        <!-- Single Brand End -->

                                        <!-- Single Brand Start -->
                                        <div class="single-brand swiper-slide">
                                            <img src="assets/images/brand/brand-04.png" alt="Brand">
                                        </div>
                                        <!-- Single Brand End -->

                                        <!-- Single Brand Start -->
                                        <div class="single-brand swiper-slide">
                                            <img src="assets/images/brand/brand-05.png" alt="Brand">
                                        </div>
                                        <!-- Single Brand End -->

                                        <!-- Single Brand Start -->
                                        <div class="single-brand swiper-slide">
                                            <img src="assets/images/brand/brand-06.png" alt="Brand">
                                        </div>
                                        <!-- Single Brand End -->

                                    </div>
                                </div>
                            </div>
                            <!-- Brand Logo End -->

                        </div>
                        <!-- Brand Logo Wrapper End -->

                    </div>
                </div>
                <!-- Brand Logo End -->

                <!-- Blog Start -->
                <div class="section section-padding mt-n1">
                    <div class="container">

                        <!-- Section Title Start -->
                        <div class="section-title shape-03 text-center">
                            <h5 class="sub-title">Latest News</h5>
                            <h2 class="main-title"><span>Blogs</span></h2>
                        </div>
                        <!-- Section Title End -->

                        <!-- Blog Wrapper Start -->
                        <div class="blog-wrapper">
                            <div class="row">
                                <c:forEach items="${listB}" var='e'>
                                    <div class="col-lg-4 col-md-6">

                                        <!-- Single Blog Start -->
                                        <div class="single-blog">
                                            <div class="blog-image">
                                                <a href=""><img src="${e.image}" alt="Blog"></a>
                                            </div>
                                            <div class="blog-content">
                                                <div class="blog-author">
                                                    <div class="author">
                                                        <div class="author-thumb">
                                                            <a href="#"><img src="${e.user.image}" alt="Author"></a>
                                                        </div>
                                                        <div class="author-name">
                                                            <a class="name" href="">${e.user.fullName}</a>
                                                        </div>
                                                    </div>
                                                    <div class="tag">
                                                        <a href="#">${e.category.name}</a>
                                                    </div>
                                                </div>

                                                <h4 class="title"><a href="blog-details-left-sidebar.html">${e.name}</a></h4>

                                                <div class="blog-meta">
                                                    <span> <i class="icofont-calendar"></i>${e.transDate()}</span>
                                                    <!-- <span> <i class="icofont-heart"></i> 2,568+ </span> -->
                                                </div>

                                                <a href="blog-details-left-sidebar.html" class="btn btn-secondary btn-hover-primary">Read More</a>
                                            </div>
                                        </div>
                                        <!-- Single Blog End -->

                                    </div>
                                </c:forEach>

                                <!--                                <div class="col-lg-4 col-md-6">
                                
                                                                     Single Blog Start 
                                                                    <div class="single-blog">
                                                                        <div class="blog-image">
                                                                            <a href="blog-details-left-sidebar.html"><img src="assets/images/blog/blog-02.jpg" alt="Blog"></a>
                                                                        </div>
                                                                        <div class="blog-content">
                                                                            <div class="blog-author">
                                                                                <div class="author">
                                                                                    <div class="author-thumb">
                                                                                        <a href="#"><img src="assets/images/author/author-02.jpg" alt="Author"></a>
                                                                                    </div>
                                                                                    <div class="author-name">
                                                                                        <a class="name" href="#">Pamela Foster</a>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="tag">
                                                                                    <a href="#">UX Design</a>
                                                                                </div>
                                                                            </div>
                                
                                                                            <h4 class="title"><a href="blog-details-left-sidebar.html">Create Amazing Color Schemes for Your UX Design Projects</a></h4>
                                
                                                                            <div class="blog-meta">
                                                                                <span> <i class="icofont-calendar"></i> 21 March, 2021</span>
                                                                                 <span> <i class="icofont-heart"></i> 2,568+ </span> 
                                                                            </div>
                                
                                                                            <a href="blog-details-left-sidebar.html" class="btn btn-secondary btn-hover-primary">Read More</a>
                                                                        </div>
                                                                    </div>
                                                                     Single Blog End 
                                
                                                                </div>
                                                                <div class="col-lg-4 col-md-6">
                                
                                                                     Single Blog Start 
                                                                    <div class="single-blog">
                                                                        <div class="blog-image">
                                                                            <a href="blog-details-left-sidebar.html"><img src="assets/images/blog/blog-03.jpg" alt="Blog"></a>
                                                                        </div>
                                                                        <div class="blog-content">
                                                                            <div class="blog-author">
                                                                                <div class="author">
                                                                                    <div class="author-thumb">
                                                                                        <a href="#"><img src="assets/images/author/author-03.jpg" alt="Author"></a>
                                                                                    </div>
                                                                                    <div class="author-name">
                                                                                        <a class="name" href="#">Patricia Collins</a>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="tag">
                                                                                    <a href="#">Business</a>
                                                                                </div>
                                                                            </div>
                                
                                                                            <h4 class="title"><a href="blog-details-left-sidebar.html">Culture & Leadership: Strategies for a Successful Business</a></h4>
                                
                                                                            <div class="blog-meta">
                                                                                <span> <i class="icofont-calendar"></i> 21 March, 2021</span>
                                                                                 <span> <i class="icofont-heart"></i> 2,568+ </span> 
                                                                            </div>
                                
                                                                            <a href="blog-details-left-sidebar.html" class="btn btn-secondary btn-hover-primary">Read More</a>
                                                                        </div>
                                                                    </div>
                                                                     Single Blog End 
                                
                                                                </div>-->
                            </div>
                        </div>
                        <!-- Blog Wrapper End -->

                    </div>
                </div>
                <!-- Blog End -->

                <!-- Footer Start  -->
                <div class="section footer-section">

                    <!-- Footer Widget Section Start -->
                    <div class="footer-widget-section">

                        <img class="shape-1 animation-down" src="assets/images/shape/shape-21.png" alt="Shape">

                        <div class="container">
                            <div class="row">
                                <div class="col-lg-3 col-md-6 order-md-1 order-lg-1">

                                    <!-- Footer Widget Start -->
                                    <div class="footer-widget">
                                        <div class="widget-logo">
                                            <a href="home"><img src="assets/images/logo.png" alt="Logo"></a>
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

                        <img class="shape-2 animation-left" src="assets/images/shape/shape-22.png" alt="Shape">

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
            <script src="assets/js/vendor/modernizr-3.11.2.min.js"></script>
            <script src="assets/js/vendor/jquery-3.5.1.min.js"></script>

            <!-- Bootstrap JS -->
            <script src="assets/js/plugins/popper.min.js"></script>
            <script src="assets/js/plugins/bootstrap.min.js"></script>

            <!-- Plugins JS -->
            <script src="assets/js/plugins/swiper-bundle.min.js"></script>
            <script src="assets/js/plugins/jquery.magnific-popup.min.js"></script>
            <script src="assets/js/plugins/video-playlist.js"></script>
            <script src="assets/js/plugins/jquery.nice-select.min.js"></script>
            <script src="assets/js/plugins/ajax-contact.js"></script>

            <!--====== Use the minified version files listed below for better performance and remove the files listed above ======-->
            <!-- <script src="assets/js/plugins.min.js"></script> -->


            <!-- Main JS -->
            <script src="assets/js/main.js"></script>

    </body>

</html>