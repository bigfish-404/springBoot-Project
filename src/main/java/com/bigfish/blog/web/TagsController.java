package com.bigfish.blog.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/tags")
public class TagsController {

    @GetMapping
    public String tagsPage(){
        return "tags";
    }
}
