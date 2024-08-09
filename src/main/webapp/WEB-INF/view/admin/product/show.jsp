<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="Ngô Tiến - Dự án laptopshop" />
            <meta name="author" content="Ngô Tiến IT" />
            <title>Product</title>
            <link href="../css/styles.css" rel="stylesheet" />
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        </head>

        <body class="sb-nav-fixed">
            <jsp:include page="../layout/header.jsp" />
            <div id="layoutSidenav">
                <jsp:include page="../layout/sidebar.jsp" />
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">
                            <h1 class="mt-4">Product</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                                <li class="breadcrumb-item active">Product</li>
                            </ol>
                            <div class="mt-5">
                                <div class="d-flex justify-content-between">
                                    <h3>Table products</h3>
                                    <a class="btn btn-primary" href="/admin/product/create">Create a product</a>
                                </div>
                                <hr>
                                <table class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Price</th>
                                            <th>Factory</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="product" items="${products}">
                                            <tr>
                                                <td>
                                                    <c:out value="${product.id}"></c:out>
                                                </td>
                                                <td>
                                                    <c:out value="${product.name}"></c:out>
                                                </td>
                                                <td>
                                                    <c:out value="${product.price}"></c:out>
                                                </td>
                                                <td>
                                                    <c:out value="${product.factory}"></c:out>
                                                </td>
                                                <td>
                                                    <a href="/admin/product/${product.id}"
                                                        class="btn btn-sm btn-success">View</a>
                                                    <a href="/admin/product/update/${product.id}"
                                                        class="btn btn-sm btn-warning mx-3">Update</a>
                                                    <a href="/admin/product/delete/${product.id}"
                                                        class="btn btn-sm btn-danger">Delete</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </main>
                    <jsp:include page="../layout/footer.jsp" />
                </div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                crossorigin="anonymous"></script>
            <script src="../js/scripts.js"></script>
        </body>

        </html>