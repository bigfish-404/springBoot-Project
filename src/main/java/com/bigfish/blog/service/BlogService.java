package com.bigfish.blog.service;

import com.bigfish.blog.po.Input;

import java.util.Optional;

public interface BlogService {
    Optional<Input> article(Integer id);
}
