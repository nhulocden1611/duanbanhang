<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Danh sách Sản Phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            padding: 20px;
            color: #fff;
        }

        h1 {
            color: #fff;
        }

        .table {
            background-color: rgba(255, 255, 255, 0.8); /* Light background for table */
            color: #333; /* Dark text for better readability */
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(255, 255, 255, 0.5); /* Striped effect */
        }

        .btn a {
            text-decoration: none;
            color: inherit; /* Keep text color consistent with button */
        }

        .form-control {
            width: auto; /* Adjust the input width */
        }
    </style>
</head>

<body>
<div class="container mt-5">
    <div class="d-flex justify-content-center m-4">
        <h1>Danh sách Sản Phẩm</h1>
    </div>

    <div class="my-3">
        <form action="/locshop/search-san-pham" method="get" onsubmit="return validateForm()">
            Mã Sản Phẩm:
            <input type="text" id="productId" name="id" class="form-control d-inline w-25" placeholder="">
            <button class="btn btn-info mt-2">Tìm kiếm</button>
        </form>

        <!-- Thông báo -->
        <div class="alert alert-danger mt-3" role="alert" id="errorMessage" style="display: none;">
            Vui lòng nhập Mã Sản Phẩm.
        </div>
    </div>

    <script>
        function validateForm() {
            const productId = document.getElementById('productId').value;
            const errorMessage = document.getElementById('errorMessage');

            if (!productId) {
                errorMessage.style.display = 'block'; // Hiện thông báo lỗi
                return false; // Ngăn không cho form gửi đi
            }

            errorMessage.style.display = 'none'; // Ẩn thông báo nếu có nhập Mã Sản Phẩm
            return true; // Cho phép form gửi đi
        }
    </script>


    <table class="table table-striped table-hover">
        <tr>
            <th>ID</th>
            <th>Mã Sản Phẩm</th>
            <th>Tên Sản Phẩm</th>
            <th>Trạng thái</th>
            <th>Action</th>
        </tr>
        <c:forEach var="sp" items="${sanPhams}">
            <tr>
                <td>${sp.id}</td>
                <td>${sp.ma}</td>
                <td>${sp.ten}</td>
                <td>${sp.trangThai == 1 ? "Còn hàng" : "Hết hàng"}</td>
                <td>
                    <button onclick="return confirm('Bạn chắc chắn xóa?')" type="button" class="btn btn-danger">
                        <a href="/locshop/delete-san-pham?id=${sp.id}">Xóa</a>
                    </button>
                    <button type="button" class="btn btn-warning">
                        <a href="/locshop/update-san-pham/${sp.id}">Cập nhật</a>
                    </button>
                    <button type="button" class="btn btn-info">
                        <a href="/locshop/detail/${sp.id}">Chi tiết</a>
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>

    <button class="btn btn-info">
        <a href="/locshop/add-san-pham"> Thêm Sản Phẩm </a>
    </button>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
