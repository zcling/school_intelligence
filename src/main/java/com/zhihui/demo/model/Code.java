package com.zhihui.demo.model;

import lombok.Data;

@Data
public class Code {
    private Integer id;
    private String imgPath;
    private String imgName;
    private int imgType;
    private long create_id;
    private long member_id;
    private String create_time;
    private String member_time;
}
