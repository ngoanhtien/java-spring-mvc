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
                <title>Update user</title>
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
                                <h1 class="mt-4">Update user</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active"><a href="/admin/user">Table User</a></li>
                                    <li class="breadcrumb-item active">Update user</li>
                                </ol>
                                <div class="mt-5">
                                    <div class="row">
                                        <div class="col-md-8 mx-auto">
                                            <div class="d-flex justify-content-between">
                                                <h3 class="">Update user</h3>
                                                <a href="/admin/user" class="btn btn-success" role="button">Back</a>
                                            </div>
                                            <hr>
                                            <form:form method="post" action="/admin/user/update"
                                                modelAttribute="newUser" enctype="multipart/form-data">
                                                <div class="mb-3">
                                                    <label class="form-label">Id: </label>
                                                    <form:input type="text" class="form-control" path="id" />
                                                </div>
                                                <div class="row mb-3">
                                                    <div class="col-6">
                                                        <label class="form-label">Email address: </label>
                                                        <form:input type="email" class="form-control" path="email"
                                                            disabled="true" />
                                                    </div>
                                                    <div class="col-6">
                                                        <label class="form-label">Password: </label>
                                                        <form:input type="password" class="form-control" path="password"
                                                            disabled="true" />
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <div class="col-6">
                                                        <label class="form-label">Full name: </label>
                                                        <form:input type="text" class="form-control" path="fullName" />
                                                    </div>
                                                    <div class="col-6">
                                                        <label class="form-label">Phone number: </label>
                                                        <form:input type="text" class="form-control" path="phone" />
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <div class="col-12">
                                                        <label class="form-label">Address: </label>
                                                        <form:input type="text" class="form-control" path="address" />
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <div class="col-6">
                                                        <label class="form-label">Role: </label>
                                                        <form:select class="form-select" path="role.name">
                                                            <form:option value="ADMIN">Admin</form:option>
                                                            <form:option value="USER">User</form:option>
                                                        </form:select>
                                                    </div>
                                                    <div class="col-6">
                                                        <label for="avatarFile" class="form-label">Avatar: </label>
                                                        <input class="form-control" type="file" id="avatarFile"
                                                            src="${finalName}" name="file" accept=".png, .jpg, .jpeg" />
                                                    </div>
                                                </div>
                                                <div class="">
                                                    <img style="max-height: 200px; display: none; border-radius: 12px;"
                                                        alt="avatar preview" id="avatarPreview">
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
                        const MY_URL = $("#avatarPreview").attr("src");
                        console.log(MY_URL);
                        fetch(MY_URL)
                            .then(res => res.blob())
                            .then(blob => handler(blob))

                        function handler(inputBlob) {
                            const url = URL.createObjectURL(inputBlob);
                            // Creates URL to the image Blob in memory
                            console.log(url);
                            // URL.revokeObjectURL(url);
                            // Removes download link and image URL and image from memory
                            $("#avatarPreview").attr("src", imgURL);
                        }

                    });
                </script>
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