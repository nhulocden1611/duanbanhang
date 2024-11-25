<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thông Tin Màu Sắc</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            padding: 20px;
        }
        .container {
            margin-top: 50px;
        }
        .info-card {
            background: rgba(255, 255, 255, 0.9); /* Nền trắng nhẹ cho thẻ thông tin */
            border-radius: 10px; /* Bo góc cho thẻ */
            padding: 20px; /* Padding cho thẻ */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Đổ bóng cho thẻ */
        }
        h1 {
            color: #fff; /* Màu chữ tiêu đề */
            margin-bottom: 20px; /* Khoảng cách dưới tiêu đề */
        }
    </style>
</head>
<body>
<div class="text-center">
    <h1>Thông Tin Màu Sắc</h1>
</div>
<div class="container d-flex justify-content-center">

    <div class="row info-card" style="width: 450px;">
        <div class="col-md-4">
            <strong>Mã Màu:</strong>
        </div>
        <div class="col-md-8">
            ${mauSac.ma}
        </div>

        <div class="col-md-4">
            <strong>Tên Màu:</strong>
        </div>
        <div class="col-md-8">
            ${mauSac.ten}
        </div>

        <div class="col-md-4">
            <strong>Trạng Thái:</strong>
        </div>
        <div class="col-md-8">
            ${mauSac.trangThai == 1 ? "Hoạt động" : "Ngừng hoạt động"}
        </div>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
