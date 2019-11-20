package com.zhihui.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexContrller {

    @RequestMapping("/")
    public String index() {
        return "admin/login";
    }

    @RequestMapping("/master")
    public String master(){
        return "controller/master";
    }

}
