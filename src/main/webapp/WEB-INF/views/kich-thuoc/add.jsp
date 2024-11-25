<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Thêm Kích Thước</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            padding: 20px;
            color: white; /* Đổi màu chữ cho dễ đọc trên nền tối */
        }

        form {
            max-width: 450px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.9); /* Thêm độ mờ cho nền form */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
        }

        form label {
            margin-bottom: 5px;
        }

        form input[type=text], form input[type=number] {
            padding: 10px;
            margin-bottom: 15px;
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
            transition: background-color 0.3s;
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
<div class="d-flex justify-content-center"><h2>Thêm Kích Thước</h2></div>
<form:form action="/locshop/add-kich-thuoc" method="post" modelAttribute="kichThuoc">
    <div class="mb-3">
        <label for="ma" class="form-label">Mã Kích Thước</label>
        <form:input path="ma" class="form-control" id="ma" />
        <form:errors path="ma" class="error" />
    </div>

    <div class="mb-3">
        <label for="ten" class="form-label">Tên Kích Thước:</label>
        <form:input path="ten" class="form-control" id="ten" />
        <form:errors path="ten" class="error" />
    </div>

    <div class="mb-3">
        <label for="trangThai" class="form-label">Trạng thái</label>
        <div class="form-check">
            <form:radiobutton path="trangThai" value="1" id="trangThaiTrue" checked="checked" class="form-check-input" />
            <label class="form-check-label" for="trangThaiTrue">Hoạt động</label>
        </div>
        <div class="form-check">
            <form:radiobutton path="trangThai" value="0" id="trangThaiFalse" class="form-check-input" />
            <label class="form-check-label" for="trangThaiFalse">Ngừng hoạt động</label>
        </div>
        <form:errors path="trangThai" class="error" />
    </div>

    <button onclick="return confirm('Bạn chắc chắn thêm?')" type="submit" class="btn btn-primary">Thêm</button>
</form:form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
