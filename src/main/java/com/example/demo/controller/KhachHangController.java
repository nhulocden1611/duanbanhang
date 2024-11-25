package com.example.demo.controller;

import com.example.demo.model.KhachHang;
import com.example.demo.repository.KhachHangRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/locshop")
public class KhachHangController {
@Autowired
    KhachHangRepository khachHangRepository;

    @GetMapping("/hien-thi-khach-hang")
    public String hienThi(Model model) {
        model.addAttribute("khachHang", khachHangRepository.findAll());
        return "khach-hang/home";
    }

    @GetMapping("/search-khach-hang")
    public String search(Model model, @RequestParam("id") Integer id) {
        List<KhachHang> khachHangs = khachHangRepository.findById(id).stream().toList();
        model.addAttribute("khachHang", khachHangs);
        return "khach-hang/home";
    }

    @GetMapping("/delete-khach-hang")
    public String delete(@RequestParam("id") Integer id) {
        khachHangRepository.delete(khachHangRepository.findById(id).get());
        return "redirect:/locshop/hien-thi-khach-hang";
    }

    @GetMapping("/add-khach-hang")
    public String showAddForm(Model model) {
        model.addAttribute("khachHang", new KhachHang());
        return "khach-hang/add";
    }

    @PostMapping("/add-khach-hang")
    public String add(@Valid @ModelAttribute("khachHang") KhachHang khachHang, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "khach-hang/add";
        }
        khachHangRepository.save(khachHang);
        return "redirect:/locshop/hien-thi-khach-hang";
    }

    @GetMapping("/update-khach-hang/{id}")
    public String showUpdateForm(Model model, @PathVariable("id") Integer id) {
        KhachHang khachHang = khachHangRepository.findById(id).get();
        model.addAttribute("khachHang", khachHang);
        return "khach-hang/update";
    }

    @PostMapping("/update-khach-hang")
    public String update(@Valid @ModelAttribute("khachHang") KhachHang khachHang, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("khachHang", khachHang);
            return "locshop/update-khach-hang";
        }
        khachHangRepository.save(khachHang);
        return "redirect:/locshop/hien-thi-khach-hang";
    }

    @GetMapping("/detail-khach-hang/{id}")
    public String detailinfo(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("kh", khachHangRepository.findById(id).get());
        return "khach-hang/detail";
    }
}
