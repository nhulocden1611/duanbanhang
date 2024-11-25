<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thông Tin Sản Phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #6a11cb, #2575fc);
        padding: 20px;
        color: #ffffff; /* Đổi màu chữ cho phù hợp với nền */
        min-height: 100vh; /* Chiều cao tối thiểu của trang */
        display: flex;
        flex-direction: column;
        justify-content: space-between; /* Đặt không gian giữa các phần tử */
    }

    h1 {
        color: #fff; /* Màu tiêu đề */
        margin-bottom: 20px;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.9); /* Nền trắng với độ trong suốt */
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        flex-grow: 1; /* Cho phép phần tử này mở rộng */
    }

    .border-primary {
        border-color: #6a11cb !important; /* Đổi màu đường viền */
    }

    .btn-primary {
        background-color: #6a11cb; /* Màu nền cho nút */
        border: none; /* Bỏ đường viền */
    }

    .btn-primary:hover {
        background-color: #2575fc; /* Màu nền cho nút khi hover */
    }
</style>

<body>
<div class="text-center">
    <h1>Thông Tin Sản Phẩm</h1>
</div>
<div class="container mt-5 d-flex justify-content-center">

    <div class="row border-primary border border-3 rounded" style="width: 450px; height: auto; padding: 15px;">
        <div class="col-md-4">
            <strong>ID:</strong>
        </div>
        <div class="col-md-8">
            ${sanPham.id}
        </div>

        <div class="col-md-4">
            <strong>Mã Sản Phẩm:</strong>
        </div>
        <div class="col-md-8">
            ${sanPham.ma}
        </div>

        <div class="col-md-4">
            <strong>Tên Sản Phẩm:</strong>
        </div>
        <div class="col-md-8">
            ${sanPham.ten}
        </div>

        <div class="col-md-4">
            <strong>Trạng Thái:</strong>
        </div>
        <div class="col-md-8">
            ${sanPham.trangThai == 1 ? "Còn hàng" : "Hết hàng"}
        </div>
    </div>

</div>

<div class="mt-4 text-center">
    <a href="/locshop/hien-thi-san-pham" class="btn btn-primary">Quay lại danh sách</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
