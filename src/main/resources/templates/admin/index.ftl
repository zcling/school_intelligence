<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>智慧校园web后台管理</title>
    <!--  引入jquery  -->
    <script src="../../static/js/jquery.min.js"></script>
    <!-- 引入样式 -->
    <link rel="stylesheet" href="/static/layui-v2.5.5/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/static/css/index.css" media="all">
    <!-- 引入组件库 -->
    <script src="/static/layui-v2.5.5/layui/layui.js" charset="UTF-8"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <input id="hide" hidden type="text"/>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <div class="layui-header">
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="" class="layui-nav-img"/>
                    <span style="color: #009688;">索隆</span>
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" id="suopin"><i
                                    class="layui-icon layui-icon-password"></i>&nbsp;&nbsp;锁屏</a>
                    </dd>
                    <dd><a href="/"><i class="layui-icon layui-icon-delete"></i>&nbsp;&nbsp;注销</a>
                    </dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item">
                <a href="javascript:;" class="kit-side-fold" title="菜单缩放"><i
                            class="layui-icon layui-icon-shrink-right"></i></a>
            </li>
            <li class="layui-nav-item">
                <a href="/master" target="demo" title="控制台"><i class="layui-icon layui-icon-console"></i></a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;" title="刷新" class="kit-side-refresh"><i class="layui-icon layui-icon-refresh"></i></a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;" title="全屏" class="kit-side-quan"><i
                            class="layui-icon layui-icon-layer"></i></a>
            </li>
        </ul>
    </div>

    <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <div title="进入网站首页" class="logo">
                    <a href="http://www.qm950.com/" target="_blank"><span>智慧校园web</span></a>
                </div>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;"><i class="layui-icon layui-icon-engine"></i>
                        &nbsp;<span>设备操作</span></a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">
                                &nbsp;<span>风速</span></a>
                        </dd>
                        <dd><a href="javascript:;" target="demo">
                                &nbsp;<span>风向</span></a>
                        </dd>
                        <dd><a href="javascript:;" target="demo">
                                &nbsp;<span>温湿度</span></a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;"><i class="layui-icon layui-icon-video"></i>
                        &nbsp;<span>视频监控</span></a>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;"><i class="layui-icon layui-icon-cellphone"></i>
                        &nbsp;<span>条码操作</span></a>
                    <dl class="layui-nav-child">
                        <dd><a href="/code" target="demo">
                                &nbsp;<span>二维码</span></a>
                        </dd>
                        <dd><a href="/barcode" target="demo">
                                &nbsp;<span>条码</span></a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;"><i class="layui-icon layui-icon-set-fill"></i>
                        &nbsp;<span>系统设置</span></a>
                    <dl class="layui-nav-child">
                        <dd><a href="" target="demo">
                                &nbsp;<span>系统信息</span></a>
                        </dd>
                        <dd><a href="" target="demo">
                                &nbsp;<span>网站网络设置</span></a>
                        </dd>
                        <dd><a href="" target="demo">
                                &nbsp;<span>界面设置</span></a>
                        </dd>
                        <dd><a href="" target="demo">
                                &nbsp;<span>实时监控设置</span></a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;"><i class="layui-icon layui-icon-survey"></i>
                        &nbsp;<span>系统帮助</span></a>
                </li>
            </ul>
        </div>
    </div>

    <#--  主体内容  -->
    <div class="layui-body">
        <iframe name="demo" src="/master" frameborder="0" id="iframeid" height="99%" width="100%"></iframe>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © 使用的layui前端框架 - 底部固定区域
    </div>
    <#-- 锁屏   -->
    <div id="suobox">
        <img src="">
        <p></p>
        <input id="password" class="layui-input" type="password" placeholder="请输入密码"
               style="background-color: #009688;color: white;display:block;width: 60%;margin-left: 30px;margin-top: 20px;"/>
        <button id="jiesuo" type="button" class="layui-btn layui-btn-sm"
                style="float: right;margin-top: -35px;margin-right: 25px;">确定
        </button>
    </div>
</div>
</body>
<script src="/static/js/demo/index.js" charset="UTF-8"></script>
</html>
