package com.example.demo.controller;

import com.example.demo.model.HoaDon;
import com.example.demo.model.HoaDonChiTiet;
import com.example.demo.model.KhachHang;
import com.example.demo.repository.HoaDonChiTietRepository;
import com.example.demo.repository.KhachHangRepository;
import com.example.demo.repository.NhanVienRepository;
import com.example.demo.repository.SanPhanCTRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/locshop")
public class LoginController {
    @Autowired
    HoaDonChiTietRepository hoaDonChiTietRepository;
    @Autowired
    KhachHangRepository khachHangRepository;
    @Autowired
    NhanVienRepository nhanVienRepository;
    @Autowired
    SanPhanCTRepository sanPhanCTRepository;
    @GetMapping("/login")
    public String login(){
        return "login";
    }

    @GetMapping ("/home")
    public String home(){

        return "home";
    }
    @PostMapping ("/home")
    public String home1(){
        return "home";
    }
//    @GetMapping("ban-hang")
//    public String viewBanHang(Model model) {
//        model.addAttribute("hoaDon", new HoaDon());
//        model.addAttribute("nhanViens", nhanVienRepository.findAll());
//        model.addAttribute("khachHangs", khachHangRepository.findAll());
//        model.addAttribute("sanPhamCTs", sanPhamCTRepository.findAll()); // Đổi tên biến thành nhanVienList
//        model.addAttribute("hoaDon", new HoaDonChiTiet());
//        return "ban-hang";
//    }

}
