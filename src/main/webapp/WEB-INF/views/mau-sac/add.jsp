<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Thêm Màu Sắc</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc); /* Thay đổi hình nền thành gradient */
            padding: 20px;
        }

        form {
            max-width: 450px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.9); /* Nền trắng nhẹ với độ trong suốt */
            padding: 20px;
            border-radius: 10px; /* Bo góc cho form */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Đổ bóng cho form */
            display: flex;
            flex-direction: column;
        }

        h2 {
            color: #fff; /* Màu chữ tiêu đề */
            margin-bottom: 20px; /* Khoảng cách dưới tiêu đề */
        }

        form .form-label {
            margin-bottom: 5px; /* Khoảng cách dưới nhãn */
        }

        form input[type=text], form input[type=radio] {
            padding: 10px;
            margin-bottom: 15px; /* Khoảng cách dưới input */
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
            transition: background-color 0.3s; /* Hiệu ứng chuyển màu cho nút */
        }

        form button:hover {
            background-color: #45a049; /* Đổi màu khi hover */
        }

        .error {
            color: crimson;
        }
    </style>
</head>
<body>
<div class="d-flex justify-content-center"><h2>Thêm Màu Sắc</h2></div>
<form:form action="/locshop/add-mau-sac" method="post" modelAttribute="mauSac">

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
            <form:radiobutton path="trangThai" value="1" id="trangThaiTrue" checked="checked" class="form-check-input" />
            <label class="form-check-label" for="trangThaiTrue">Có</label>
        </div>
        <div class="form-check">
            <form:radiobutton path="trangThai" value="0" id="trangThaiFalse" class="form-check-input" />
            <label class="form-check-label" for="trangThaiFalse">Không</label>
        </div>
    </div>

    <form:button onclick="return confirm('Bạn chắc chắn thêm?')" type="submit" class="btn btn-primary">Thêm</form:button>
</form:form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
