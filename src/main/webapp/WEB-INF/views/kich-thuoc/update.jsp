<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Sửa Kích Thước</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            padding: 20px;
        }

        form {
            background-color: rgba(255, 255, 255, 0.9); /* Trong suốt một chút */
            max-width: 450px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #dddddd;
            border-radius: 10px; /* Bo tròn góc hơn */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Đổ bóng nhẹ */
            display: flex;
            flex-direction: column;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        form label {
            margin-bottom: 5px;
        }

        form input[type=text] {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            font-size: 14px;
        }

        form button {
            background-color: #4CAF50; /* Màu nút bấm */
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s; /* Hiệu ứng chuyển màu */
        }

        form button:hover {
            background-color: #45a049; /* Màu nút khi hover */
        }

        .error {
            color: crimson;
            margin-top: -10px;
            margin-bottom: 10px;
            font-size: 12px;
        }

        .form-check-label {
            margin-left: 5px;
        }
    </style>
</head>
<body>
<div class="d-flex justify-content-center">
    <h2>Sửa Kích Thước</h2>
</div>

<form:form action="/locshop/update-kich-thuoc" method="post" modelAttribute="kichThuoc">
    <div class="mb-3">
        <label for="id" class="form-label">id Kích Thước</label>
        <form:input path="id" class="form-control" id="id" readonly="true" />
        <form:errors path="id" class="error" />
    </div>
    <div class="mb-3">
        <label for="ma" class="form-label">Mã Kích Thước</label>
        <form:input path="ma" class="form-control" id="ma" readonly="true" />
        <form:errors path="ma" class="error" />
    </div>

    <div class="mb-3">
        <label for="ten" class="form-label">Tên Kích Thước:</label>
        <form:input path="ten" class="form-control" id="ten" />
        <form:errors path="ten" class="error" />
    </div>

    <div class="d-flex mb-3">
        <label class="form-label">Trạng thái</label>
        <div class="form-check ms-3">
            <form:radiobutton path="trangThai" value="1" id="trangThaiTrue" class="form-check-input" />
            <label class="form-check-label" for="trangThaiTrue">Hoạt động</label>
        </div>
        <div class="form-check">
            <form:radiobutton path="trangThai" value="0" id="trangThaiFalse" class="form-check-input" />
            <label class="form-check-label" for="trangThaiFalse">Ngừng hoạt động</label>
        </div>
    </div>
    <form:errors path="trangThai" class="error" />

    <form:button type="submit" class="btn btn-primary">Sửa</form:button>
</form:form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
