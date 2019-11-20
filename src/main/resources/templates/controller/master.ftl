<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>控制台</title>
    <script src="/static/js/jquery.min.js"></script>
    <!-- 引入样式 -->
    <link rel="stylesheet" href="/static/layui-v2.5.5/layui/css/layui.css" media="all">
    <!-- 引入组件库 -->
    <script src="/static/layui-v2.5.5/layui/layui.js" charset="UTF-8"></script>
    <style>
        .layui-col-xs6 {
            background-color: #e2e2e2;
            height: 80px;
            line-height: 35px;
            margin: 12px;
        }

        .layui-col-xs6 h4 {
            color: #4d4d4d;
        }

        .layui-col-xs6 p {
            font-size: 30px;
            color: #5FB878;
        }

        .layui-col-xs6:hover {
            background-color: #cfcfcf;
        }
    </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div style="padding: 20px 20px; background-color: #F2F2F2;">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md4">
                <div class="layui-card">
                    <div class="layui-card-header">待办事项</div>
                    <div class="layui-card-body">
                        <ul class="layui-row layui-col-space10 layui-this">
                            <li class="layui-col-xs6">
                                <a href="/Leave/Leave">
                                    <h4>待审留言</h4>
                                    <p>22</p>
                                </a>
                            </li>
                            <li class="layui-col-xs6">
                                <h4>待审简历</h4>
                                <p>66</p>
                            </li>
                            <li class="layui-col-xs6">
                                <h4>待审留言</h4>
                                <p>66</p>
                            </li>
                            <li class="layui-col-xs6">
                                <h4>待审留言</h4>
                                <p>66</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="layui-col-md4">
                <div class="layui-card">
                    <div class="layui-card-header">快捷方式</div>
                    <div class="layui-card-body">
                        <ul class="layui-row layui-col-space10 layui-this">
                            <li class="layui-col-xs6">
                                <i class=""></i>
                            </li>
                            <li class="layui-col-xs6">
                                <h4>待审留言</h4>
                                <p>66</p>
                            </li>
                            <li class="layui-col-xs6">
                                <h4>待审留言</h4>
                                <p>66</p>
                            </li>
                            <li class="layui-col-xs6">
                                <h4>待审留言</h4>
                                <p>66</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="layui-col-md4">
                <div class="layui-card">
                    <div class="layui-card-header">实时风速检测</div>
                    <div class="layui-card-body">
                        <ul class="layui-row layui-col-space10 layui-this">
                            <li class="layui-col-xs6">
                                <h4>待审留言</h4>
                                <p>66</p>
                            </li>
                            <li class="layui-col-xs6">
                                <h4>待审留言</h4>
                                <p>66</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="layui-col-md8">
                <div class="layui-card">
                    <div class="layui-card-header">视频监控</div>
                    <div class="layui-card-body">
                        卡片式面板面板通常用于非白色背景色的主体内<br>
                        从而映衬出边框投影
                    </div>
                </div>
            </div>
            <div class="layui-col-md4">
                <div class="layui-card">
                    <div class="layui-card-header">条码</div>
                    <div class="layui-card-body">
                        卡片式面板面板通常用于非白色背景色的主体内<br>
                        从而映衬出边框投影
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    layui.use(['element', 'layer'], function () {
        var element = layui.element,
            layer = layui.layer;
    })
</script>
</html>
