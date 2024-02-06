package com.bigfish.blog.service;

import com.bigfish.blog.dao.IndexRepository;
import com.bigfish.blog.po.Input;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class IndexServiceImpl implements IndexService {

    @Autowired
    private IndexRepository indexRepository;

    @Override
    public Optional<List<Input>> getAllInput() {
        List<Input> allIndex = new ArrayList<>();

        if (indexRepository.count() != 0) {
            Long totalCount = indexRepository.count();
            Integer id = totalCount.intValue();

            for (int j = id; j > 0; j--) {
                Optional<Input> inputOptional = indexRepository.findById(j);
                inputOptional.ifPresent(allIndex::add);
            }

        }
        return Optional.of(allIndex);

    }
}

