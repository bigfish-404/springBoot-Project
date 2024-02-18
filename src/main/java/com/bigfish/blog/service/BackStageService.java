package com.bigfish.blog.service;

import com.bigfish.blog.po.Input;

import java.util.List;
import java.util.Optional;


public interface BackStageService {

    List<Integer> findIdByFlag(String string);
    List<String> findTitleByFlag(String string);

    Optional<List<Input>> getAllArticle();

    void deleteEntityById(Long id);
}
