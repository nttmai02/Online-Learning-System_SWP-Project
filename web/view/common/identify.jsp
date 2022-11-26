<%-- 
    Document   : identify
    Created on : Oct 15, 2022, 4:25:44 PM
    Author     : my do
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div style="width: 30%; text-align: center; margin: 30px;margin-left: 35%">
            <h2>Identify your account</h2>
            <p>Please enter your email to search for your account</p>
            <form action="identify" method="post">
                <div class="single-form">
                    <input type="email" placeholder="Email" name="email" required="">
                    <p style="color: red" class="error-text">${mess}</p>
                </div>
                <div class="single-form">
                    <button class="btn btn-primary btn-hover-dark w-1000">Search</button>
                    <a class="btn btn-secondary btn-outline w-1000" href="login">Cancel</a>
                </div>
            </form>

        </div>
        <%@include file="footer.jsp" %>

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
