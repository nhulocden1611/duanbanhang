package com.example.demo.controller;
import com.example.demo.model.SanPhamCT;
import com.example.demo.repository.KichThuoctRepository;
import com.example.demo.repository.MauSacRepository;
import com.example.demo.repository.SanPhamRepository;
import com.example.demo.repository.SanPhanCTRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/locshop")
public class SanPhamCTController {
    @Autowired
    SanPhanCTRepository sanPhanCTRepository;

    @Autowired
    SanPhamRepository sanPhamRepository;

    @Autowired
    KichThuoctRepository kichThuoctRepository;

    @Autowired
    MauSacRepository mauSacRepository;
    @GetMapping("/hien-thi-san-pham-ct")
    public String hienThi(Model model) {
        model.addAttribute("sanPhamCTs", sanPhanCTRepository.findAll());
        return "san-pham-ct/home";
    }

    @GetMapping("/search-san-pham-ct")
    public String search(Model model, @RequestParam("id") Integer id) {
        model.addAttribute("sanPhamCTs",sanPhanCTRepository.findById(id).stream().toList());
        return "san-pham-ct/home";
    }

    @GetMapping("/delete-san-pham-ct")
    public String delete(@RequestParam("id") Integer id) {
        sanPhanCTRepository.deleteById(id);
        return "redirect:/locshop/hien-thi-san-pham-ct";
    }

    @GetMapping("/add-san-pham-ct")
    public String showAddForm(Model model) {
        model.addAttribute("sanPhamCT", new SanPhamCT());
        model.addAttribute("listSanPham",sanPhamRepository.findAll());
        model.addAttribute("listKichThuoc",kichThuoctRepository.findAll());
        model.addAttribute("listMauSac",mauSacRepository.findAll());

        return "san-pham-ct/add";
    }

    @PostMapping("/add-san-pham-ct")
    public String add(@Valid @ModelAttribute("sanPhamCT") SanPhamCT sanPhamCT, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "san-pham-ct/add";
        }
        sanPhanCTRepository.save(sanPhamCT);
        return "redirect:/locshop/hien-thi-san-pham-ct";
    }

    @GetMapping("/update-san-pham-ct/{id}")
    public String showUpdateForm(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("sanPhamCT", sanPhanCTRepository.findById(id).get());
        model.addAttribute("listSanPham",sanPhamRepository.findAll());
        model.addAttribute("listKichThuoc",kichThuoctRepository.findAll());
        model.addAttribute("listMauSac",mauSacRepository.findAll());
        return "san-pham-ct/update";
    }

    @PostMapping("/update-san-pham-ct")
    public String update(@Valid @ModelAttribute("sanPhamCT") SanPhamCT sanPhamCT, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("sanPhamCT", sanPhamCT);
            return "san-pham-ct/update";
        }
        sanPhanCTRepository.save(sanPhamCT);
        return "redirect:/locshop/hien-thi-san-pham-ct";
    }

    @GetMapping("/detail-san-pham-ct/{id}")
    public String detailinfo(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("sanPhamCT", sanPhanCTRepository.findById(id).get());
        return "san-pham-ct/detail";
    }
}
