<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Sửa Màu Sắc</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background: linear-gradient(to right, #6a11cb, #2575fc); /* Gradient background */
            height: 100vh; /* Chiều cao toàn bộ trang */
            display: flex;
            align-items: center; /* Giữa dọc */
            justify-content: center; /* Giữa ngang */
        }

        form {
            max-width: 450px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            background-color: rgba(255, 255, 255, 0.9); /* Nền trắng nhẹ */
        }

        form label {
            margin-bottom: 0.5rem;
        }

        form input[type=text], form input[type=password] {
            padding: 10px;
            margin-bottom: 1rem;
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
            transition: background-color 0.3s; /* Hiệu ứng chuyển màu */
        }

        form button:hover {
            background-color: #45a049;
        }

        .error {
            color: crimson;
            margin-top: -10px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="d-flex justify-content-center"><h2>Sửa Màu Sắc</h2></div>

<form:form action="/locshop/update-mau-sac" method="post" modelAttribute="mauSac">
    <div class="mb-3">
        <label for="colorId" class="form-label">ID</label>
        <form:input path="id" class="form-control" id="colorId" readonly="true" />
        <form:errors path="id" class="error" />
    </div>

    <div class="mb-3">
        <label for="colorCode" class="form-label">Mã Màu:</label>
        <form:input path="ma" class="form-control" id="colorCode" />
        <form:errors path="ma" class="error" />
    </div>

    <div class="mb-3">
        <label for="colorName" class="form-label">Tên Màu:</label>
        <form:input path="ten" class="form-control" id="colorName" />
        <form:errors path="ten" class="error" />
    </div>

    <div class="mb-3">
        <label class="form-label">Trạng thái</label>
        <div class="form-check">
            <form:radiobutton path="trangThai" value="1" id="trangThaiTrue" class="form-check-input" />
            <label class="form-check-label" for="trangThaiTrue">Có</label>
        </div>
        <div class="form-check">
            <form:radiobutton path="trangThai" value="0" id="trangThaiFalse" class="form-check-input" />
            <label class="form-check-label" for="trangThaiFalse">Không</label>
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
