package com.example.demo.controller;

import com.example.demo.model.*;
import com.example.demo.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.LocalDate;
import java.util.List;

@Controller
@RequestMapping("/locshop")
public class BanHangController {
    @Autowired
    HoaDonChiTietRepository hoaDonChiTietRepository;
    @Autowired
    private HoaDonRepository hoaDonRepository;
    @Autowired
    private SanPhanCTRepository sanPhamCTRepository;

    @Autowired
    private KhachHangRepository khachHangRepository;
    @Autowired
    private NhanVienRepository nhanVienRepository;


@GetMapping("/ban-hang")
public String showAddHoaDonForm(Model model) {
    model.addAttribute("hoaDon", new HoaDon());
    model.addAttribute("nhanViens", nhanVienRepository.findAll());
    model.addAttribute("khachHangs", khachHangRepository.findAll());
    model.addAttribute("sanPhamCTs", sanPhamCTRepository.findAll());
    return "/ban-hang";
}

@PostMapping("/them-hd")
public String saveHoaDon(HoaDon hoaDon,
                         @RequestParam("sanPhamCT") List<Integer> sanPhamCTIds,
                         @RequestParam("soLuong") List<Integer> soLuongs,
                         @RequestParam("donGia") List<Float> donGias,
                        @RequestParam("trangThai") Integer trangThai,
                         RedirectAttributes redirectAttributes)

{
    hoaDon.setNgayMuaHang(LocalDate.now());

    hoaDonRepository.save(hoaDon);

    for (int i = 0; i < sanPhamCTIds.size(); i++) {
        HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
        // Set the product reference
        SanPhamCT sanPhamCT = sanPhamCTRepository.findById(sanPhamCTIds.get(i))
                .orElseThrow(() -> new RuntimeException("Product not found"));
        hoaDonChiTiet.setTrangThai(trangThai);
        hoaDonChiTiet.setSanPhamCT(sanPhamCT);
        hoaDonChiTiet.setSoLuong(soLuongs.get(i));
        hoaDonChiTiet.setDonGia(donGias.get(i));
        hoaDonChiTiet.setHoaDon(hoaDon); // set the reference to the HoaDon
        int soLuongConLai = sanPhamCT.getSoLuong() - soLuongs.get(i);
            if (soLuongConLai < 0) {
                throw new RuntimeException("Số lượng tồn kho không đủ cho sản phẩm với ID: " + sanPhamCT.getId());
            }
            sanPhamCT.setSoLuong(soLuongConLai);
            sanPhamCTRepository.save(sanPhamCT);
        hoaDonChiTietRepository.save(hoaDonChiTiet);
    }


    return "redirect:/locshop/ban-hang";
}


    @GetMapping("/hoa-don")
    public String listHoaDon(Model model) {
        List<HoaDon> hoaDonList = hoaDonRepository.findAll();
        model.addAttribute("hoaDonList", hoaDonList);
        return "hoadon";
    }
    @GetMapping("/hoa-don-chi-tiet")
    public String listHoaDonChiTiet(Model model) {
        List<HoaDon> hoaDonList = hoaDonRepository.findAll();
        model.addAttribute("hoaDonList", hoaDonList);
        return "hoadon";
    }




    @GetMapping("/sua-hoa-don/{id}")
    public String editHoaDon(@PathVariable Integer id, Model model) {
        HoaDon hoaDon = hoaDonRepository.findById(id).get();
        model.addAttribute("hoaDon", hoaDon);

        // Bạn có thể thêm danh sách nhân viên và khách hàng nếu cần
        List<NhanVien> nhanViens = nhanVienRepository.findAll();
        List<KhachHang> khachHangs = khachHangRepository.findAll();
        model.addAttribute("nhanViens", nhanViens);
        model.addAttribute("khachHangs", khachHangs);
        model.addAttribute("sanPhamCTs", sanPhamCTRepository.findAll());


        return "sua-hoa-don"; // Trả về tên trang sửa
    }
    @PostMapping("/sua-hd")
    public String updateHoaDon(@ModelAttribute HoaDon hoaDon,
                               @RequestParam("sanPhamCT") List<Integer> sanPhamCTIds,
                               @RequestParam("soLuong") List<Integer> soLuongs,
                               @RequestParam("donGia") List<Float> donGias,
                               @RequestParam("trangThai") Integer trangThai) {
        // Cập nhật thông tin hóa đơn trong cơ sở dữ liệu
        hoaDon.setNgayMuaHang(LocalDate.now());
        hoaDonRepository.save(hoaDon);

        // Lấy danh sách các chi tiết hóa đơn hiện tại
        List<HoaDonChiTiet> existingDetails1 = hoaDonChiTietRepository.findByHoaDon(hoaDon);

        // Cộng lại số lượng sản phẩm từ các chi tiết hóa đơn hiện tại vào kho
        for (HoaDonChiTiet detail : existingDetails1) {
            SanPhamCT sanPhamCT = detail.getSanPhamCT();
            sanPhamCT.setSoLuong(sanPhamCT.getSoLuong() + detail.getSoLuong()); // Cộng lại số lượng vào kho
            sanPhamCTRepository.save(sanPhamCT); // Lưu lại sản phẩm đã cập nhật số lượng
        }
// Lấy danh sách các chi tiết hóa đơn hiện tại và xóa hết chúng
        List<HoaDonChiTiet> existingDetails = hoaDonChiTietRepository.findByHoaDon(hoaDon);
        for (HoaDonChiTiet detail : existingDetails) {
            hoaDonChiTietRepository.delete(detail);
        }

        // Kiểm tra xem danh sách sản phẩm có dữ liệu không
        if (sanPhamCTIds.isEmpty() || soLuongs.isEmpty() || donGias.isEmpty()) {
            throw new RuntimeException("Danh sách sản phẩm không hợp lệ.");
        }

        for (int i = 0; i < sanPhamCTIds.size(); i++) {
            HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
            // Set the product reference
            SanPhamCT sanPhamCT = sanPhamCTRepository.findById(sanPhamCTIds.get(i))
                    .orElseThrow(() -> new RuntimeException("Product not found"));

            hoaDonChiTiet.setTrangThai(trangThai);
            hoaDonChiTiet.setSanPhamCT(sanPhamCT);
            hoaDonChiTiet.setSoLuong(soLuongs.get(i));
            hoaDonChiTiet.setDonGia(donGias.get(i));
            hoaDonChiTiet.setHoaDon(hoaDon); // set the reference to the HoaDon

            int soLuongConLai = sanPhamCT.getSoLuong() - soLuongs.get(i);
            if (soLuongConLai < 0) {
                throw new RuntimeException("Số lượng tồn kho không đủ cho sản phẩm với ID: " + sanPhamCT.getId());
            }
            sanPhamCT.setSoLuong(soLuongConLai);
            sanPhamCTRepository.save(sanPhamCT);
            hoaDonChiTietRepository.save(hoaDonChiTiet);
        }

        return "redirect:/locshop/hoa-don"; // Chuyển hướng về danh sách hóa đơn
    }

}
