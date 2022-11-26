<%-- Document : questionList Created on : Jun 28, 2022, 4:55:42 PM Author : hiepx --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz Practicing System</title>
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
    <style>
        .search-filter {
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
        .question-view .option-marker.false {
            background-color: #F14D76;
        }
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
        .limit {
        width: 100%;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
        }
    </style>
    <script>
        function submitMyForm() {
            document.forms["form"].submit();
        }
        function submitMyForm1(page) {
            document.getElementById('page').value = page;
            document.forms["form"].submit();
        }
    </script>
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
                        <a style="color:#fff" href="ExpertCoursesManagement">Course</a>
                        <a style="color:#fff" href="QuizManagement">Quiz</a>
                        <a class="active" style="color:#fff" href="managequestion">Question</a>
                        <a style="color:#fff" href="profile">Profile</a>
                        <a style="color:#fff" href="logout">Logout</a>
                    </div>
                </div>
                <!-- Sidebar Wrapper End -->

                <!-- Page Content Wrapper Start -->
                <form id="form" action="managequestion" method="get">
                    <div class="page-content-wrapper">
                        <div class="container-fluid custom-container">

                            <!-- Message Start -->

                            <!-- Message End -->

                            <!-- Admin Courses Tab Start -->
                            <div class="admin-courses-tab">
                                <h3 class="title">Question Bank</h3>

                                <div class="courses-tab-wrapper">

                                    <div class="search-filter" >


                                        <div class="tab-btn" style="padding: 20px;">

                                            <input type="text" class="search-input"
                                                   placeholder="Search here" name="key">
                                            <input class="search-button" type="submit" value="Search" />
                                        </div>

                                        <div class="courses-select" style="padding: 20px;">
<!--                                            <form class="formCate" action="managequestion" method="post">
                                                
                                            </form>-->
                                            <select name="categoryId" onchange="this.form.submit()">
                                                    <option value="0" selected>--All category--</option>
                                                    <c:forEach items="${categories}" var="c">
                                                        <option value="${c.getId()}"
                                                                <c:if test="${categoryId == c.getId()}">selected</c:if>        
                                                                >${c.getName()}</option>
                                                    </c:forEach>
                                            </select>
                                        </div>
                                    </div>


                                    <div class="tab-btn">
                                        <a href="createquestion"
                                                class="btn btn-primary btn-hover-dark"><i
                                                class="material-icons">&#xE147;</i>
                                            <span>New Question</span>
                                        </a>
                                    </div>

                                    <!--Modal ADD-->
                                    <div class="modal fade" id="add" tabindex="-1" role="dialog"
                                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog ">
                                            <div class="modal-content">
                                                <div class="modal-header">

                                                    <h5 class="modal-title" id="exampleModalLongTitle"
                                                        style="color:black;">Add a question</h5>
                                                    <button type="button" class="close"
                                                            data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <form action="createquestion" method="post">
                                                        <div class="form-group" >
                                                            <label class="control-label" for="subject_name">CONTENT</label>
                                                            <div class="single-form">
                                                                <textarea id="question_content" name="question" placeholder="CONTENT"
                                                                          class="form-control input-md" type="text"></textarea>
                                                                <div id="package_name-error"></div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group" >
                                                            <label class="control-label" for="subject_name">ANSWERS</label>
                                                            <div class="single-form">
                                                                <input class="form-check-input"  type="radio" name="correct" id="inlineRadio1" value="1" checked>
                                                                <input id="question_content" name="ans1" placeholder="ANSWER OPTION 1"
                                                                       class="form-control input-md" type="text">
                                                                <div id="package_name-error"></div>
                                                            </div>
                                                            <div class="single-form">
                                                                <input class="form-check-input"  type="radio" name="correct" id="inlineRadio1" value="2" >
                                                                <input id="question_content" name="ans2" placeholder="ANSWER OPTION 2"
                                                                       class="form-control input-md" type="text">
                                                                <div id="package_name-error"></div>
                                                            </div>
                                                            <div class="single-form">
                                                                <input class="form-check-input"  type="radio" name="correct" id="inlineRadio1" value="3" >
                                                                <input id="question_content" name="ans3" placeholder="ANSWER OPTION 3"
                                                                       class="form-control input-md" type="text">
                                                                <div id="package_name-error"></div>
                                                            </div>
                                                            <div class="single-form">
                                                                <input class="form-check-input"  type="radio" name="correct" id="inlineRadio1" value="4" >
                                                                <input id="question_content" name="ans4" placeholder="ANSWER OPTION 4"
                                                                       class="form-control input-md" type="text">
                                                                <div id="package_name-error"></div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group" >
                                                            <label class="control-label" for="subject_name">CATEGORY</label>
                                                            <div class="single-form">
                                                                <div class="courses-select">
                                                                    <select name="categoryId">
                                                                        <c:forEach items="${categories}" var="c">
                                                                            <option value="${c.getId()}"     
                                                                                    >${c.getName()}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                                <div id="package_name-error"></div>
                                                            </div>
                                                        </div>
                                                        <input class="submit" type="submit" value="Add">
                                                    </form>
                                                </div>
<!--                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">Close</button>
                                                    <input class="submit" type="submit"
                                                           value="Add" />

                                                </div>-->

                                            </div>
                                        </div>
                                    </div>
<!--                                    <div class="modal fade" id="edit" tabindex="-1" role="dialog"
                                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog ">
                                            <div class="modal-content">
                                                <div class="modal-header">

                                                    <h5 class="modal-title" id="exampleModalLongTitle"
                                                        style="color:black;">Edit a question</h5>
                                                    <button type="button" class="close"
                                                            data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <form action="./packages" method="post">

                                                        <input type="hidden" value="edit" name="type" />

                                                        <div class="form-group" >
                                                            <label class="control-label" for="subject_name">CONTENT</label>
                                                            <div class="single-form">
                                                                <textarea id="question_content" name="content" placeholder="CONTENT"
                                                                          class="form-control input-md" type="text"></textarea>
                                                                <div id="package_name-error"></div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group" >
                                                            <label class="control-label" for="subject_name">ANSWERS</label>
                                                            <div class="single-form">
                                                                <input class="form-check-input"  type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked>
                                                                <input id="question_content" name="ans1" placeholder="ANSWER OPTION 1"
                                                                       class="form-control input-md" type="text">
                                                                <div id="package_name-error"></div>
                                                            </div>
                                                            <div class="single-form">
                                                                <input class="form-check-input"  type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" >
                                                                <input id="question_content" name="ans2" placeholder="ANSWER OPTION 2"
                                                                       class="form-control input-md" type="text">
                                                                <div id="package_name-error"></div>
                                                            </div>
                                                            <div class="single-form">
                                                                <input class="form-check-input"  type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" >
                                                                <input id="question_content" name="ans3" placeholder="ANSWER OPTION 3"
                                                                       class="form-control input-md" type="text">
                                                                <div id="package_name-error"></div>
                                                            </div>
                                                            <div class="single-form">
                                                                <input class="form-check-input"  type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" >
                                                                <input id="question_content" name="ans4" placeholder="ANSWER OPTION 4"
                                                                       class="form-control input-md" type="text">
                                                                <div id="package_name-error"></div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group" >
                                                            <label class="control-label" for="subject_name">CATEGORY</label>
                                                            <div class="single-form">
                                                                <div class="courses-select">
                                                                    <select name="category">
                                                                        <option selected>Select category</option>
                                                                        <option value="1">cate1</option>
                                                                        <option value="2">cate1</option>
                                                                        <option value="3">cate1</option>
                                                                    </select>
                                                                </div>
                                                                <div id="package_name-error"></div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group" style="padding-top: 20px;">
                                                            <label>STATUS</label></br>
                                                            <div style="padding-top: 8px">
                                                                <div class="courses-select">
                                                                    <select>
                                                                        <option data-display="Publish">Publish</option>
                                                                        <option value="1">Unpublish</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </form>
                                                </div>
                                                

                                            </div>
                                        </div>
                                    </div>

                                    Modal
                                    <div class="modal fade" id="delete" tabindex="-1" role="dialog"
                                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel"
                                                        style="color:black;">Delete Question</h5>
                                                    <button type="button" class="close"
                                                            data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <form action="./packages" method="post">
                                                    <div class="modal-body">
                                                        <input type="hidden" value="delete"
                                                               name="type" />
                                                        <p style="color:black;"> Are you sure you want
                                                            to delete?</p>
                                                        <input type="hidden" value="" name="packageId"
                                                               id="packageId" />
                                                        <input type="hidden" value="${subjectId}"
                                                               name="subjectId" />
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary"
                                                                data-dismiss="modal">Close</button>
                                                        <input class="submit" type="submit"
                                                               value="Delete" />
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>-->
                                    <!--End Modal-->
                                </div>
                            </div>
                            <!-- Admin Courses Tab End -->

                            <!-- Admin Courses Tab Content Start -->

                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Content</th>
                                        <th>Category</th>
                                        <th>Status</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:if test="${questions.size() != 0}"> 
                                    <c:forEach items="${questions}" var="q" begin="${page.getBegin()}" end="${page.getEnd()}">
                                    <tr>
                                        <td><a href="editquestion?questionId=${q.getId()}">${q.getId()}</a></td>
                                        <td class="limit">${q.getContent()}</td>
                                        <td>${q.getCategory().getName()}</td>
                                        <td>${q.isStatus() == true ? "published" : "unpublished"}</td>
                                        <td>
                                            <div style="display: flex;align-items: stretch;">
                                                <a href="#" class="settings" title="Edit"
                                                   data-toggle="modal" data-id=""
                                                   data-target="#edit"><i
                                                        class="material-icons">&#xE8B8;</i></a>
                                                <a href=""
                                                   class="">Unpublish</a>
                                                <a href=""
                                                   class="">Publish</a>
                                            </div>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                    </c:if>  

                            </table>
                            <!-- Admin Courses Tab Content End -->




                            <!-- Courses Resources Start -->

                            <!-- Courses Resources End -->
                            <%--<jsp:include page="../../component/administration/courses-resources.jsp" />--%>
                        </div>
                        <%--<jsp:include page="../../component/administration/courses-resources.jsp" />--%>
                    </div>
                </form>

                        <!-- Page Content Wrapper End -->
                <!--Paging Start-->
                <c:if test="${questions.size() != 0}"> 
                    <div class="page-pagination">
                        <form action="managequestion">
                            <ul class="pagination justify-content-center">
                                <c:if test="${page.getCp() != 1}">
                                    <li><a title="Home" href="managequestion?cp=1"><i class="icofont-rounded-double-left"></i></a></li>
                                    <li><a href="managequestion?cp=${page.getCp()-1}"><i class="icofont-rounded-left"></i></a></li>
                                        </c:if>

                                <c:forEach begin="${page.getStartPage()}" end="${page.getEndPage()}" var="i">
                                    <li><a <c:if test="${i == page.getCp()}">class="active"</c:if> href="managequestion?cp=${i}">${i}</a></li>
                                    </c:forEach>


                                <c:if test="${page.getCp() != page.getTp()}">
                                    <li><a href="managequestion?cp=${page.getCp()+1}"><i class="icofont-rounded-right"></i></a></li>
                                    <li><a title="End" href="managequestion?cp=${page.getTp()}"><i class="icofont-rounded-double-right"></i></i></a></li>
                                    </c:if>
                            </ul>
                        </form>
                    </div>
                </c:if>
                <!--Paging End-->               
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
            <!-- Footer Start  -->

            <!-- Footer End -->

            <!--Back To Start-->
            <a href="#" class="back-to-top">
                <i class="icofont-simple-up"></i>
            </a>
            <!--Back To End-->

        </div>
    </body>

</html>
