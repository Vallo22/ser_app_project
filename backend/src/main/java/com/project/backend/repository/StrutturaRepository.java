package com.project.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.backend.entità.Struttura;

public interface StrutturaRepository extends JpaRepository<Struttura, Long>{
    
}