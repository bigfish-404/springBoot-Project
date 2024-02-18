package com.bigfish.blog.web;

import com.bigfish.blog.po.Input;
import com.bigfish.blog.service.BackStageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/backstage")
public class BackstageController {

    @Autowired
    private BackStageService backStageService;

    @GetMapping
    public String getBackstage(Model model) {

        Optional<List<Input>> articlesListBackStage = backStageService.getAllArticle();

        if (articlesListBackStage != null && !articlesListBackStage.isEmpty()) {
            model.addAttribute("articlesListBackStage", articlesListBackStage);
        } else {
        }
        return "backstage";
    }

    @GetMapping("/original")
    public String getOriginal(
            Model model, @RequestParam("flagOriginal") String flagOriginal
    ) {
        String flag = null;
        if (flagOriginal.equals("オリジナル") ){
             flag = "オリジナル";
        }else if (flagOriginal.equals("Translate")){
        flag = "Translate";
        }

        List<Integer> idList = backStageService.findIdByFlag(flag);
        List<String> titleList = backStageService.findTitleByFlag(flag);
        if (idList != null && !idList.isEmpty()) {
            model.addAttribute("idList", idList);
            model.addAttribute("titleList",titleList);
        } else {
        }

        if (flagOriginal =="オリジナル"){
            return "original";
        }else if (flagOriginal =="Translate"){
            return "null";
        }else {
            return null;
        }
    }

    @GetMapping("/delete")
    public String deleteEntity(@RequestParam("id")  Integer id) {
        backStageService.deleteEntityById(Long.valueOf(id));
        return "redirect:/backstage";
    }
}
