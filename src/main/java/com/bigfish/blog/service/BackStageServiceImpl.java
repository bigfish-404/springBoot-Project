package com.bigfish.blog.service;

import com.bigfish.blog.dao.BackstageRepository;
import com.bigfish.blog.po.Flag;
import com.bigfish.blog.po.Input;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class BackStageServiceImpl implements BackStageService {

    @Autowired
    private BackstageRepository backstageRepository;

    @Override
    public List<Integer> findIdByFlag(String string) {
        Optional<Flag> flags = backstageRepository.findByFlag(string);
        return flags.stream().map(Flag::getId).collect(Collectors.toList());

    }

    @Override
    public List<String> findTitleByFlag(String string) {
        Optional<Flag> flags = backstageRepository.findByFlag(string);
        return flags.stream().map(Flag::getTitle).collect(Collectors.toList());
    }

    @Override
    public Optional<List<Input>> getAllArticle() {
        List<Input> allArticle = new ArrayList<>();

        if (backstageRepository.count() != 0) {
            Long totalCount = backstageRepository.count();
            Integer id = totalCount.intValue();

            for (int j = 0; j <= id; j++) {
                Optional<Input> inputOptional = backstageRepository.findById(j);
                inputOptional.ifPresent(allArticle::add);
            }

        }
        return Optional.of(allArticle);
    }

    @Override
    public void deleteEntityById(Long id) {
        backstageRepository.deleteById(id);
    }
}
