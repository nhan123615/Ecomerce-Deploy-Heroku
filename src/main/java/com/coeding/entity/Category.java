package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.persistence.*;
import java.util.Date;
/**
 * author Nhanle
 * */
@Entity
@Table(name = "categories",schema = "public")
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;

    private String name;
    private Date updated;
    private boolean enabled;


    @PrePersist
    void updated() {
        this.updated = new Date();
    }

}
