package com.bigfish.blog.dao;

import com.bigfish.blog.po.Input;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;


public interface IndexRepository extends JpaRepository<Input,Integer> {
    @Override
    long count();

    Optional<Input> findById(Integer id);
}
