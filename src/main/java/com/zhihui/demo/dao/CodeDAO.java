package com.zhihui.demo.dao;

import com.zhihui.demo.model.Code;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CodeDAO {
    //保存图形码
    long saveCode(Code code);
}
