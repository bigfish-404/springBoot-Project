package com.bigfish.blog.service;

import com.bigfish.blog.dao.InputRepository;
import com.bigfish.blog.po.Input;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InputServiceImpl implements InputService {

    @Autowired
    private InputRepository inputRepository;

    @Override
    public void saveInput(Input input) {
        inputRepository.save(input);
    }
}
