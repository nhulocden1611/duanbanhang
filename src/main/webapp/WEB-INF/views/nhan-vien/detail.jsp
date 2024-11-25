<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thông Tin Nhân Viên</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            padding: 20px;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            padding: 20px;
        }

        h1 {
            color: #fff;
        }
    </style>
</head>

<body>
<div class="text-center mb-4">
    <h1>Thông Tin Nhân Viên</h1>
</div>
<div class="container d-flex justify-content-center">

    <div class="card shadow border-primary" style="width: 500px;">
        <div class="row mb-3">
            <div class="col-md-4">
                <strong>ID:</strong>
            </div>
            <div class="col-md-8">
                ${nhanVien.id}
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-md-4">
                <strong>Mã Nhân Viên:</strong>
            </div>
            <div class="col-md-8">
                ${nhanVien.maNV}
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-md-4">
                <strong>Tên Nhân Viên:</strong>
            </div>
            <div class="col-md-8">
                ${nhanVien.ten}
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-md-4">
                <strong>Tên Đăng Nhập:</strong>
            </div>
            <div class="col-md-8">
                ${nhanVien.tenDangNhap}
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-md-4">
                <strong>Trạng Thái:</strong>
            </div>
            <div class="col-md-8">
                ${nhanVien.trangThai == 1 ? "Đang làm việc" : "Dừng làm việc"}
            </div>
        </div>
    </div>

</div>
<div class="mt-4 d-flex justify-content-center">
    <a href="/locshop/hien-thi-nhan-vien" class="btn btn-primary">Quay lại danh sách</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
