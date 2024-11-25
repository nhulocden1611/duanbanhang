<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Danh sách Nhân Viên</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc); /* Gradient background */
            padding: 20px;
            color: white; /* Text color */
        }

        h1 {
            margin: 20px 0; /* Margin for heading */
            font-weight: bold; /* Bold text */
        }

        .container {
            background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent background */
            border-radius: 10px; /* Rounded corners */
            padding: 20px; /* Padding inside the container */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Shadow effect */
        }

        .form-control {
            border-radius: 5px; /* Rounded corners for input */
        }

        .table {
            background-color: white; /* White background for table */
            color: black; /* Black text for table */
        }

        .btn a {
            color: white; /* Default button link color */
            text-decoration: none; /* Remove underline */
        }

        .btn a:hover {
            color: #f8f9fa; /* Slightly lighter on hover */
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="d-flex justify-content-center m-4"><h1>Danh sách Nhân Viên</h1></div>

    <div class="my-3">
        <form action="/locshop/search-nhan-vien" method="get" onsubmit="return validateForm()">
            ID Nhân Viên:
            <input type="text" id="employeeId" name="id" class="form-control d-inline w-25" placeholder="">
            <button class="btn btn-info mt-2">Tìm kiếm</button>
        </form>

        <!-- Thông báo -->
        <div class="alert alert-danger mt-3" role="alert" id="errorMessage" style="display: none;">
            Vui lòng nhập ID Nhân Viên
        </div>
    </div>

    <script>
        function validateForm() {
            const employeeId = document.getElementById('employeeId').value;
            const errorMessage = document.getElementById('errorMessage');

            if (!employeeId) {
                errorMessage.style.display = 'block'; // Hiện thông báo lỗi
                return false; // Ngăn không cho form gửi đi
            }

            errorMessage.style.display = 'none'; // Ẩn thông báo nếu có nhập ID
            return true; // Cho phép form gửi đi
        }
    </script>


    <script>
        // Hiện thông báo khi trang được tải
        document.getElementById('searchMessage').style.display = 'block';
    </script>

    <table class="table table-striped table-hover table-success">
        <thead>
        <tr>
            <th>ID</th>
            <th>Mã Nhân Viên</th>
            <th>Tên Nhân Viên</th>
            <th>Trạng thái</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="nv" items="${nhanViens}">
            <tr>
                <td>${nv.id}</td>
                <td>${nv.maNV}</td>
                <td>${nv.ten}</td>
                <td>${nv.trangThai == 1 ? "Đang làm việc" : "Dừng làm việc"}</td>
                <td>
                    <button onclick="return confirm('Bạn chắc chắn xóa?')" type="button" class="btn btn-danger">
                        <a href="/locshop/delete-nhan-vien?id=${nv.id}">Xóa</a>
                    </button>
                    <button type="button" class="btn btn-warning">
                        <a href="/locshop/update-nhan-vien/${nv.id}">Cập nhật</a>
                    </button>
                    <button type="button" class="btn btn-info">
                        <a href="/locshop/detail-nhan-vien/${nv.id}">Chi tiết</a>
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <button class="btn btn-info">
        <a href="/locshop/add-nhan-vien"> Thêm Nhân Viên </a>
    </button>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
