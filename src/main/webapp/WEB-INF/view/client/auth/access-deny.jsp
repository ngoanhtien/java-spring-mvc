<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <title>Access Denied</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <meta charset="UTF-8">
            <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
            <link href="/css/styles.css" rel="stylesheet" />
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            <style>
                body {
                    background-color: black;
                    color: white;
                }

                h1 {
                    color: red;
                }

                h6 {
                    color: red;
                    text-decoration: underline;
                }
            </style>
        </head>

        <body>
            <div class="w3-display-middle">
                <h1 class="w3-jumbo w3-animate-top w3-center mb-3"><code>Access Denied</code></h1>
                <hr class="w3-border-white w3-animate-left mb-3" style="margin:auto;width:50%">
                <h3 class="w3-center w3-animate-right mb-3">You dont have permission to view this site.</h3>
                <h3 class="w3-center w3-animate-zoom mb-3">🚫🚫🚫🚫</h3>
                <h6 class="w3-center w3-animate-zoom mb-3">error code:403 forbidden</h6>
                <div class="d-flex justify-content-center">
                    <a href="/" class="btn btn-light btn-lg fw-5">Trang chủ</a>
                </div>
            </div>
        </body>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
        <script src="/js/scripts.js"></script>

        </html>