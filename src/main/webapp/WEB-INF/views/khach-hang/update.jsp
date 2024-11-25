<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Sửa Khách Hàng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            padding: 20px;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        form {
            max-width: 450px;
            width: 100%; /* Đảm bảo form không vượt quá chiều rộng màn hình */
            background-color: rgba(255, 255, 255, 0.9); /* Làm cho form trong suốt nhẹ */
            padding: 20px;
            border: 1px solid #dddddd;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
        }

        form label {
            margin-bottom: 5px;
        }

        form input[type=text], form input[type=number] {
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #cccccc;
            border-radius: 5px;
            font-size: 14px;
        }

        form button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s; /* Hiệu ứng chuyển động khi hover */
        }

        form button:hover {
            background-color: #45a049;
        }

        .error {
            color: crimson;
            margin-top: -10px;
            margin-bottom: 10px;
        }

        .form-check {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="d-flex justify-content-center"><h2>Sửa Khách Hàng</h2></div>

<form:form action="/locshop/update-khach-hang" method="post" modelAttribute="khachHang">
    <div class="mb-3">
        <label for="userId" class="form-label">ID</label>
        <form:input path="id" class="form-control" id="userId" readonly="true" />
        <form:errors path="id" class="error" />
    </div>

    <div class="mb-3">
        <label for="ten" class="form-label">Tên Khách Hàng:</label>
        <form:input path="ten" class="form-control" id="ten" />
        <form:errors path="ten" class="error" />
    </div>

    <div class="mb-3">
        <label for="sdt" class="form-label">Số điện thoại:</label>
        <form:input path="sdt" class="form-control" id="sdt" />
        <form:errors path="sdt" class="error" />
    </div>

    <div class="mb-3">
        <label for="maKH" class="form-label">Mã Khách Hàng:</label>
        <form:input path="maKH" class="form-control" id="maKH" />
        <form:errors path="maKH" class="error" />
    </div>

    <div class="d-flex mb-3">
        <label class="form-label">Trạng thái</label>
        <div class="form-check ms-3">
            <form:radiobutton path="trangThai" value="1" id="trangThaiTrue" class="form-check-input" />
            <label class="form-check-label" for="trangThaiTrue">Đã mua hàng</label>
        </div>
        <div class="form-check">
            <form:radiobutton path="trangThai" value="0" id="trangThaiFalse" class="form-check-input" />
            <label class="form-check-label" for="trangThaiFalse">Chưa mua hàng</label>
        </div>
        <form:errors path="trangThai" class="error" />
    </div>

    <form:button type="submit" class="btn btn-primary">Sửa</form:button>
</form:form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
