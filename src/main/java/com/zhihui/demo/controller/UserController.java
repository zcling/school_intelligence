package com.zhihui.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/User")
public class UserController {

    //登陆
    @PostMapping(value = "/loginUser")
    @ResponseBody
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password) {
        if (username.equals("admin")&&password.equals("12356")){
            System.out.println("欢迎管理员登陆成功");
            return "success";
        }else {
            return "500";
        }
    }

    //登陆成功后
    @GetMapping(value = "/logSucess")
    public String logSucess(){
        return "admin/index";
    }

}