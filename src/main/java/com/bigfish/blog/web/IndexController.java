package com.bigfish.blog.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

        @GetMapping("/")
        public String index(){
            int s = 1/0;
            return "index";
        }

}
