package com.zhihui.demo.service.impl;

import com.zhihui.demo.dao.CodeDAO;
import com.zhihui.demo.model.Code;
import com.zhihui.demo.service.CodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {

    @Autowired
    CodeDAO codeDAO;

    @Override
    public long saveCode(Code code) {
        return codeDAO.saveCode(code);
    }
}
