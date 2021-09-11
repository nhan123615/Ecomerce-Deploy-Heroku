package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
/**
 * author Nhanle
 * */
@Entity
@Table(name = "brands",schema = "public")
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Brand {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;

    private String name;
}
