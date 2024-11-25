<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <%@ page contentType="text/html; charset=UTF-8" %>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>shoploc</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        /* Đặt footer ở dưới cùng */
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .content {
            flex: 1;
        }
        .carousel-item img {
            height: 400px; /* Đặt chiều cao cố định cho hình ảnh */
            object-fit: cover; /* Giữ tỉ lệ hình ảnh mà không bị biến dạng */
        }
    </style>
</head>
<body class="">

<div class="container content">
    <div class="head">
        <nav class="navbar navbar-expand-lg bg-light text-info">
            <div class="container-fluid">
                <a class="navbar-brand" href="/locshop/home">
                    <img src="https://png.pngtree.com/png-vector/20240628/ourlarge/pngtree-logo-for-the-chanel-clothing-company-on-a-black-and-white-vector-png-image_7061183.png" alt="Logo" style="width: 30px; height: 30px;"> <!-- Đã thay đổi logo -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active text-primary" aria-current="page" href="/locshop/ban-hang">Bán hàng</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hien-thi-mau-sac">Màu sắc</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hien-thi-kich-thuoc">Kích thước</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hien-thi-khach-hang">Khách hàng</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hien-thi-nhan-vien">Nhân viên</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hien-thi-san-pham">Sản phẩm</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hien-thi-san-pham-ct">Sản phẩm chi tiết</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hoa-don">Hóa đơn</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hoa-don-chi-tiet">Hóa đơn chi tiết</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
