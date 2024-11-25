<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc); /* Màu nền gradient */
            padding: 20px;
            color: #fff; /* Màu chữ */
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Nền cho container */
            border-radius: 10px; /* Bo góc */
            padding: 20px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2); /* Đổ bóng */
        }

        h1 {
            color: #6a11cb; /* Màu tiêu đề */
        }

        .btn-info a {
            color: white; /* Màu chữ cho nút */
            text-decoration: none; /* Bỏ gạch chân */
        }

        .table {
            background-color: #fff; /* Nền bảng */
            color: #333; /* Màu chữ bảng */
        }

        .table th {
            background-color: #6a11cb; /* Màu nền cho tiêu đề bảng */
            color: #fff; /* Màu chữ cho tiêu đề bảng */
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #f2f2f2; /* Màu nền cho dòng lẻ */
        }

        .error {
            color: crimson; /* Màu chữ lỗi */
        }
    </style>
</head>
<body>
<div class="container mt-5 ">

    <div class="d-flex justify-content-center m-4"><h1>Danh sách khách hàng</h1></div>
    <div class="my-3">
        <form action="/locshop/search-khach-hang" method="get">
            ID khách hàng: <input type="number" name="id" class="form-control d-inline w-25" placeholder="Nhập id khách hàng">
            <button class="btn btn-info mt-2">Tìm kiếm</button>
        </form>
    </div>
    <table class="table table-striped table-hover table-success">
        <tr>
            <th>Id</th>
            <th>Tên</th>
            <th>SĐT</th>
            <th>Mã KH</th>
            <th>Trạng thái</th>
            <th>Action</th>
        </tr>
        <c:forEach var="hd" items="${khachHang}">
            <tr>
                <td>${hd.id}</td>
                <td>${hd.ten}</td>
                <td>${hd.sdt}</td>
                <td>${hd.maKH}</td>
                <td>${hd.trangThai == 1 ? "Đã mua hàng" : "Chưa mua hàng"}</td>
                <td>
                    <button onclick="return confirm('Bạn chắc chắn xóa?')" type="button" class="btn btn-danger">
                        <a style="color: white; text-decoration: none;" href="/locshop/delete-khach-hang?id=${hd.id}">Xóa</a>
                    </button>
                    <button type="button" class="btn btn-warning">
                        <a style="color: white; text-decoration: none;" href="/locshop/update-khach-hang/${hd.id}">Cập nhật</a>
                    </button>
                    <button type="button" class="btn btn-info">
                        <a style="color: white; text-decoration: none;" href="/locshop/detail-khach-hang/${hd.id}">Chi tiết</a>
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
    <button class="btn btn-info"><a style="color: white; text-decoration: none;" href="/locshop/add-khach-hang">Thêm</a></button>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
