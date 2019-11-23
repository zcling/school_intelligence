<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport"/>
    <link rel="icon" type="image/x-icon" href="../../static/image/denglu.png"/>
    <title>登录</title>
    <!--  引入jquery  -->
    <script src="../../static/js/jquery.min.js"></script>
    <!-- 引入样式 -->
    <link rel="stylesheet" href="/static/layui-v2.5.5/layui/css/layui.css" media="all">
    <!-- 引入组件库 -->
    <script src="/static/layui-v2.5.5/layui_exts/sliderVerify/sliderVerify.js"></script>
    <script src="/static/layui-v2.5.5/layui/layui.js" charset="UTF-8"></script>
    <style>
        body {
            background-color: #ebebeb;
        }

        #loginbox {
            margin: 200px auto;
            width: 400px;
            height: 400px;
        }

    </style>
</head>

<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div id="loginbox">
        <h2 style="font-weight: bold;margin: 30px auto;text-align: center">登录</h2>
        <form class="layui-form" action="" method="post">
            <div class="layui-form-item">
                <input type="text" name="username" lay-verify="required" lay-reqtext="用户名必填项" placeholder="用户名"
                       class="layui-input">
            </div>
            <div class="layui-form-item">
                <input type="password" name="password" lay-verify="required" lay-reqtext="密码必填项"
                       placeholder="密码" class="layui-input">
            </div>
            <div class="layui-form-item">
                <div id="slider"></div>
            </div>
            <div class="layui-form-item">
                <button class="layui-btn layui-btn-fluid" lay-submit="" lay-filter="formDemo">登 入</button>
            </div>
            <div class="layui-form-item" style="margin-right: 0;">
                <a href="/Register" style="color: #009f95;display: block;">注册账号</a>
            </div>
        </form>
    </div>
</div>
</body>
<script>
    //----------------------表格区域-------------------------
    layui.config({
        base: '/static/layui-v2.5.5/layui_exts/sliderVerify/'
    }).use(['sliderVerify', 'element', 'form'], function () {
        var $ = layui.$,
            form = layui.form,
            sliderVerify = layui.sliderVerify,
            element = layui.element;

        var slider = sliderVerify.render({
            elem: '#slider'
        });
        form.render();

        //监听提交
        form.on('submit(formDemo)', function (data) {
            console.log(data.field.username);
            if (slider.isOk()) {//用于表单验证是否已经滑动成功
                $.ajax({
                    type: "post",
                    url: "/User/loginUser",
                    dateType: "json",
                    data: data.field,
                    timeout: 1000,        //请求超时时间，毫秒
                    async: true,
                    success: function (result) {
                        if (result == "success") {
                            layer.msg("登陆成功", {icon: 1});
                            setTimeout(function () {
                                window.location.href = '/User/logSucess';
                            }, 1000)
                        } else {
                            layer.msg("用户名或密码错误！", {icon: 2});
                            setTimeout(function () {
                                window.location.reload();//更新表单
                            },2000)
                        }
                    },
                    error: function () {
                        layer.msg("登陆失败", {icon: 2});
                    }
                });
            } else {
                layer.msg("请先通过滑块验证");
            }
            return false;
        });
        //自定义验证规则
        form.verify({})
    });

    //防止页面后退
    history.pushState(null, null, document.URL);
    window.addEventListener('popstate', function () {
        history.pushState(null, null, document.URL);
    });
</script>
</html>
