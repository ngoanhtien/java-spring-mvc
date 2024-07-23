<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Table users</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container-md mt-5">
                    <div class="d-flex justify-content-between">
                        <h3>Table users</h3>
                        <a class="btn btn-primary" href="/admin/user/create">Create a user</a>
                    </div>
                    <hr>
                    <div class="row">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Email</th>
                                    <th>Full name</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="user" items="${users}">
                                    <tr>
                                        <td>
                                            <c:out value="${user.id}"></c:out>
                                        </td>
                                        <td>
                                            <c:out value="${user.email}"></c:out>
                                        </td>
                                        <td>
                                            <c:out value="${user.fullName}"></c:out>
                                        </td>
                                        <td>
                                            <a href="/admin/user/${user.id}" class="btn btn-sm btn-success">View</a>
                                            <a href="/admin/user/update/${user.id}"
                                                class="btn btn-sm btn-warning mx-3">Update</a>
                                            <a href="/admin/user/delete/${user.id}"
                                                class="btn btn-sm btn-danger">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </body>

            </html>