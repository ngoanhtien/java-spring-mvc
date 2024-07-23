<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>User detail ${user.id}</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container-md mt-5">
                    <div class="row">
                        <div class="">
                            <h3 class="text-center">User detail</h3>
                            <hr>
                            <div class="card" style="width: 60%;">
                                <div class="card-header">
                                    Information
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">ID: ${user.id}</li>
                                    <li class="list-group-item">Email: ${user.email}</li>
                                    <li class="list-group-item">Full name: ${user.fullName}</li>
                                    <li class="list-group-item">Address: ${user.address}</li>
                                    <li class="list-group-item">Phone: ${user.phone}</li>
                                </ul>
                            </div>
                            <a href="/admin/user" class="btn btn-success mt-3">Back</a>
                        </div>
                    </div>
                </div>
            </body>

            </html>