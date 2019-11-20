<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport"/>
    <link rel="icon" type="image/x-icon" href="../../static/image/denglu.png"/>
    <title>注册</title>
    <!--  引入jquery  -->
    <script src="../../static/js/jquery.min.js"></script>
    <!-- 引入样式 -->
    <link rel="stylesheet" href="/static/layui-v2.5.5/layui/css/layui.css" media="all">
    <!-- 引入组件库 -->
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
        <h2 style="font-weight: bold;margin: 30px auto;text-align: center">注册</h2>
        <form class="layui-form" action="/insert" method="post">
            <div class="layui-form-item">
                <input type="tel" lay-verify="required|phone" name="phone" placeholder="手机"
                       autocomplete="off" lay-reqtext="手机号必填项"
                       class="layui-input">
            </div>
            <div class="layui-form-item">
                <div class="layui-row">
                    <div class="layui-col-xs8">
                        <input type="text" lay-verify="required" lay-reqtext="验证码必填项"
                               placeholder="验证码" class="layui-input">
                    </div>
                    <div class="layui-col-xs4">
                        <button class="layui-btn layui-btn-primary" style="margin-left: 20px;">获取验证码</button>
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <input type="password" name="password" lay-verify="required" lay-reqtext="密码必填项"
                       placeholder="密码" class="layui-input">
            </div>
            <div class="layui-form-item">
                <input type="password" lay-verify="required" lay-reqtext="密码必填项" name="pass"
                       placeholder="确认密码" class="layui-input">
            </div>
            <div class="layui-form-item">
                <input type="text" name="username" lay-verify="required" lay-reqtext="用户名必填项"
                       placeholder="用户名（登陆使用建议英文）"
                       class="layui-input">
            </div>
            <div class="layui-form-item">
                <button class="layui-btn layui-btn-fluid" lay-submit="" lay-filter="formDemo">注 册</button>
            </div>
            <div class="layui-form-item">
                <a href="/" style="color: #009f95;display: block;text-align: right;">已有账号登陆</a>
            </div>
        </form>
    </div>
</div>
</body>
<script>
    //----------------------表格区域-------------------------
    layui.use(['element', 'form'], function () {
        var $ = layui.$,
            form = layui.form,
            element = layui.element;

        //渲染表单
        form.render();

        //自定义验证规则
        form.verify({})
    });
</script>
</html>
