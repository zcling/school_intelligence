package com.zhihui.demo.controller;

import com.zhihui.demo.model.Code;
import com.zhihui.demo.service.CodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/code")
public class CodeController {

    @Autowired
    CodeService codeService;

    @PostMapping(value = "/save")
    public void SaveCode(Code code){
        codeService.saveCode(code);
    }
}
