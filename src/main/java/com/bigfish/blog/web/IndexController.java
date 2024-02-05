package com.bigfish.blog.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping
public class IndexController {

    @GetMapping("/index")
    public String indexPage(){
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
