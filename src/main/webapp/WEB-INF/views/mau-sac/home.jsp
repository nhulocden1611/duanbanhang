<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Danh sách Màu Sắc</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc); /* Gradient background */
            color: #fff; /* Text color */
            padding: 20px;
        }

        h1 {
            color: #fff; /* Change header color */
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Light background for content */
            border-radius: 10px; /* Rounded corners */
            padding: 20px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Box shadow for depth */
        }

        table {
            background-color: #f8f9fa; /* Background for table */
            color: #333; /* Text color for table */
        }

        th, td {
            text-align: center; /* Center text in table */
        }

        button a {
            text-decoration: none;
            color: white; /* Default button text color */
        }

        button:hover {
            opacity: 0.9; /* Hover effect for buttons */
        }

        .btn-danger a {
            color: white; /* White text for delete button */
        }

        .btn-warning a {
            color: black; /* Black text for update button */
        }

        .btn-info a {
            color: white; /* White text for detail button */
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="d-flex justify-content-center m-4"><h1>Danh sách Màu Sắc</h1></div>

    <div class="my-3">
        <form action="/locshop/search-mau-sac" method="get">
            Mã Màu: <input type="text" name="id" class="form-control d-inline w-25" placeholder="Nhập id màu">
            <button class="btn btn-info mt-2">Tìm kiếm</button>
        </form>
    </div>

    <table class="table table-striped table-hover table-success">
        <thead>
        <tr>
            <th>ID</th>
            <th>Mã</th>
            <th>Tên</th>
            <th>Trạng thái</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="ms" items="${mauSacs}">
            <tr>
                <td>${ms.id}</td>
                <td>${ms.ma}</td>
                <td>${ms.ten}</td>
                <td>${ms.trangThai == 1 ? "Có" : "Không"}</td>
                <td>
                    <button onclick="return confirm('Bạn chắc chắn xóa?')" type="button" class="btn btn-danger">
                        <a href="/locshop/delete-mau-sac?id=${ms.id}">Xóa</a>
                    </button>
                    <button type="button" class="btn btn-warning">
                        <a href="/locshop/update-mau-sac/${ms.id}">Cập nhật</a>
                    </button>
                    <button type="button" class="btn btn-info">
                        <a href="/locshop/detail-mau-sac/${ms.id}">Chi tiết</a>
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <button class="btn btn-info">
        <a href="/locshop/add-mau-sac"> Thêm </a>
    </button>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
