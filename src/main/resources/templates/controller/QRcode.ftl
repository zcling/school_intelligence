<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>二维码</title>
    <script src="/static/js/jquery.min.js"></script>
    <!-- 引入样式 -->
    <link rel="stylesheet" href="/static/layui-v2.5.5/layui/css/layui.css" media="all">
    <!-- 引入组件库 -->
    <script src="/static/js/jquery.qrcode.min.js" charset="UTF-8"></script>
    <script src="/static/layui-v2.5.5/layui/layui.js" charset="UTF-8"></script>
    <style>
        #qrcode {
            margin: 30px auto;
        }
    </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div style="padding: 20px 20px; background-color: #F2F2F2;">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-header">二维码操作</div>
                    <div class="layui-card-body">
                        <div class="layui-form-item">
                            <label class="layui-form-label">二维码内容</label>
                            <div class="layui-input-inline">
                                <input type="text" required lay-verify="required"
                                       placeholder="请输入内容" class="layui-input"
                                       id="text">
                            </div>
                            <div class="layui-form-mid layui-word-aux">可输入任意内容</div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" id="sumbit">生成</button>
                                <button class="layui-btn layui-btn-primary" id="reset">重置</button>
                                <button class="layui-btn layui-btn-normal" id="save">保存
                                </button>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <div id="qrcode"></div>
                                <div id="qrcode1" hidden></div>
                                <input type="text" hidden id="bit"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript" src="/static/js/demo/QRcode.js"></script>
</html>
