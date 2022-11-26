<%-- 
    Document   : profile
    Created on : Oct 18, 2022, 8:23:02 AM
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
        <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/vendor/plugins.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css"> -->

    </head>

    <body>

        <%@include file="header.jsp" %>
        <div style="width: 50%; margin:30px auto">
            <h3 class="title">Profile</h3>
            <p style="color: green" class="error-text">${noti}</p>

            <div class="form-wrapper">
                <form action="profile" enctype="multipart/form-data" method="post">
                    <div class="thumb">
                        <img style="border-radius:50%; height: 50px; width: 50px" src="${pageContext.request.contextPath}/assets/images/author/${acc.getImage()}" alt="Avatar">
                    </div>
                   <input name="imageOld" type = "text" style="display:none" value="${acc.getImage()}"> 
                    <!-- Single Form Start -->
                    <div class="single-form">
                        <input value="${acc.getEmail()}" type="email" name="email" required="" readonly="">
                        <p style="color: red" class="error-text">${error}</p>
                    </div>
                    <!-- Single Form End -->
                    <!-- Single Form Start -->
                    <div class="single-form">
                        <input value="${acc.getFullName()}"  type="text" placeholder="Name" name="name" required="">
                    </div>
                    <!-- Single Form End -->

                    <!-- Single Form Start -->
                    <div class="single-form">
                        <input value="${acc.getPhone()}"  pattern="^[0-9]{10,}$" type="text" placeholder="Phone" name="phone" required="">
                    </div>
                    <!-- Single Form End -->
                    <!-- Single Form Start -->
                    <div class="col-md-6 pr-1">
                        <div class="form-group">
                            <label>Image</label>
                            <input type="file" class="form-control"  placeholder="image" name="image">
                        </div>
                        <div>${requestScope.message}</div>
                    </div>
                    <div class="single-form">
                        <p>Gender: </p>

                        <INPUT ${acc.isGender()==true?"checked":""} TYPE="radio" name="gender" value="1" />Male 
                        <INPUT ${acc.isGender()==false?"checked":""}  TYPE="radio" name="gender" value="0"/>Female
                    </div>
                    <!-- Single Form End -->

                    <!-- Single Form Start -->
                    <div class="single-form">
                        <button class="btn btn-primary btn-hover-dark w-100">Save</button>
                    </div>
                    <!-- Single Form End -->
                </form>
            </div>
        </div>

    </div>
</div>
</div>

</div>
</div>

<%@include file="footer.jsp" %>

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


<script src="js/script.js"></script>
</body>
</html>