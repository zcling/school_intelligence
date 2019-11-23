package com.zhihui.demo.model;

import lombok.Data;

@Data
public class SystemInfo {
    private Integer id;
    private String cmsName; //网站名称
    private String version; //版本信息
    private String author; //开发者信息
    private String server; //服务器环境
    private String dataBase; //数据库版本
    private String userRights; //用户权限
    private String keywords; //默认关键字
    private String powerby; //版权信息
    private String description; //网站描述
    private String record; //网站备案号
}
