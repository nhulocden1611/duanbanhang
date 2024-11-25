<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Danh sách Kích Thước</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #6a11cb, #2575fc); /* Thay đổi màu nền */
        padding: 20px;
        color: #fff; /* Chỉnh màu chữ cho phù hợp */
    }

    h1 {
        color: #fff; /* Màu chữ cho tiêu đề */
    }

    .table {
        background-color: rgba(255, 255, 255, 0.8); /* Nền cho bảng */
        color: #000; /* Màu chữ trong bảng */
    }

    .table th, .table td {
        vertical-align: middle; /* Giữa chữ dọc */
    }

    .btn a {
        text-decoration: none; /* Không gạch chân */
        color: inherit; /* Kế thừa màu chữ từ nút */
    }

    .btn:hover a {
        color: #fff; /* Đổi màu chữ khi hover */
    }
</style>
<body>
<div class="container mt-5">
    <div class="d-flex justify-content-center m-4"><h1>Danh sách Kích Thước</h1></div>

    <div class="my-3">
        <form action="/locshop/search-kich-thuoc" method="get">
            <label for="id" class="form-label">Mã Kích Thước:</label>
            <input type="text" name="id" class="form-control d-inline w-25" id="id" placeholder="Nhập id kích thước">
            <button class="btn btn-info mt-2">Tìm kiếm</button>
        </form>
    </div>

    <table class="table table-striped table-hover table-success">
        <tr>
            <th>Id</th>
            <th>Mã</th>
            <th>Tên</th>
            <th>Trạng thái</th>
            <th>Action</th>
        </tr>
        <c:forEach var="kt" items="${kichThuocs}">
            <tr>
                <td>${kt.id}</td>
                <td>${kt.ma}</td>
                <td>${kt.ten}</td>
                <td>${kt.trangThai == 1 ? "Hoạt động" : "Ngừng hoạt động"}</td>
                <td>
                    <button onclick="return confirm('Bạn chắc chắn xóa?')" type="button" class="btn btn-danger">
                        <a href="/locshop/delete-kich-thuoc?id=${kt.id}">Xóa</a>
                    </button>
                    <button type="button" class="btn btn-warning">
                        <a href="/locshop/update-kich-thuoc/${kt.id}">Cập nhật</a>
                    </button>
                    <button type="button" class="btn btn-info">
                        <a href="/locshop/detail-kich-thuoc/${kt.id}">Chi tiết</a>
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>

    <button class="btn btn-info">
        <a href="/locshop/add-kich-thuoc">Thêm</a>
    </button>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
