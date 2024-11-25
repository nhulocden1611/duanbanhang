<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Form Bán Hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background-image: url('https://pendecor.vn/uploads/files/2023/04/25/thiet-ke-shop-quan-ao-nu-3.jpg'); /* Hình nền */
            background-size: cover; /* Để hình ảnh phủ đầy toàn bộ */
            background-position: center; /* Căn giữa hình ảnh */
            color: #fff;
        }
        .container {
            background: rgba(0, 0, 0, 0.7);
            padding: 30px;
            border-radius: 8px;
            margin-top: 50px;
        }
        footer {
            background-color: rgba(0, 0, 0, 0.8);
            color: #fff;
            text-align: center;
            padding: 10px 0;
            margin-top: auto; /* Đẩy footer xuống cuối */
        }
    </style>

</head>

<body>

<div class="container my-3">
    <h2 class="text-center">Thêm Hóa Đơn</h2>
    <form action="/locshop/them-hd" method="post">
        <!-- Nhân viên -->
        <div class="mb-3">
            <label for="productSelect13" class="form-label">Chọn nhân viên bán hàng</label>
            <select id="productSelect13" name="NhanVien" class="form-select">
                <c:forEach var="nhanVien" items="${nhanViens}">
                    <option value="${nhanVien.id}">${nhanVien.ten}</option>
                </c:forEach>
            </select>
        </div>

        <!-- Khách hàng -->
        <div class="mb-3">
            <label for="productSelect21" class="form-label">Chọn số điện thoại khách hàng</label>
            <select id="productSelect21" name="KhachHang" class="form-select">
                <c:forEach var="khachHang" items="${khachHangs}">
                    <option value="${khachHang.id}">${khachHang.sdt}</option>
                </c:forEach>
            </select>
        </div>

        <!-- Chọn sản phẩm chi tiết -->
        <div id="productContainer" class="my-4">
            <div class="row product-row mb-3">
                <div class="mb-3 col-md-12">
                    <label for="productSelect22" class="form-label">Chọn sản phẩm chi tiết</label>
                    <select class="form-select" name="sanPhamCT[]" onchange="updatePrice(this)">
                        <option value="">Chọn sản phẩm</option>
                        <c:forEach var="sanPhamCT" items="${sanPhamCTs}">
                            <option value="${sanPhamCT.id}" data-price="${sanPhamCT.donGia}" data-mauSac="${sanPhamCT.mauSac.ten}" data-kichThuoc="${sanPhamCT.kichThuoc.ten}">
                                    ${sanPhamCT.maSPCT}
                            </option>
                        </c:forEach>
                    </select>
                </div>
                <div class="mb-3 col-md-4">
                    <label class="form-label">Màu sắc:</label>
                    <input name="mauSac" type="text" class="form-control productPrice" readonly />
                </div>
                <div class="mb-3 col-md-4">
                    <label class="form-label">Kích thước:</label>
                    <input name="kichThuoc" type="text" class="form-control productPrice" readonly />
                </div>
                <div class="mb-3 col-md-4">
                    <label class="form-label">Đơn Giá:</label>
                    <input name="donGia[]" type="text" class="form-control productPrice" readonly />
                </div>
                <div class="mb-3 col-md-4">
                    <label for="soLuong" class="form-label">Số Lượng</label>
                    <input type="number" name="soLuong[]" class="form-control" />
                </div>
            </div>
        </div>

        <div class="d-flex mb-3">
            <button type="button" class="btn btn-outline-danger me-2" onclick="addProduct()">Thêm sản phẩm</button>
        </div>

        <!-- Trạng thái thanh toán -->
        <div class="d-flex mb-3">
            <label class="form-label me-3">Trạng Thái:</label>
            <div class="form-check me-3">
                <input type="radio" name="trangThai" value="1" id="trangThaiTrue" checked class="form-check-input" />
                <label class="form-check-label" for="trangThaiTrue">Đã thanh toán</label>
            </div>
            <div class="form-check">
                <input type="radio" name="trangThai" value="0" id="trangThaiFalse" class="form-check-input" />
                <label class="form-check-label" for="trangThaiFalse">Chưa thanh toán</label>
            </div>
        </div>

        <!-- Nút submit -->
        <div class="text-center">
            <button onclick="return confirm('Bạn chắc chắn thêm?')" type="submit" class="btn btn-outline-info">Thêm Hóa Đơn</button>
        </div>
    </form>
</div>

<!-- Footer -->
<footer class="text-center text-lg-start mt-4">
    <div class="container p-4">
        <div class="row">
            <div class="col-lg-6 col-md-12 mb-4">
                <h5 class="text-uppercase">Thông tin liên hệ</h5>
                <p>Địa chỉ: Số 123, Đường ABC, Quận XYZ<br>Điện thoại: (123) 456-7890<br>Email: info@shoploc.com</p>
            </div>
            <div class="col-lg-6 col-md-12 mb-4">
                <h5 class="text-uppercase">Theo dõi chúng tôi</h5>
                <p>
                    <a href="https://www.facebook.com/loc.nhu.1004837" class="text-dark">Facebook</a><br>
                    <a href="https://www.facebook.com/loc.nhu.1004837" class="text-dark">Instagram</a><br>
                    <a href="https://www.facebook.com/loc.nhu.1004837" class="text-dark">Twitter</a>
                </p>
            </div>
        </div>
    </div>
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.1);">
        &copy; 2024 shoploc. All rights reserved.
    </div>
</footer>

<script>
    function addProduct() {
        var productContainer = document.getElementById("productContainer");
        var newRow = document.createElement("div");
        newRow.className = "row product-row mb-3";

        newRow.innerHTML = `
            <div class="mb-3 col-md-12">
                <select class="form-select" name="sanPhamCT[]" onchange="updatePrice(this)">
                    <option value="">Chọn sản phẩm</option>
                    <c:forEach var="sanPhamCT" items="${sanPhamCTs}">
                        <option value="${sanPhamCT.id}" data-price="${sanPhamCT.donGia}" data-mauSac="${sanPhamCT.mauSac.ten}" data-kichThuoc="${sanPhamCT.kichThuoc.ten}">
                            ${sanPhamCT.maSPCT}
                        </option>
                    </c:forEach>
                </select>
            </div>
            <div class="mb-3 col-md-4">
                <input name="mauSac" type="text" class="form-control productPrice" readonly />
            </div>
            <div class="mb-3 col-md-4">
                <input name="kichThuoc" type="text" class="form-control productPrice" readonly />
            </div>
            <div class="mb-3 col-md-4">
                <input name="donGia[]" type="text" class="form-control productPrice" readonly />
            </div>
            <div class="mb-3 col-md-4">
                <input type="number" name="soLuong[]" class="form-control" />
            </div>
        `;

        productContainer.appendChild(newRow);
    }

    function updatePrice(selectElement) {
        var selectedOption = selectElement.options[selectElement.selectedIndex];
        var row = selectElement.closest('.product-row');
        var mauSacInput = row.querySelector('input[name="mauSac"]');
        var kichThuocInput = row.querySelector('input[name="kichThuoc"]');
        var donGiaInput = row.querySelector('input[name="donGia[]"]');

        if (selectedOption) {
            mauSacInput.value = selectedOption.getAttribute('data-mauSac');
            kichThuocInput.value = selectedOption.getAttribute('data-kichThuoc');
            donGiaInput.value = selectedOption.getAttribute('data-price');
        }
    }
</script>

</body>
</html>
