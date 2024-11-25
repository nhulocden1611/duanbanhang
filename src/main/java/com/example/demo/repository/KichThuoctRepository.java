package com.example.demo.repository;

import com.example.demo.model.KichThuoc;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface KichThuoctRepository extends JpaRepository<KichThuoc,Integer> {
}
