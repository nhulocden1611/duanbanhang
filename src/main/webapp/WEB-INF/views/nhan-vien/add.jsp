<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Thêm Nhân Viên</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc); /* Gradient background */
            padding: 20px;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        form {
            max-width: 450px;
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }

        form h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        form .form-label {
            font-weight: bold;
        }

        form input[type=text],
        form input[type=password] {
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
            transition: background-color 0.3s ease;
        }

        form button:hover {
            background-color: #45a049;
        }

        .error {
            color: crimson;
            margin-top: -8px;
            margin-bottom: 10px;
            font-size: 12px;
        }
    </style>
</head>
<body>
<div>
    <form:form action="/locshop/add-nhan-vien" method="post" modelAttribute="nhanVien">
        <h2>Thêm Nhân Viên</h2>

        <div class="mb-3">
            <label for="employeeMaNV" class="form-label">Mã Nhân Viên:</label>
            <form:input path="maNV" class="form-control" id="employeeMaNV" />
            <form:errors path="maNV" class="error" />
        </div>

        <div class="mb-3">
            <label for="employeeName" class="form-label">Tên Nhân Viên:</label>
            <form:input path="ten" class="form-control" id="employeeName" />
            <form:errors path="ten" class="error" />
        </div>

        <div class="mb-3">
            <label for="employeeUsername" class="form-label">Tên Đăng Nhập:</label>
            <form:input path="tenDangNhap" class="form-control" id="employeeUsername" />
            <form:errors path="tenDangNhap" class="error" />
        </div>

        <div class="mb-3">
            <label for="employeePassword" class="form-label">Mật Khẩu:</label>
            <form:input type="password" path="matKhau" class="form-control" id="employeePassword" />
            <form:errors path="matKhau" class="error" />
        </div>

        <div class="mb-3">
            <label class="form-label">Trạng thái</label>
            <div class="form-check">
                <form:radiobutton path="trangThai" value="1" id="trangThaiTrue" class="form-check-input" />
                <label class="form-check-label" for="trangThaiTrue">Đang làm việc</label>
            </div>
            <div class="form-check">
                <form:radiobutton path="trangThai" value="0" id="trangThaiFalse" class="form-check-input" />
                <label class="form-check-label" for="trangThaiFalse">Ngừng làm việc</label>
            </div>
        </div>

        <form:button onclick="return confirm('Bạn chắc chắn thêm?')" type="submit" class="btn btn-primary">Thêm</form:button>
    </form:form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
