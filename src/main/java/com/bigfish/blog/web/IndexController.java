package com.bigfish.blog.web;

import com.bigfish.blog.NotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

        @GetMapping("/")
        public String index(){
            String blog = null;
            if (blog == null){
                throw new NotFoundException("no blog");
            }
            return "index";
        }

}
