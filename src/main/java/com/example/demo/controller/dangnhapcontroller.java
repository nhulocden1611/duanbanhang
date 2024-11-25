package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/views")
public class dangnhapcontroller {

    @GetMapping("/dangnhap")
    public String dangnhap() {
        return "dangnhap";
    }


    @PostMapping("/dangnhap")
    public String handleLogin(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            @RequestParam("role") String role) {


        if ("nhanvien".equalsIgnoreCase(username) && "abc234".equals(password) && "employee".equals(role)) {
            return "nhanvien";
        }


        else if ("quanly".equalsIgnoreCase(username) && "abc123".equals(password) && "manager".equals(role)) {
            return "quanly";
        }

        // Đăng nhập thất bại
        else {
            return "redirect:/views/dangnhap?error=true";
        }
    }
    @GetMapping("/quanly")
    public String logout() {
        return "quanly";
    }
}
