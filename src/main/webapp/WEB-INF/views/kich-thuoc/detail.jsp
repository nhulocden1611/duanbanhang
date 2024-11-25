<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thông Tin Kích Thước</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            padding: 20px;
            color: white; /* Đổi màu chữ cho dễ đọc trên nền tối */
        }
        .card {
            background-color: rgba(255, 255, 255, 0.9); /* Thêm độ mờ cho nền card */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>

<body>
<div class="text-center">
    <h1>Thông Tin Kích Thước</h1>
</div>
<div class="container mt-5 d-flex justify-content-center">
    <div class="row card p-4" style="width: 500px;">
        <div class="col-md-4">
            <strong>ID Kích Thước:</strong>
        </div>
        <div class="col-md-8">
            ${kichThuoc.id}
        </div>
        <div class="col-md-4">
            <strong>Mã Kích Thước:</strong>
        </div>
        <div class="col-md-8">
            ${kichThuoc.ma}
        </div>
        <div class="col-md-4">
            <strong>Tên Kích Thước:</strong>
        </div>
        <div class="col-md-8">
            ${kichThuoc.ten}
        </div>
        <div class="col-md-4">
            <strong>Trạng Thái:</strong>
        </div>
        <div class="col-md-8">
            ${kichThuoc.trangThai == 1 ? "Hoạt động" : "Ngừng hoạt động"}
        </div>
    </div>
</div>
<div class="mt-4 d-flex justify-content-center">
    <a href="/locshop/hien-thi-kich-thuoc" class="btn btn-primary">Quay lại danh sách</a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
