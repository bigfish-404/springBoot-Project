package com.bigfish.blog.web;

import com.bigfish.blog.po.Input;
import com.bigfish.blog.service.BlogService;
import jakarta.persistence.criteria.CriteriaBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    private BlogService blogService;

    @GetMapping
    public String getBlog(Model model, @RequestParam("id") Integer id){

        Optional<Input> articleMessage = blogService.article(id);

        if (articleMessage != null && !articleMessage.isEmpty()) {
            model.addAttribute("articleMessage", articleMessage);
        } else {
        }
        return "blog";
    }
}
