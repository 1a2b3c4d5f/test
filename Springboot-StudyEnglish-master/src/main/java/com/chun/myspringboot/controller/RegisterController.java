package com.chun.myspringboot.controller;

import com.chun.myspringboot.pojo.User;
import com.chun.myspringboot.service.Impl.SendEmailImpl;
import com.chun.myspringboot.service.Impl.UserServiceImpl;
import com.chun.myspringboot.util.IDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {

    @Autowired
    private UserServiceImpl userService;

    @Autowired
    private SendEmailImpl sendEmail;


    //进行注册
    @RequestMapping("/register")
    public String register(User user,Model model){
        userService.addUser(user);
        System.out.println("增加成功");
        return "index";
    }
    //去忘记密码页面
    @RequestMapping("/toforget")
    public String toForget(){
        return "user/register/page-forget";
    }
}
