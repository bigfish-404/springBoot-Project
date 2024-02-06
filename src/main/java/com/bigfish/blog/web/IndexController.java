package com.bigfish.blog.web;

import com.bigfish.blog.po.Input;
import com.bigfish.blog.service.IndexService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collections;
import java.util.List;
import java.util.Optional;


@Controller
@RequestMapping
public class IndexController {

    @Autowired
    private  IndexService indexService;

    @GetMapping("/index")
    public String indexPage(Model model){
        Optional<List<Input>> articlesList = indexService.getAllInput();

        if (articlesList != null && !articlesList.isEmpty()) {
            model.addAttribute("articles", articlesList);
        } else {
        }

        return "index";
    }


    @GetMapping ("/type")
    public String typePage() {
        return "type";
    }

    @GetMapping ("/input")
    public String inputPage() {
        return "input";
    }



}
