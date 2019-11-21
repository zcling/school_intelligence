package com.zhihui.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexContrller {

    @GetMapping("/")
    public String index() {
        return "admin/login";
    }

    @GetMapping("/master")
    public String master(){
        return "controller/master";
    }

    @GetMapping("/code")
    public String code(){
        return "controller/QRcode";
    }

}
