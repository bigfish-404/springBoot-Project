package com.bigfish.blog.service;

import com.bigfish.blog.po.Input;

import java.util.List;
import java.util.Optional;


public interface IndexService {
    
    Optional<List<Input>> getAllInput();
}
