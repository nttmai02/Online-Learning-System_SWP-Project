<%-- Document : questionList Created on : Jun 28, 2022, 4:55:42 PM Author : hiepx --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
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
        
        .hover:hover{
            font-weight: bold;
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
    <script>
        function submitSelectFrm() {
            document.getElementById("selectForm").submit();
        }
        
        function submitAddFrm() {
            var name = document.getElementById("name").value;
            if (name.trim() === '') {
                document.getElementById("name-error").innerHTML = "QuizName must not be empty";
                return;
            }

            document.getElementById("form").submit();
        }
    </script>
    <%--<jsp:include page="../../component/common/head.jsp" />--%>

    <body>

        <div class="main-wrapper main-wrapper-02">

            <!-- Login Header Start -->
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
                    </div>
                    <!-- Header Search End -->

                    <!-- Header Action Start -->
                    <div class="login-header-action ml-auto">


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
            <div style="min-height:500px" class="section overflow-hidden position-relative" id="wrapper">

                <!-- Sidebar Wrapper Start -->
                <%--<jsp:include page="../../component/administration/menu.jsp" />--%>
                <div class="sidebar-wrapper">
                    <div class="menu-list">            
                        <a style="color:#fff" href="ExpertCoursesManagement">Course</a>
                        <a class="active" style="color:#fff" href="QuizManagement">Quiz</a>
                        <a style="color:#fff" href="managequestion">Question</a>
                        <a style="color:#fff" href="profile">Profile</a>
                        <a style="color:#fff" href="logout">Logout</a>
                    </div>
                </div>
                <!-- Sidebar Wrapper End -->

                <!-- Page Content Wrapper Start -->
                <!--<form id="form" action="./questions" method="Post">-->
                <div class="page-content-wrapper">
                    <div class="container-fluid custom-container">

                        <!-- Message Start -->

                        <!-- Message End -->

                        <!-- Admin Courses Tab Start -->
                        <div class="admin-courses-tab">
                            <h3 class="title">Quiz Management</h3>

                            <div class="courses-tab-wrapper">

                                <div class="search-filter" >


                                    <div style="display: flex" class="tab-btn" style="margin: 20px;">
                                        <form action="QuizManagement">
                                            <input class="btn btn-secondary btn-hover-dark"  style="margin-right: 20px" class="search-button" type="submit" value="All" />
                                        </form>

                                        <form style="display:flex" action="QuizManagement">

                                            <input  type="text" class="search-input"
                                                    placeholder="Search here" name="search" value="${search}">
                                            <input class="btn btn-secondary btn-hover-dark" type="submit" value="Search" />
                                        </form>
                                    </div>
                                    <form id="selectForm" action="QuizManagement">
                                        <input type="hidden" name="search" value="${search}"/>
                                        <div class="courses-select" style="margin: 20px;">
                                            <select onchange="submitSelectFrm()" name="level">
                                                <option disabled ${level=="0"?"selected":""} value="0"> Level </option>
                                                <option ${level=="easy"?"selected":""} value="easy">Easy</option>
                                                <option ${level=="medium"?"selected":""} value="medium">Medium</option>
                                                <option ${level=="hard"?"selected":""} value="hard">Hard</option>
                                            </select>
                                        </div>
                                    </form>
                                </div>


                                <div class="tab-btn">

                                    <button type="button" data-toggle="modal" data-target="#add"
                                            class="btn btn-secondary btn-hover-dark"><i
                                            class="material-icons">&#xE147;</i>
                                        <span>Add New</span></button>
                                </div>

                                <!--Modal ADD-->
                                <div class="modal fade" id="add" tabindex="-1" role="dialog"
                                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog ">
                                        <div class="modal-content">
                                            <div class="modal-header">

                                                <h5 class="modal-title" id="exampleModalLongTitle"
                                                    style="color:black;">Add a Quiz</h5>
                                                <button type="button" class="close"
                                                        data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <form id="form" action="QuizManagement" method="post">

                                                    <div class="form-group" style="margin-top: 20px;">
                                                        <label class="control-label" for="name">NAME</label>
                                                        <div class="single-form">
                                                            <input id="name" name="name" placeholder="NAME"
                                                                   class="form-control input-md" type="text" required=""/>
                                                            <div style="color:red" id="name-error"></div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group" style="margin-top: 30px;">
                                                        <label class="control-label" for="level">LEVEL</label>
                                                        <div class="single-form" style="margin: 0">
                                                            <div class="courses-select" >
                                                                <select id="level" name="level" >
                                                                    <option value="Easy">Easy</option>
                                                                    <option value="Medium">Medium</option>
                                                                    <option value="Hard">Hard</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group" style="margin-top: 30px">
                                                        <label class="control-label" for="subject_name">DURATION &nbsp;<span style="font-weight: lighter; color:#6E8192">(HOUR : MINUTE : SECOND)</span></label>

                                                        <div class="single-form"  style="margin:0;">
                                                            <input id="question_content" name="hour" placeholder="HOUR""
                                                                   style="width:150px" type="number" min="0"> : 
                                                            <input id="question_content" name="minute" placeholder="MINUTE""
                                                                   style="width:150px" type="number" min="0" max="59"> : 
                                                            <input id="question_content" name="second" placeholder="SECOND""
                                                                   style="width:150px" type="number" min="0" max="59">
                                                            <div id="duration-error"></div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group" style="margin-top: 30px;">
                                                        <div class="single-form">
                                                            <label class="control-label" for="type">TYPE</label>
                                                            <input id="type" name="type" class="" type="text" value="Multiple choice" readonly/>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary"
                                                        data-dismiss="modal">Close</button>
                                                <button class="btn btn-secondary" type="submit" onclick="submitAddFrm()">Add</button>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!--End Modal-->

<!--                                Modal
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
                                            <form action="" method="">
                                                <div class="modal-body">
                                                    <input type="hidden" value="delete"
                                                           name="type" />
                                                    <p style="color:black;"> Are you sure you want to delete?</p>
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
                                </div>
                                End Modal-->
                            </div>
                        </div>
                        <!-- Admin Courses Tab End -->

                        <!-- Admin Courses Tab Content Start -->

                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Name</th>
                                    <th>Level</th>
                                    <th>Duration</th>
                                    <th>Type</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>

                                <c:if test="${quizList.size() != 0}"> 
                                    <c:forEach items="${quizList}" var="q" begin="${page.getBegin()}" end="${page.getEnd()}">

                                        <tr>
                                            <td></td>
                                            <td>${q.name}</td>
                                            <td>${q.level}</td>
                                            <td>${q.duration}</td>
                                            <td>${q.type}</td>
                                            <td>
                                                <div style="display: flex;align-items: stretch;">
                                                    <a href="${pageContext.request.contextPath}/EditQuiz?quizId=${q.id}" class="hover" title="Edit" style="color:orange">Edit</a>
                                                    <a href="${pageContext.request.contextPath}/ViewQuizQuestion?quizId=${q.id}" class="hover" style="margin-left: 20px; color:#309255">Questions Manage</a>
<!--                                                    <a href="#" class="settings" style="margin-left: 20px;" title="Delete"
                                                       data-toggle="modal" data-id="QuestionID"
                                                       data-target="#delete"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="red" class="bi bi-trash3" viewBox="0 0 16 16">
                                                        <path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
                                                        </svg></a>-->
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </c:if>

                            </tbody>
                        </table>
                        <!-- Admin Courses Tab Content End -->




                        <!-- Courses Resources Start -->

                        <!-- Courses Resources End -->
                        <%--<jsp:include page="../../component/administration/courses-resources.jsp" />--%>
                    </div>
                    <%--<jsp:include page="../../component/administration/courses-resources.jsp" />--%>
                    <!--</form>-->

                    <!-- Page Content Wrapper End -->
                    <!--Paging Start-->
                    <c:if test="${courseList.size() != 0}"> 
                        <div class="page-pagination">
                            <ul class="pagination justify-content-center">
                                <c:if test="${page.getCp() != 1}">
                                    <li><a title="Home" href="QuizManagement?cp=1&&search=${search}&&level=${level}"><i class="icofont-rounded-double-left"></i></a></li>
                                    <li><a href="QuizManagement?cp=${page.getCp()-1}&&search=${search}&&level=${level}"><i class="icofont-rounded-left"></i></a></li>
                                        </c:if>

                                <c:forEach begin="${page.getStartPage()}" end="${page.getEndPage()}" var="i">
                                    <li><a <c:if test="${i == page.getCp()}">class="active"</c:if> href="QuizManagement?cp=${i}&&search=${search}&&level=${level}">${i}</a></li>
                                    </c:forEach>


                                <c:if test="${page.getCp() != page.getTp()}">
                                    <li><a href="QuizManagement?cp=${page.getCp()+1}&&search=${search}&&level=${level}"><i class="icofont-rounded-right"></i></a></li>
                                    <li><a title="End" href="QuizManagement?cp=${page.getTp()}&&search=${search}&&level=${level}"><i class="icofont-rounded-double-right"></i></i></a></li>
                                    </c:if>
                            </ul>
                        </div>
                    </c:if>
                    <!--Paging End-->
                </div>

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






        <!-- JS
============================================ -->

        <!-- Modernizer & jQuery JS -->
        <%--<jsp:include page="../../component/common/js.jsp" />--%>

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
