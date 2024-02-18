package com.bigfish.blog.dao;

import com.bigfish.blog.po.Input;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface BlogRepository extends JpaRepository<Input,Long> {
    Optional<Input> findById(Integer id);
}
