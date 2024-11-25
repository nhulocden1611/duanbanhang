<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thông tin khách hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc); /* Thay đổi nền thành gradient */
            padding: 20px;
            color: white; /* Chỉnh màu chữ cho dễ nhìn */
        }
        .customer-info {
            background-color: rgba(255, 255, 255, 0.8); /* Nền trắng trong suốt cho khối thông tin */
            border-radius: 10px; /* Bo tròn góc */
            padding: 20px; /* Khoảng cách trong khối */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Đổ bóng cho khối */
        }
        .btn-primary {
            background-color: #2575fc; /* Nền của nút */
            border: none; /* Bỏ viền */
        }
        .btn-primary:hover {
            background-color: #6a11cb; /* Màu khi hover */
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="d-block justify-content-center text-center">
        <h1>Thông tin khách hàng</h1>
    </div>

    <div class="row customer-info mx-auto mt-4" style="width: 450px;">
        <div class="col-md-4">
            <strong>ID:</strong>
        </div>
        <div class="col-md-8">
            ${kh.id}
        </div>

        <div class="col-md-4">
            <strong>Tên:</strong>
        </div>
        <div class="col-md-8">
            ${kh.ten}
        </div>

        <div class="col-md-4">
            <strong>SDT:</strong>
        </div>
        <div class="col-md-8">
            ${kh.sdt}
        </div>

        <div class="col-md-4">
            <strong>Mã Khách Hàng:</strong>
        </div>
        <div class="col-md-8">
            ${kh.maKH}
        </div>

        <div class="col-md-4">
            <strong>Trạng thái:</strong>
        </div>
        <div class="col-md-8">
            ${kh.trangThai == 1 ? "Đã mua hàng" : "Chưa mua hàng"}
        </div>
    </div>
</div>
<div class="mt-4 d-flex rounded justify-content-center align-items-center">
    <a href="/locshop/hien-thi-khach-hang" class="btn btn-primary">Quay lại danh sách</a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
