package com.example.demo.repository;

import com.example.demo.model.SanPhamCT;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SanPhanCTRepository extends JpaRepository<SanPhamCT,Integer> {
}
