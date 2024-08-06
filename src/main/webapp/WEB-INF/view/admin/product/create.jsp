<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Ngô Tiến - Dự án laptopshop" />
                <meta name="author" content="Ngô Tiến IT" />
                <title>Create Product</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Create Product</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active"><a href="/admin/product">Table Product</a></li>
                                    <li class="breadcrumb-item active">Products</li>
                                </ol>
                                <div class="container-lg mt-5">
                                    <div class="row">
                                        <div class="col-md-8 col-12 mx-auto ">
                                            <div class="d-flex justify-content-between">
                                                <h3 class="">Create a product</h3>
                                                <a href="/admin/product" class="btn btn-success" role="button">Back</a>
                                            </div>
                                            <hr>
                                            <form:form method="post" action="/admin/product/create"
                                                modelAttribute="newProduct" enctype="multipart/form-data">
                                                <div class="row mb-3">
                                                    <div class="col-6">
                                                        <label class="form-label">Name: </label>
                                                        <form:input type="text" class="form-control" path="name" />
                                                    </div>
                                                    <div class="col-6">
                                                        <label class="form-label">Price: </label>
                                                        <form:input type="number" class="form-control" path="price" />
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <div class="col">
                                                        <label class="form-label">Detail description: </label>
                                                        <form:input type="text" class="form-control"
                                                            path="detailDesc" />
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <div class="col-6">
                                                        <label class="form-label">Short description: </label>
                                                        <form:input type="text" class="form-control" path="shortDesc" />
                                                    </div>
                                                    <div class="col-6">
                                                        <label class="form-label">Quantity: </label>
                                                        <form:input type="number" class="form-control"
                                                            path="quantity" />
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <div class="col-6">
                                                        <label class="form-label">Factory: </label>
                                                        <form:select class="form-select" path="factory">
                                                            <form:option value="Apple">Apple (Macbook)</form:option>
                                                            <form:option value="Asus">Asus</form:option>
                                                            <form:option value="Lenovo">Lenovo</form:option>
                                                            <form:option value="Dell">Dell</form:option>
                                                            <form:option value="LG">LG</form:option>
                                                            <form:option value="Acer">Acer</form:option>
                                                        </form:select>
                                                    </div>
                                                    <div class="col-6">
                                                        <label class="form-label">Target: </label>
                                                        <form:select class="form-select" path="target">
                                                            <form:option value="Gaming">Gaming</form:option>
                                                            <form:option value="Văn phòng">Văn phòng</form:option>
                                                            <form:option value="Thiết kế đồ họa">Thiết kế đồ họa
                                                            </form:option>
                                                            <form:option value="Mỏng nhẹ">Mỏng nhẹ</form:option>
                                                            <form:option value="Doanh nhân">Doanh nhân</form:option>
                                                        </form:select>
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <div class="col">
                                                        <label for="avatarFile" class="form-label">Image: </label>
                                                        <input class="form-control" type="file" id="avatarFile"
                                                            name="file" accept=".png, .jpg, .jpeg" />
                                                    </div>
                                                </div>
                                                <div class="">
                                                    <img style="max-height: 200px; display: none; border-radius: 12px;"
                                                        src="" alt="avatar preview" id="avatarPreview">
                                                </div>
                                                <div class="row mt-5">
                                                    <div class="col d-grid col-md-6 mx-auto">
                                                        <button type="submit" class="btn btn-primary">Submit</button>
                                                    </div>
                                                </div>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                        });
                    });
                </script>
            </body>

            </html>