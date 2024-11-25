<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            width: 350px;
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .login-container label {
            display: block;
            margin-bottom: 8px;
            color: #555;
        }

        .login-container input, .login-container select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .login-container button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            border: none;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .login-container button:hover {
            background-color: #45a049;
        }

        .login-container .error-message {
            color: red;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2>Đăng Nhập</h2>
    <form id="loginForm" action="/views/dangnhap" method="post">
        <label for="username">Tài Khoản</label>
        <input type="text" id="username" name="username" placeholder="Nhập tài khoản" required>

        <label for="password">Mật Khẩu</label>
        <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" required>

        <label for="role">Chức Vụ</label>
        <select id="role" name="role" required>
            <option value="employee">Nhân Viên</option>
            <option value="manager">Quản Lý</option>
        </select>

        <button type="submit">Đăng nhập</button>

        <!-- Hiển thị thông báo lỗi nếu có -->
        <div class="error-message" id="error-message">
            <!-- Hiển thị lỗi đăng nhập tại đây (nếu có) -->
        </div>
    </form>
</div>

<script>
    // Hàm kiểm tra xem tài khoản và mật khẩu có hợp lệ không
    function validateForm(event) {
        const username = document.getElementById('username').value.trim();
        const password = document.getElementById('password').value.trim();
        const errorMessage = document.getElementById('error-message');

        // Kiểm tra độ dài tài khoản
        if (username.length < 4) {
            errorMessage.textContent = 'Tài khoản phải có ít nhất 4 ký tự.';
            event.preventDefault();
            return false;
        }

        // Kiểm tra độ dài mật khẩu
        if (password.length < 6) {
            errorMessage.textContent = 'Mật khẩu phải có ít nhất 6 ký tự.';
            event.preventDefault();
            return false;
        }

        // Mọi thứ đều ổn
        errorMessage.textContent = '';
        return true;
    }

    // Lắng nghe sự kiện submit form và thực hiện kiểm tra
    document.getElementById('loginForm').addEventListener('submit', validateForm);

    // Xử lý thông báo lỗi đăng nhập từ URL (nếu có)

</script>

</body>
</html>
