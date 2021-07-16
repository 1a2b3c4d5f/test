package com.chun.myspringboot.controller;

import com.chun.myspringboot.pojo.Notice;
import com.chun.myspringboot.pojo.Sentence;
import com.chun.myspringboot.service.Impl.NoticeServiceImpl;
import com.chun.myspringboot.service.Impl.SentenceServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class SentenceController {
    @Autowired
    SentenceServiceImpl sentenceService;
    //去历史公告页面
//    @RequestMapping("/toViewNotice")
//    public String toViewNotice(Model model){
//        List<Sentence> Sentence = sentenceService.queryAllSentence();
//        model.addAttribute("sentence",Sentence);
//        return "user/notice/select-notice";
//    }

    //具体查看公告
    @RequestMapping("/viewNotice/{sentenceId}")
    public String ViewSentence(@PathVariable("SentenceId")Integer SentenceId, Model model){

        Sentence sentence = sentenceService.queryRandomSentence();
        model.addAttribute("sentence",sentence);
        return "user/main";
    }
}
