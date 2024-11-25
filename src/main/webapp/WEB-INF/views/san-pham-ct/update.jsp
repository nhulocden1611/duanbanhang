<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Sửa Sản Phẩm Chi Tiết</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc); /* Gradient background */
            padding: 20px;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column; /* Thay đổi hướng của các phần tử con thành cột */
        }

        form {
            max-width: 450px;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent white */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        form label {
            margin-bottom: 0.5rem;
        }

        form input[type=text], form input[type=number], form input[type=decimal], form select {
            padding: 10px;
            margin-top: 4px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            transition: border-color 0.3s;
        }

        form input[type=text]:focus, form input[type=number]:focus, form input[type=decimal]:focus, form select:focus {
            border-color: #6a11cb; /* Change border color on focus */
            outline: none;
        }

        form button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        form button:hover {
            background-color: #45a049; /* Darker green on hover */
        }

        .error {
            color: crimson;
        }

        h2 {
            color: white; /* Text color for the heading */
            margin-bottom: 20px; /* Space below the heading */
        }
    </style>
</head>
<body>
<h2>Sửa Sản Phẩm Chi Tiết</h2> <!-- Tiêu đề được đặt lên trên cùng -->

<form:form action="/locshop/update-san-pham-ct" method="post" modelAttribute="sanPhamCT">
    <div class="mb-3">
        <label for="productId" class="form-label">ID</label>
        <form:input path="id" class="form-control" id="productId" readonly="true" />
        <form:errors path="id" class="error" />
    </div>
    <div class="mb-3">
        <label for="productMaSPCT" class="form-label">Mã sản phẩm chi tiết</label>
        <form:input path="maSPCT" class="form-control" id="productMaSPCT" />
        <form:errors path="maSPCT" class="error" />
    </div>
    <div class="mb-3">
        <label for="productMaSP" class="form-label">Chọn Sản Phẩm :</label>
        <form:select id="productMaSP" path="sanPham.id">
            <form:options items="${listSanPham}" itemLabel="ten" itemValue="id"/>
        </form:select>
    </div>

    <div class="mb-3">
        <label for="productKichThuoc" class="form-label">Kích Thước:</label>
        <form:select path="kichThuoc.id" class="form-control" id="productKichThuoc">
            <form:options items="${listKichThuoc}" itemLabel="ten" itemValue="id"/>
        </form:select>
    </div>

    <div class="mb-3">
        <label for="productMauSac" class="form-label">Màu sắc:</label>
        <form:select path="mauSac.id" class="form-control" id="productMauSac">
            <form:options items="${listMauSac}" itemValue="id" itemLabel="ten"/>
        </form:select>
    </div>

    <div class="mb-3">
        <label for="productSoLuong" class="form-label">Số Lượng:</label>
        <form:input type="number" path="soLuong" class="form-control" id="productSoLuong" />
        <form:errors path="soLuong" class="error" />
    </div>

    <div class="mb-3">
        <label for="productDonGia" class="form-label">Đơn Giá:</label>
        <form:input type="decimal" path="donGia" class="form-control" id="productDonGia" />
        <form:errors path="donGia" class="error" />
    </div>

    <div class="mb-3">
        <label class="form-label">Trạng Thái</label>
        <div class="form-check">
            <form:radiobutton path="trangThai" value="1" id="trangThaiTrue" class="form-check-input" />
            <label class="form-check-label" for="trangThaiTrue">Còn hàng</label>
        </div>
        <div class="form-check">
            <form:radiobutton path="trangThai" value="0" id="trangThaiFalse" class="form-check-input" />
            <label class="form-check-label" for="trangThaiFalse">Hết hàng</label>
        </div>
    </div>

    <form:button onclick="return confirm('Bạn chắc chắn sửa sản phẩm chi tiết?')" type="submit" class="btn btn-primary">Sửa</form:button>
</form:form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
