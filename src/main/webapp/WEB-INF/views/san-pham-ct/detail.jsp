<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thông Tin Sản Phẩm Chi Tiết</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc); /* Gradient background */
            padding: 20px;
            min-height: 100vh; /* Chiều cao tối thiểu của body */
        }

        .container {
            margin-top: 50px;
        }

        .product-info {
            background-color: rgba(255, 255, 255, 0.9); /* Nền trắng với độ trong suốt */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        .btn {
            border-radius: 5px; /* Bo góc cho nút */
        }

        .text-center h1 {
            color: white; /* Màu chữ tiêu đề */
            margin-bottom: 30px; /* Khoảng cách dưới tiêu đề */
        }

        strong {
            color: #6a11cb; /* Màu chữ cho các nhãn */
        }

        .col-md-4 {
            font-weight: bold; /* Làm đậm nhãn */
        }
    </style>
</head>
<body>
<div class="text-center">
    <h1>Thông Tin Sản Phẩm Chi Tiết</h1>
</div>
<div class="container d-flex justify-content-center align-items-center">

    <div class="row product-info" style="width: 450px;">
        <div class="col-md-4">
            <strong>ID:</strong>
        </div>
        <div class="col-md-8">
            ${sanPhamCT.id}
        </div>

        <div class="col-md-4">
            <strong>Mã Sản Phẩm Chi Tiết:</strong>
        </div>
        <div class="col-md-8">
            ${sanPhamCT.maSPCT}
        </div>

        <div class="col-md-4">
            <strong>Kích Thước:</strong>
        </div>
        <div class="col-md-8">
            ${sanPhamCT.kichThuoc.ten}
        </div>

        <div class="col-md-4">
            <strong>Màu Sắc:</strong>
        </div>
        <div class="col-md-8">
            ${sanPhamCT.mauSac.ten}
        </div>

        <div class="col-md-4">
            <strong>Sản Phẩm:</strong>
        </div>
        <div class="col-md-8">
            ${sanPhamCT.sanPham.ten}
        </div>

        <div class="col-md-4">
            <strong>Số Lượng:</strong>
        </div>
        <div class="col-md-8">
            ${sanPhamCT.soLuong}
        </div>

        <div class="col-md-4">
            <strong>Đơn Giá:</strong>
        </div>
        <div class="col-md-8">
            ${sanPhamCT.donGia}
        </div>

        <div class="col-md-4">
            <strong>Trạng Thái:</strong>
        </div>
        <div class="col-md-8">
            ${sanPhamCT.trangThai == 1 ? "Còn Hàng" : "Hết hàng"}
        </div>
    </div>
</div>
<div class="mt-4 d-flex justify-content-center">
    <a href="/locshop/hien-thi-san-pham-ct" class="btn btn-primary">Quay lại danh sách</a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
