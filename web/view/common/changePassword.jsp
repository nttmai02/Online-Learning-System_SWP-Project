<%-- 
    Document   : changePassword
    Created on : Oct 17, 2022, 5:06:31 PM
    Author     : my do
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        < <head>
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
        <%@include file="header.jsp" %>
        <c:if test="${user == null}">

            <div class="log__form">
                <div class="form">
                    <div style="width: 30%; text-align: center; margin: 30px;margin-left: 35%" class="login">
                        <form action="changePass" method="post">
                            <h2>Please enter new password</h2>
                            <p>Your account has been verified, please enter new password!</p>
                            ${err}
                            <!-- Single Form Start -->
                            <div class="single-form">
                                <input pattern="^[0-9a-zA-Z]{6,}$" type="password" placeholder="Password" name="pass" required="">
                            </div>
                            <!-- Single Form End -->
                            <!-- Single Form Start -->
                            <div class="single-form">
                                <input pattern="^[0-9a-zA-Z]{6,}$" type="password" placeholder="Confirm Password" name="re-pass" required="">
                                <p style="color: red" class="error-text">${err}</p>
                            </div>
                            <!-- Single Form End -->
                            <div class="single-form">
                                <button class="btn btn-primary btn-hover-dark w-100">Save</button>
                            </div>
                        </form>
                    </div> 
                </div>
            </div>   
        </div>
    </c:if>
    <c:if test="${user != null}">
        <div class="log__form">
            <div class="form">
                <div style="width: 30%; text-align: center; margin: 30px;margin-left: 35%" class="login">
                    <form action="updatepass" method="post">
                        <h2>Change Password</h2>
                        <p style="color: red" class="error-text">${err}</p>
                        <p style="color: green" class="error-text">${noti}</p>

                        <!-- Single Form Start -->
                        <div class="single-form">
                            <input  type="password" placeholder="Old-password" name="Opass" required="">
                        </div>
                        <!-- Single Form End -->
                        <!-- Single Form Start -->
                        <div class="single-form">
                            <input pattern="^[0-9a-zA-Z]{6,}$" type="password" placeholder="New-password" name="Npass" required="">
                        </div>
                        <!-- Single Form End -->
                        <!-- Single Form Start -->
                        <div class="single-form">
                            <input pattern="^[0-9a-zA-Z]{6,}$" type="password" placeholder="Confirm Password" name="Rpass" required="">
                        </div>
                        <!-- Single Form End -->
                        <div class="single-form">
                            <button class="btn btn-primary btn-hover-dark w-100">Save</button>
                        </div>
                    </form>
                </div> 
            </div>
        </div>   
    </div>
</c:if>

<%@include file="footer.jsp" %>

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


<script src="js/script.js"></script>
</body>
</html>