<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <title>Laptop Shop</title>
                <meta content="width=device-width, initial-scale=1.0" name="viewport">
                <meta content="" name="keywords">
                <meta content="" name="description">

                <!-- Google Web Fonts -->
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link
                    href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
                    rel="stylesheet">

                <!-- Icon Font Stylesheet -->
                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
                    rel="stylesheet">

                <!-- Libraries Stylesheet -->
                <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
                <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


                <!-- Customized Bootstrap Stylesheet -->
                <link href="/client/css/bootstrap.min.css" rel="stylesheet">

                <!-- Template Stylesheet -->
                <link href="/client/css/style.css" rel="stylesheet">
            </head>

            <body>

                <!-- Spinner Start -->
                <div id="spinner"
                    class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
                    <div class="spinner-grow text-primary" role="status"></div>
                </div>
                <!-- Spinner End -->


                <!-- Navbar start -->
                <jsp:include page="../layout/header.jsp" />
                <!-- Navbar End -->


                <!-- Hero Start -->
                <jsp:include page="../layout/banner.jsp" />
                <!-- Hero End -->


                <!-- Featurs Section Start -->
                <jsp:include page="../layout/feature.jsp" />
                <!-- Featurs Section End -->


                <!-- Laptop Shop Start-->
                <div class="container-fluid fruite py-5">
                    <div class="container py-5">
                        <div class="tab-class text-center">
                            <div class="row g-4">
                                <div class="col-lg-4 text-start">
                                    <h1>Sản phẩm nổi bật</h1>
                                </div>
                                <div class="col-lg-8 text-end">
                                    <ul class="nav nav-pills d-inline-flex text-center mb-5">
                                        <li class="nav-item">
                                            <a class="d-flex m-2 py-2 bg-light rounded-pill active"
                                                data-bs-toggle="pill" href="#tab-1">
                                                <span class="text-dark" style="width: 130px;">All Products</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane fade show p-0 active">
                                    <div class="row g-4">
                                        <div class="col-lg-12">
                                            <div class="row g-4">
                                                <c:forEach var="product" items="${products}">
                                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                                        <div class="rounded position-relative fruite-item">
                                                            <div class="fruite-img">
                                                                <img src="/images/product/${product.image}"
                                                                    class="img-fluid w-100 rounded-top" alt="">
                                                            </div>
                                                            <div class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                                                                style="top: 10px; left: 10px;">Laptop</div>
                                                            <div
                                                                class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                                <h4 style="font-size: 16px;">
                                                                    <a
                                                                        href="/product/detail/${product.id}">${product.name}</a>
                                                                </h4>
                                                                <p style="font-size: 14px;">${product.shortDesc}</p>
                                                                <div class="d-flex flex-lg-wrap">
                                                                    <p class="fs-5 fw-bold mb-2 text-warning"
                                                                        style="font-size: 16px; width: 100%;">
                                                                        <fmt:formatNumber type="number"
                                                                            value="${product.price}" /> đ
                                                                    </p>
                                                                    <a href="#"
                                                                        class="mx-auto border border-secondary rounded-pill px-4 py-1 text-primary"><i
                                                                            class="fa fa-shopping-bag me-2 text-primary"></i>
                                                                        Add to
                                                                        cart</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Laptop Shop End-->

                <!-- Fact Start -->
                <div class="container-fluid py-5">
                    <div class="container">
                        <div class="bg-light p-5 rounded">
                            <div class="row g-4 justify-content-center">
                                <div class="col-md-6 col-lg-6 col-xl-3">
                                    <div class="counter bg-white rounded p-5">
                                        <i class="fa fa-users text-secondary"></i>
                                        <h4>Khách hàng hài lòng</h4>
                                        <h1>1963</h1>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-3">
                                    <div class="counter bg-white rounded p-5">
                                        <i class="fa fa-users text-secondary"></i>
                                        <h4>Chất lượng dịch vụ</h4>
                                        <h1>99%</h1>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-3">
                                    <div class="counter bg-white rounded p-5">
                                        <i class="fa fa-users text-secondary"></i>
                                        <h4>Chứng chỉ chất lượng</h4>
                                        <h1>33</h1>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-3">
                                    <div class="counter bg-white rounded p-5">
                                        <i class="fa fa-users text-secondary"></i>
                                        <h4>Sản phẩm sẵn có</h4>
                                        <h1>789</h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Fact Start -->


                <!-- Tastimonial Start -->
                <div class="container-fluid testimonial py-5">
                    <div class="container py-5">
                        <div class="testimonial-header text-center">
                            <h4 class="text-primary">Feedback</h4>
                            <h1 class="display-5 mb-5 text-dark">Khách hàng của chúng tôi phản hồi!</h1>
                        </div>
                        <div class="owl-carousel testimonial-carousel">
                            <div class="testimonial-item img-border-radius bg-light rounded p-4">
                                <div class="position-relative">
                                    <i class="fa fa-quote-right fa-2x text-secondary position-absolute"
                                        style="bottom: 30px; right: 0;"></i>
                                    <div class="mb-4 pb-4 border-bottom border-secondary">
                                        <p class="mb-0">Lorem Ipsum is simply dummy text of the printing Ipsum has been
                                            the
                                            industry's standard dummy text ever since the 1500s,
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center flex-nowrap">
                                        <div class="bg-secondary rounded">
                                            <img src="/client/img/testimonial-1.png" class="img-fluid rounded"
                                                style="width: 100px; height: 100px;" alt="">
                                        </div>
                                        <div class="ms-4 d-block">
                                            <h4 class="text-dark">Ngô Anh Tiến</h4>
                                            <p class="m-0 pb-3">Developer</p>
                                            <div class="d-flex pe-5">
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="testimonial-item img-border-radius bg-light rounded p-4">
                                <div class="position-relative">
                                    <i class="fa fa-quote-right fa-2x text-secondary position-absolute"
                                        style="bottom: 30px; right: 0;"></i>
                                    <div class="mb-4 pb-4 border-bottom border-secondary">
                                        <p class="mb-0">Lorem Ipsum is simply dummy text of the printing Ipsum has been
                                            the
                                            industry's standard dummy text ever since the 1500s,
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center flex-nowrap">
                                        <div class="bg-secondary rounded">
                                            <img src="/client/img/testimonial-1.png" class="img-fluid rounded"
                                                style="width: 100px; height: 100px;" alt="">
                                        </div>
                                        <div class="ms-4 d-block">
                                            <h4 class="text-dark">Nguyễn Ngọc Hải Anh</h4>
                                            <p class="m-0 pb-3">Developer</p>
                                            <div class="d-flex pe-5">
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="testimonial-item img-border-radius bg-light rounded p-4">
                                <div class="position-relative">
                                    <i class="fa fa-quote-right fa-2x text-secondary position-absolute"
                                        style="bottom: 30px; right: 0;"></i>
                                    <div class="mb-4 pb-4 border-bottom border-secondary">
                                        <p class="mb-0">Lorem Ipsum is simply dummy text of the printing Ipsum has been
                                            the
                                            industry's standard dummy text ever since the 1500s,
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center flex-nowrap">
                                        <div class="bg-secondary rounded">
                                            <img src="/client/img/testimonial-1.png" class="img-fluid rounded"
                                                style="width: 100px; height: 100px;" alt="">
                                        </div>
                                        <div class="ms-4 d-block">
                                            <h4 class="text-dark">Client Name</h4>
                                            <p class="m-0 pb-3">Profession</p>
                                            <div class="d-flex pe-5">
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Tastimonial End -->


                <!-- Footer Start -->
                <jsp:include page="../layout/footer.jsp" />
                <!-- Footer End -->

                <!-- Copyright Start -->
                <div class="container-fluid copyright bg-dark py-4">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                                <span class="text-light"><a href="#"><i
                                            class="fas fa-copyright text-light me-2"></i>Trang
                                        của bạn</a>, Tất cả các quyền.</span>
                            </div>
                            <div class="col-md-6 my-auto text-center text-md-end text-white">
                                <!--/*** This template is free as long as you keep the below author’s credit link/attribution link/backlink. ***/-->
                                <!--/*** If you'd like to use the template without the below author’s credit link/attribution link/backlink, ***/-->
                                <!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
                                Được thiết kể bởi <a class="border-bottom"
                                    href="https://www.facebook.com/profile.php?id=100034201572801">Ngô Tiến</a>
                                Được xây dựng bởi <a class="border-bottom"
                                    href="https://www.facebook.com/profile.php?id=100034201572801">Ngô Tiến</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Copyright End -->



                <!-- Back to Top -->
                <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i
                        class="fa fa-arrow-up"></i></a>


                <!-- JavaScript Libraries -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                <script src="/client/lib/easing/easing.min.js"></script>
                <script src="/client/lib/waypoints/waypoints.min.js"></script>
                <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
                <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

                <!-- Template Javascript -->
                <script src="/client/js/main.js"></script>
            </body>

            </html>