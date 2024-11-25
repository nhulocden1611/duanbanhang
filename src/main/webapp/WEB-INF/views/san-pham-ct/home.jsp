<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Danh sách Sản Phẩm Chi Tiết</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            padding: 20px;
            color: white; /* Đổi màu chữ cho nổi bật hơn với nền */
        }

        h1 {
            color: #fff; /* Màu chữ cho tiêu đề */
        }

        .table {
            background-color: rgba(255, 255, 255, 0.1); /* Nền bảng trong suốt */
            color: white; /* Màu chữ bảng */
        }

        .table th, .table td {
            vertical-align: middle; /* Căn giữa nội dung ô */
        }

        .btn a {
            color: white; /* Màu chữ cho các liên kết trong nút */
            text-decoration: none; /* Không có gạch chân */
        }

        .btn a:hover {
            text-decoration: underline; /* Gạch chân khi hover */
        }
    </style>
</head>
<body class="bg-primary-subtle">
<div class="container mt-5">
    <div class="d-flex justify-content-center m-4">
        <h1>Danh sách Sản Phẩm Chi Tiết</h1>
    </div>

    <div class="my-3">
        <form action="/locshop/search-san-pham-ct" method="get">
            <label for="id" class="form-label">Mã Sản Phẩm Chi Tiết:</label>
            <input type="text" name="id" id="id" class="form-control d-inline w-25" placeholder="">
            <button class="btn btn-info mt-2">Tìm kiếm</button>
        </form>
    </div>

    <table class="table table-striped table-hover table-success">
        <thead>
        <tr>
            <th>ID</th>
            <th>Mã Sản Phẩm Chi Tiết</th>
            <th>ID Kích Thước</th>
            <th>ID Màu Sắc</th>
            <th>Sản Phẩm</th>
            <th>Số Lượng</th>
            <th>Đơn Giá</th>
            <th>Trạng thái</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="spCT" items="${sanPhamCTs}">
            <tr>
                <td>${spCT.id}</td>
                <td>${spCT.maSPCT}</td>
                <td>${spCT.kichThuoc.ten}</td>
                <td>${spCT.mauSac.ten}</td>
                <td>${spCT.sanPham.ten}</td>
                <td>${spCT.soLuong}</td>
                <td>${spCT.donGia}</td>
                <td>${spCT.trangThai == 1 ? "Còn hàng" : "Hết hàng"}</td>
                <td>
                    <button onclick="return confirm('Bạn chắc chắn xóa?')" type="button" class="btn btn-danger">
                        <a href="/locshop/delete-san-pham-ct?id=${spCT.id}">Xóa</a>
                    </button>
                    <button type="button" class="btn btn-warning">
                        <a href="/locshop/update-san-pham-ct/${spCT.id}">Cập nhật</a>
                    </button>
                    <button type="button" class="btn btn-info">
                        <a href="/locshop/detail-san-pham-ct/${spCT.id}">Chi tiết</a>
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <button class="btn btn-info">
        <a href="/locshop/add-san-pham-ct">Thêm Sản Phẩm Chi Tiết</a>
    </button>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
