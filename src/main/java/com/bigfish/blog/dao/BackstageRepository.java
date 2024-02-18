package com.bigfish.blog.dao;

import com.bigfish.blog.po.Flag;
import com.bigfish.blog.po.Input;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface BackstageRepository extends JpaRepository<Input,Long> {
    Optional<Flag> findByFlag(String string);

    @Override
    long count();

    Optional<Input> findById(Integer id);
    void deleteById(Long id);
}
