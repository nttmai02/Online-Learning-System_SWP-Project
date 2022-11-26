<%-- Document : addDimension Created on : Jun 29, 2022, 11:09:07 PM Author : xuant --%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!------ Include the above in your HEAD tag ---------->
<html lang="en">
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

    </head>
    <%--<jsp:include page="../../component/common/head.jsp" />--%>
    <style>
        body {
        }

        .table-responsive {
            margin: 30px 0;
        }

        .table-wrapper {
            min-width: 1000px;
            background: #fff;
            padding: 20px 25px;
            border-radius: 3px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
        }

        .table-title {
            padding-bottom: 15px;
            background: #309255;
            color: #fff;
            padding: 16px 30px;
            margin: -20px -25px 10px;
            border-radius: 3px 3px 0 0;
        }

        .table-title h2 {
            margin: 5px 0 0;
            font-size: 24px;
        }

        .table-title .btn {
            color: #566787;
            float: right;
            font-size: 13px;
            background: #fff;
            border: none;
            min-width: 50px;
            border-radius: 2px;
            border: none;
            outline: none !important;
            margin-left: 10px;
        }

        .table-title .btn:hover,
        .table-title .btn:focus {
            color: #566787;
            background: #f2f2f2;
        }

        .table-title .btn i {
            float: left;
            font-size: 21px;
            margin-right: 5px;
        }

        .table-title .btn span {
            float: left;
            margin-top: 2px;
        }

        table.table tr th,
        table.table tr td {
            border-color: #e9e9e9;
            padding: 12px 15px;
            vertical-align: middle;
        }

        table.table tr th:first-child {
            width: 60px;
        }

        table.table tr th:last-child {
            width: 100px;
        }

        table.table-striped tbody tr:nth-of-type(odd) {
            background-color: #fcfcfc;
        }

        table.table-striped.table-hover tbody tr:hover {
            background: #f5f5f5;
        }

        table.table th i {
            font-size: 13px;
            margin: 0 5px;
            cursor: pointer;
        }

        table.table td:last-child i {
            opacity: 0.9;
            font-size: 22px;
            margin: 0 5px;
        }

        table.table td a {
            font-weight: bold;
            color: #566787;
            display: inline-block;
            text-decoration: none;
        }

        table.table td a:hover {
            color: #2196F3;
        }

        table.table td a.settings {
            color: #2196F3;
        }

        table.table td a.delete {
            color: #F44336;
        }

        table.table td i {
            font-size: 19px;
        }

        table.table .avatar {
            border-radius: 50%;
            vertical-align: middle;
            margin-right: 10px;
        }

        .status {
            font-size: 30px;
            margin: 2px 2px 0 0;
            display: inline-block;
            vertical-align: middle;
            line-height: 10px;
        }

        .text-success {
            color: #10c469;
        }

        .text-info {
            color: #62c9e8;
        }

        .text-warning {
            color: #FFC107;
        }

        .text-danger {
            color: #ff5b5b;
        }

        .pagination {
            float: right;
            margin: 0 0 5px;
        }

        .pagination li a {
            border: none;
            font-size: 13px;
            min-width: 30px;
            min-height: 30px;
            color: #999;
            margin: 0 2px;
            line-height: 30px;
            border-radius: 2px !important;
            text-align: center;
            padding: 0 6px;
        }

        .pagination li a:hover {
            color: #666;
        }

        .pagination li.active a,
        .pagination li.active a.page-link {
            background: #03A9F4;
        }

        .pagination li.active a:hover {
            background: #0397d6;
        }

        .pagination li.disabled i {
            color: #ccc;
        }

        .pagination li i {
            font-size: 16px;
            padding-top: 6px
        }

        .hint-text {
            float: left;
            margin-top: 10px;
            font-size: 13px;
        }

        .modal-body {
            display: flex;
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
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
        $(document).on("click", ".settings", function () {
            var oldId = $(this).data('id');
            $(".modal-body #oldId").val(oldId);
            // As pointed out in comments, 
            // it is unnecessary to have to manually call the modal.
            // $('#addBookDialog').modal('show');
        });
        $(document).on("click", ".delete", function () {
            var did = $(this).data('id');
            $(".modal-body #packageId").val(did);
            // As pointed out in comments, 
            // it is unnecessary to have to manually call the modal.
            // $('#addBookDialog').modal('show');
        });

    </script>

    <script>
        function checkValidation() {
            var name = document.getElementById("name").value;
            if (name.trim() === '') {
                document.getElementById("name-error").innerHTML = "PackageName must must not be empty";
                return;
            }
            document.getElementById("name-error").innerHTML = "";

            var duration = document.getElementById("duration").value;
            const d = parseInt(duration, 10);
            if (isNaN(d))
            {
                document.getElementById("duration-error").innerHTML = "Duration must be a number";
                return;
            }
            document.getElementById("duration-error").innerHTML = "";

            if (d < 0)
            {
                document.getElementById("duration-error").innerHTML = "Duration must be >0";
                return;
            }
            document.getElementById("duration-error").innerHTML = "";

            var listedPrice = document.getElementById("listedPrice").value;
            const lp = parseFloat(listedPrice, 10);
            if (isNaN(lp)) {
                document.getElementById("listedPrice-error").innerHTML = "ListedPrice must be a number";
                return;
            }
            document.getElementById("listedPrice-error").innerHTML = "";

            if (lp < 0)
            {
                document.getElementById("listedPrice-error").innerHTML = "ListedPrice must be >0";
                return;
            }
            document.getElementById("listedPrice-error").innerHTML = "";

            var salePrice = document.getElementById("salePrice").value;
            if (!(salePrice === ''))
            {
                const sp = parseFloat(salePrice, 10);
                if (isNaN(sp))
                {
                    document.getElementById("salePrice-error").innerHTML = "SalePrice must be a number";
                    return;
                }
                document.getElementById("salePrice-error").innerHTML = "";
                if (sp > lp)
                {
                    document.getElementById("salePrice-error").innerHTML = "SalePrice must <= ListedPrice";
                    return;
                }

                if (sp < 0)
                {
                    document.getElementById("salePrice-error").innerHTML = "SalePrice must be >0";
                    return;
                }
                document.getElementById("salePrice-error").innerHTML = "";
            }
            document.getElementById("form").submit();

        }
    </script>


    <body>
        <div class="main-wrapper main-wrapper-02">
            <%--<jsp:include page="../../component/administration/header.jsp" />--%>
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
                            <form action="ManagePricePackage" >
                                <input type="hidden" name="courseId" value="${courseId}"/>
                                <input name="search" type="text"<c:if test="${search == null}">placeholder="Search here"</c:if><c:if test="${search != null}">value="${search}"</c:if>>
                                    <button><i class="icofont-search-1"></i></a></button>
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
            </div>
            <!-- Login Header Wrapper End -->
        </div>
        <!-- Courses Admin Start -->
        <div class="section overflow-hidden position-relative" id="wrapper">

            <!-- Sidebar Wrapper Start -->
            <%--<jsp:include page="../../component/administration/menu.jsp" />--%>
            <div class="sidebar-wrapper">
                <div class="menu-list">
                    <a class="active" style="color:#fff" href="CoursesManagement">Course</a>
                        <a style="color:#fff" href="ManagerUsers">User</a>
                        <a style="color:#fff" href="profile">Profile</a>
                        <a style="color:#fff" href="logout">Logout</a>
                </div>
            </div>
            <!-- Sidebar Wrapper End -->

            <!-- Page Content Wrapper Start -->
            <div class="page-content-wrapper">



                <!-- Page Content Wrapper Start -->
                <!--<div class="main-content-wrapper">-->
                <div class="container-fluid">
                    <div class="table-responsive">
                        <div class="table-wrapper">
                            <div class="table-title">
                                <div class="row">

                                    <div class="col-sm-4">

                                        <h2>Course's <b>PricePackages</b></h2>
                                    </div>
                                    <div class="col-sm-4">
                                        

                                    </div>

                                    <div class="col-sm-4">
                                        <c:if test="${search != null}">
                                            <a href="${pageContext.request.contextPath}/ManagePricePackage?courseId=${courseId}" class="btn btn-secondary">
                                                <span>All</span></a>
                                            </c:if>
                                        <!-- Button trigger modal -->
                                        <button type="button" data-toggle="modal" data-target="#add"
                                                class="btn btn-secondary"><i
                                                class="material-icons">&#xE147;</i>
                                            <span>Add New</span></button>
                                    </div>
                                    <!-- Modal -->
                                    <div class="modal fade" id="add" tabindex="-1" role="dialog"
                                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <input type="text" required=""/>
                                        <div class="modal-dialog ">
                                            <div class="modal-content">
                                                <div class="modal-header">

                                                    <h5 class="modal-title" id="exampleModalLongTitle"
                                                        style="color:black;">Add a package</h5>
                                                    <button type="button" class="close"
                                                            data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">


                                                    <form id="form" action="AddPricePackage">
                                                        <input type="hidden" name="courseId" value="${courseId}"/>
                                                        <div class="form-group" >
                                                            <label class="control-label" for="name">PACKAGE NAME</label>
                                                            <div class="single-form">
                                                                <input id="name" name="name" placeholder="PACKAGE NAME"
                                                                       class="form-control input-md" type="text">
                                                                <div style="color:red" id="name-error"></div>
                                                            </div>
                                                        </div>
                                                        <!--</div>-->

                                                        <!--<div class="row">-->
                                                        <div class="form-group" style="padding-top: 20px;">
                                                            <label class="control-label" for="duration">DURATION</label>
                                                            <div class="single-form">
                                                                <input id="duration" name="duration" placeholder="DURATION"
                                                                       class="form-control input-md" type="number" min="1" >
                                                                <div style="color:red" id="duration-error"></div>
                                                            </div>
                                                        </div>
                                                        <!--</div>-->
                                                        <!--<div class="row">-->
                                                        <div class="form-group" style="padding-top: 20px;">
                                                            <label class="control-label" for="listedPrice">LISTED PRICE</label>
                                                            <div class="single-form">
                                                                <input id="listedPrice" name="listedPrice" placeholder="LISTED PRICE"
                                                                       class="form-control input-md"  type="text">
                                                                <div style="color:red" id="listedPrice-error"></div>
                                                            </div>
                                                        </div>
                                                        <!--</div>-->
                                                        <!--<div class="row">-->
                                                        <div class="form-group" style="padding-top: 20px;">
                                                            <label class="control-label" for="salePrice">SALE PRICE</label>
                                                            <div class="single-form">
                                                                <input id="salePrice" name="salePrice" placeholder="SALE PRICE"
                                                                       class="form-control input-md" type="text">
                                                                <div style="color:red" id="salePrice-error"></div>

                                                            </div>
                                                        </div>
                                                        <!--</div>-->
                                                        <!--<div class="row">-->
                                                        <div class="form-group" style="padding-top: 20px;">
                                                            <label>STATUS</label></br>
                                                            <div style="padding-top: 8px">
                                                                <div class="form-check form-check-inline">
                                                                    <input class="form-check-input"  type="radio" name="status" id="inlineRadio1" value="1" checked>
                                                                    <label class="form-check-label" for="inlineRadio1" style="font-size: 14px; color: black;">ACTIVE</label>
                                                                </div>
                                                                <div class="form-check form-check-inline">
                                                                    <input class="form-check-input"  type="radio" name="status" id="inlineRadio2" value="0">
                                                                    <label class="form-check-label" for="inlineRadio2" style="font-size: 14px; color: black;">DEACTIVE</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--</div>-->

                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">Close</button>
                                                    <input class="submit" type="submit" onclick="checkValidation()"
                                                           value="Add" />
                                                </div> 
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>

                            <table class="table table-striped table-hover">
                                <!--<thead>-->
                                <tr>
                                    <th></th>
                                    <th>Name</th>
                                    <th>Duration</th>
                                    <th>Lister Price</th>
                                    <th>Sale Price</th>
                                    <th>Status </th>
                                    <th>Action</th>
                                </tr>
                                <!--</thead>-->
                                <!--<tbody>-->
                                <c:if test="${pricePackages.size()!=0}">
                                    <c:set var="count" value="${1}"></c:set>
                                    <c:forEach items="${pricePackages}" var="p" begin="${page.getBegin()}" end="${page.getEnd()}">
                                        <tr>
                                            <td></td>
                                            <td>${p.name}</td>
                                            <td>${p.duration}</td>
                                            <td>${p.listedPrice}</td>
                                            <td>${p.salePrice}</td>
                                            <td>${p.status?"Active":"Deactive"}</td>
                                            <td>
                                                <div style="display: flex;align-items: stretch;">
                                                    <a href="${pageContext.request.contextPath}/EditPricePackage?ppId=${p.id}&&courseId=${courseId}" class="settings" title="Edit"><i
                                                            class="material-icons">&#xE8B8;</i></a>
                                                        <%--<c:if test="${p.status}">--%>
<!--                                                            <a style="color:red" href="${pageContext.request.contextPath}/admin/subject/packages/status?sId=${subjectId}&&pId=${p.id}&&status=0"
                                                           class="">Deactive</a>-->
                                                    <%--</c:if>--%>
                                                    <%--<c:if test="${!p.status}">--%>
<!--                                                            <a style="color:green" href="${pageContext.request.contextPath}/admin/subject/packages/status?sId=${subjectId}&&pId=${p.id}&&status=1"
                                                           class="">Active</a>-->
                                                    <%--</c:if>--%>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>


                                </c:if>
                                <!--</tbody>-->
                            </table>
                            <div class="clearfix">

                                <c:if test="${pricePackages.size() != 0}"> 
                                    <div class="page-pagination">
                                        <ul  class="pagination justify-content-center">
                                            <c:if test="${page.getCp() != 1}">
                                                <li><a title="Home" href="ManagePricePackage?cp=1&&courseId=${courseId}"><i class="icofont-rounded-double-left"></i></a></li>
                                                <li><a href="ManagePricePackage?cp=${page.getCp()-1}&&courseId=${courseId}"><i class="icofont-rounded-left"></i></a></li>
                                                    </c:if>

                                            <c:forEach begin="${page.getStartPage()}" end="${page.getEndPage()}" var="i">
                                                <li><a <c:if test="${i == page.getCp()}">class="active"</c:if> href="ManagePricePackage?cp=${i}&&courseId=${courseId}">${i}</a></li>
                                                </c:forEach>


                                            <c:if test="${page.getCp() != page.getTp()}">
                                                <li><a href="ManagePricePackage?cp=${page.getCp()+1}&&courseId=${courseId}"><i class="icofont-rounded-right"></i></a></li>
                                                <li><a title="End" href="ManagePricePackage?cp=${page.getTp()}&&courseId=${courseId}"><i class="icofont-rounded-double-right"></i></i></a></li>
                                                </c:if>
                                        </ul>
                                    </div>
                                </c:if>
                            </div>

                        </div>
                    </div>






                </div>
                <!--</div>-->
                <!-- Page Content Wrapper End -->
                <!--Paging Start-->

                <!--Paging End-->


            </div>
            <!-- Page Content Wrapper End -->

        </div>
        <!-- Courses Admin End -->






        <%--<jsp:include page="../../component/common/footer.jsp" />--%>
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

    <!-- JS
============================================ -->
    <%--<jsp:include page="../../component/common/js.jsp" />--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script>

                                                        setTimeout(function () {
                                                            $('#message').fadeOut('fast');
                                                        }, 3000); // <-- time in milliseconds
    </script>

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