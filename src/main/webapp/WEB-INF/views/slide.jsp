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
            background-image: url('https://banghenhahangcafe.com/wp-content/uploads/2021/03/thiet-ke-shop-quan-ao-1.jpg');
            background-size: cover; /* Làm cho hình ảnh phủ kín */
            background-position: center; /* Căn giữa hình ảnh */
            background-repeat: no-repeat; /* Không lặp lại hình ảnh */
        }
        .content {
            flex: 1;
            background-color: rgba(255, 255, 255, 0.8); /* Nền trắng với độ trong suốt cho nội dung */
            padding: 20px; /* Thêm khoảng cách cho nội dung */
            border-radius: 10px; /* Bo góc cho nội dung */
        }
        .carousel-item img {
            height: 400px; /* Đặt chiều cao cố định cho hình ảnh */
            object-fit: cover; /* Giữ tỉ lệ hình ảnh mà không bị biến dạng */
        }
        .nav-logo {
            width: 20px; /* Kích thước logo */
            height: 20px; /* Kích thước logo */
            margin-right: 5px; /* Khoảng cách giữa logo và tên */
        }
    </style>
</head>
<body>

<div class="container content">
    <div class="head">
        <nav class="navbar navbar-expand-lg bg-light text-info">
            <div class="container-fluid">
                <a class="navbar-brand" href="/locshop/home">
                    <img src="https://png.pngtree.com/png-vector/20240628/ourlarge/pngtree-logo-for-the-chanel-clothing-company-on-a-black-and-white-vector-png-image_7061183.png" alt="Logo" style="width: 50px; height: 50px;">
                    <span class="ms-2">ShopLoc</span>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active text-primary" aria-current="page" href="/locshop/ban-hang">
                                <img src="https://cdn-icons-png.flaticon.com/512/226/226128.png" alt="Logo Bán hàng" class="nav-logo">Bán hàng
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hien-thi-nhan-vien">
                                <img src="https://cdn-icons-png.flaticon.com/512/3700/3700890.png" alt="Logo Nhân viên" class="nav-logo">Nhân viên
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hien-thi-san-pham">
                                <img src="https://cdn-icons-png.flaticon.com/512/3135/3135768.png" alt="Logo Sản phẩm" class="nav-logo">Sản phẩm
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hien-thi-mau-sac">
                                <img src="https://cdn-icons-png.flaticon.com/512/2666/2666466.png" alt="Logo Màu sắc" class="nav-logo">Màu sắc
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hien-thi-kich-thuoc">
                                <img src="https://cdn-icons-png.flaticon.com/512/3340/3340132.png" alt="Logo Kích thước" class="nav-logo">Kích thước
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hien-thi-khach-hang">
                                <img src="https://cdn-icons-png.flaticon.com/512/139/139828.png" alt="Logo Khách hàng" class="nav-logo">Khách hàng
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hien-thi-san-pham-ct">
                                <img src="https://cdn-icons-png.flaticon.com/512/1196/1196526.png" alt="Logo Sản phẩm chi tiết" class="nav-logo">Sản phẩm chi tiết
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hoa-don">
                                <img src="https://cdn-icons-png.flaticon.com/512/1668/1668877.png" alt="Logo Hóa đơn" class="nav-logo">Hóa đơn
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info" href="/locshop/hoa-don-chi-tiet">
                                <img src="https://cdn-icons-png.flaticon.com/512/3455/3455731.png" alt="Logo Hóa đơn Chi tiết" class="nav-logo">Hóa đơn Chi tiết
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
