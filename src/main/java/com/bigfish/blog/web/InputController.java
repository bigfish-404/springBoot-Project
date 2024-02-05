package com.bigfish.blog.web;

import com.bigfish.blog.po.Input;
import com.bigfish.blog.service.InputService;
import com.bigfish.blog.service.InputServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Controller
@RequestMapping("/inputSubmit")
public class InputController {

    @Autowired
    private InputServiceImpl inputService;

    LocalDateTime currentTime = LocalDateTime.now();
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yy-MM-dd HH:mm:ss");
    String formattedTime = currentTime.format(formatter);

    @PostMapping
    public String saveInput(
            @RequestParam("flagValue") String flagValue,
            @RequestParam("title") String title,
            @RequestParam("content") String content,
            @RequestParam("indexPicture") String indexPicture,
            @RequestParam("comment") boolean comment)
    {
        Input input = new Input();
        input.setTitle(title);
        input.setContent(content);
        input.setFlag(flagValue);
        input.setFirstPicture(indexPicture);
        input.setCommentAble(comment);

        inputService.saveInput(input);
        return "index";
    }

}
