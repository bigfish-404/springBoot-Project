package com.bigfish.blog.service;

import com.bigfish.blog.dao.BlogRepository;
import com.bigfish.blog.po.Input;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;


@Service
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogRepository blogRepository;

    @Override
    public Optional<Input> article(Integer id) {
        return blogRepository.findById(id);
    }
}
