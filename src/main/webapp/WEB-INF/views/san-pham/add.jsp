<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Thêm Sản Phẩm</title>
    <style>
        body {
            /* Xoá ảnh nền */
            background-color: #f2f2f2;
            padding: 20px;
        }

        form {
            background-color: rgba(255, 255, 255, 0.7); /* Làm cho form trong suốt nhẹ */
            max-width: 450px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #dddddd;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
        }

        form p {
            display: flex;
            flex-direction: row;
            align-items: center;
            margin-bottom: 10px;
        }

        form label {
            flex: 1;
            margin-right: 10px;
        }

        form input[type=text] {
            flex: 2;
            padding: 10px;
            margin-top: 4px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #cccccc;
            border-radius: 4px;
            font-size: 14px;
        }

        form button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }

        form button:hover {
            background-color: #45a049;
        }

        .error {
            color: crimson;
        }
    </style>
</head>
<body>
<div class="d-flex justify-content-center"><h2>Thêm Sản Phẩm</h2></div>
<form:form action="/locshop/add-san-pham" method="post" modelAttribute="sanPham">
    <div class="mb-3">
        <label for="productMa" class="form-label">Mã Sản Phẩm:</label>
        <form:input path="ma" class="form-control" id="productMa" />
        <form:errors path="ma" class="error" />
    </div>

    <div class="mb-3">
        <label for="productName" class="form-label">Tên Sản Phẩm:</label>
        <form:input path="ten" class="form-control" id="productName" />
        <form:errors path="ten" class="error" />
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

    <form:button onclick="return confirm('Bạn chắc chắn thêm sản phẩm?')" type="submit" class="btn btn-primary">Thêm</form:button>
</form:form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
