<%-- 
    Document   : course
    Created on : Oct 27, 2022, 8:52:30 AM
    Author     : Dell 5510
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico">

        <!-- CSS
            ============================================ -->

        <!-- Icon Font CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/icofont.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/flaticon.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/${pageContext.request.contextPath}/assets/css/plugins/font-awesome.min.css">

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

        <div class="main-wrapper">

            <!-- Header Section Start -->
            <div class="header-section">

                <!-- Header Top Start -->
                <div class="header-top d-none d-lg-block">
                    <div class="container">

                        <!-- Header Top Wrapper Start -->
                        <div class="header-top-wrapper">

                            <!-- Header Top Left Start -->
                            <div class="header-top-left">
                                <p>All course 28% off for <a href="#">Liberian people’s.</a></p>
                            </div>
                            <!-- Header Top Left End -->

                            <!-- Header Top Medal Start -->
                            <div class="header-top-medal">
                                <div class="top-info">
                                    <p><i class="flaticon-phone-call"></i> <a href="tel:9702621413">(970) 262-1413</a></p>
                                    <p><i class="flaticon-email"></i> <a href="mailto:address@gmail.com">address@gmail.com</a></p>
                                </div>
                            </div>
                            <!-- Header Top Medal End -->

                            <!-- Header Top Right Start -->
                            <div class="header-top-right">
                                <ul class="social">
                                    <li><a href="#"><i class="flaticon-facebook"></i></a></li>
                                    <li><a href="#"><i class="flaticon-twitter"></i></a></li>
                                    <li><a href="#"><i class="flaticon-skype"></i></a></li>
                                    <li><a href="#"><i class="flaticon-instagram"></i></a></li>
                                </ul>
                            </div>
                            <!-- Header Top Right End -->

                        </div>
                        <!-- Header Top Wrapper End -->

                    </div>
                </div>
                <!-- Header Top End -->

                <!-- Header Main Start -->
                <div class="header-main">
                    <div class="container">

                        <!-- Header Main Start -->
                        <div class="header-main-wrapper">

                            <!-- Header Logo Start -->
                            <div class="header-logo">
                                <a href="home"><img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="Logo"></a>
                            </div>
                            <!-- Header Logo End -->

                            <!-- Header Menu Start -->
                            <div class="header-menu d-none d-lg-block">
                                <ul class="nav-menu">
                                    <li><a href="${pageContext.request.contextPath}/courseall">Home</a></li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/mycourse">My Courses</a>
                                    </li>
                                </ul>

                            </div>
                            <!-- Header Menu End -->

                            <!-- Header Sing In & Up Start -->
                            <div class="header-sign-in-up d-none d-lg-block">
                                <c:if test="${sessionScope.user.role.getId()!=4&&sessionScope.user!=null}">
                                    <ul>
                                        <li><a class="sign-in" href="${pageContext.request.contextPath}/profile">Manager profile</a></li>
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
                        <li><a class="sign-in" href="login">Login</a></li>
                        <li><a class="sign-up" href="logout">Log out</a></li>
                    </ul>
                </div>
                <!-- Mobile Sing In & Up End -->

                <!-- Mobile Menu Start -->
                <div class="mobile-menu-items">
                    <ul class="nav-menu">
                        <li><a href="home">Home</a></li>
                        <li>
                            <a href="#">All Course</a>
                            <ul class="sub-menu">
                                <li><a href="courses.html">Courses</a></li>
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

            <!-- Page Banner Start -->
            <div class="section page-banner">

                <img class="shape-1 animation-round" src="${pageContext.request.contextPath}/assets/images/shape/shape-8.png" alt="Shape">

                <img class="shape-2" src="${pageContext.request.contextPath}/assets/images/shape/shape-23.png" alt="Shape">

                <div class="container">
                    <!-- Page Banner Start -->
                    <div class="page-banner-content">
                        <ul class="breadcrumb">
                            <li><a href="home">Home</a></li>
                            <li class="active">My Courses</li>
                        </ul>
                        <h2 class="title">All <span>Courses</span></h2>
                    </div>
                    <!-- Page Banner End -->
                </div>

                <!-- Shape Icon Box Start -->
                <div class="shape-icon-box">

                    <img class="icon-shape-1 animation-left" src="${pageContext.request.contextPath}/assets/images/shape/shape-5.png" alt="Shape">

                    <div class="box-content">
                        <div class="box-wrapper">
                            <i class="flaticon-badge"></i>
                        </div>
                    </div>

                    <img class="icon-shape-2" src="${pageContext.request.contextPath}/assets/images/shape/shape-6.png" alt="Shape">

                </div>
                <!-- Shape Icon Box End -->

                <img class="shape-3" src="${pageContext.request.contextPath}/assets/images/shape/shape-24.png" alt="Shape">

                <img class="shape-author" src="${pageContext.request.contextPath}/assets/images/author/author-11.jpg" alt="Shape">

            </div>
            <!-- Page Banner End -->

            <!-- Courses Start -->
            <div class="section section-padding">
                <div class="container">

                    <!-- Courses Category Wrapper Start  -->

                    <div class="courses-search">
                        <form action="courseall" method="post">
                            <input value="${txtSearch}"name="txt" type="text" placeholder="Search your course">
                            <button type="submit"><i class="flaticon-magnifying-glass"></i></button>
                        </form>
                    </div>



                    <div class="courses-tabs-menu courses-active">
                        <div class="swiper-container">

                            <ul class="swiper-wrapper nav">
                                <c:forEach items="${listCa}" var='k'>
                                    <a class="swiper-slide" href="courseall?CateId=${k.id}">${k.name}</a>                       
                                </c:forEach>
                            </ul>

                        </div>

                        <!-- Add Pagination -->
                        <div class="swiper-button-next"><i class="icofont-rounded-right"></i></div>
                        <div class="swiper-button-prev"><i class="icofont-rounded-left"></i></div>
                    </div>
                    <!-- Courses Category Wrapper End  -->

                    <!-- Courses Wrapper Start  -->
                    <div class="courses-wrapper-02">
                        <div class="row">
                            <c:forEach items="${listC}"  var="o" begin="${page.getBegin()}" end="${page.getEnd()}" >
                                <c:if test="${o.isStatus() == true}">
                                 <div class="col-lg-4 col-md-6">
                                    <!-- Single Courses Start -->
                                    <div class="single-courses">
                                        <div class="courses-images">
                                            <a href="coursedetail?id=${o.getId()}"><img src="${pageContext.request.contextPath}/assets/images/courses/${o.image}" alt="Courses"></a>
                                        </div>
                                        <div class="courses-content">
                                            <div class="courses-author">
                                                <div class="author">

                                                    <div class="author-thumb">
                                                        <c:forEach items="${o.usersTeach}" var="t">                                                                
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/author/${t.image}" alt="Author"></a>                                                           
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

                                            <h4 class="title"><a href="${pageContext.request.contextPath}/coursedetail?id=${o.id}">${o.name}</a></h4>
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
                                                                    <span class="sale-parice">${p.salePrice}$</span>
                                                                    <span class="old-parice">${p.listedPrice}$</span>
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
                                </c:if>
                                
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
                                                                        </div>
                                                                    </div>
                                                                     Single Courses End 
                                                                </div>-->
                            </c:forEach>

                        </div>
                    </div>
                      <c:if test="${listC.size() != 0}"> 
                            <div class="page-pagination">
                                <form action="courseall">
                                    <ul class="pagination justify-content-center">
                                        <c:if test="${page.getCp() != 1}">
                                            <li><a title="courseall" href="courseall?cp=1"><i class="icofont-rounded-double-left"></i></a></li>
                                            <li><a href="courseall?cp=${page.getCp()-1}"><i class="icofont-rounded-left"></i></a></li>
                                                </c:if>

                                        <c:forEach begin="${page.getStartPage()}" end="${page.getEndPage()}" var="i">
                                            <li><a <c:if test="${i == page.getCp()}">class="active"</c:if> href="courseall?cp=${i}">${i}</a></li>
                                            </c:forEach>


                                        <c:if test="${page.getCp() != page.getTp()}">
                                            <li><a href="courseall?cp=${page.getCp()+1}"><i class="icofont-rounded-right"></i></a></li>
                                            <li><a title="End" href="courseall?cp=${page.getTp()}"><i class="icofont-rounded-double-right"></i></i></a></li>
                                            </c:if>
                                    </ul>
                                </form>
                            </div>
                        </c:if>
                </div>
                <!-- Courses Wrapper End  -->

            </div>
        </div>
        <!-- Courses End -->

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
                                    <a href="home"><img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="Logo"></a>
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