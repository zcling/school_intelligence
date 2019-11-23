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
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div style="padding: 20px 20px; background-color: #F2F2F2;">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md6">
                <div class="layui-card">
                    <div class="layui-card-header">天气预报</div>
                    <div class="layui-card-body">
                        <iframe src="http://i.tianqi.com/index.php?c=code&id=13&icon=1&num=5" frameborder="0" height="400px" width="100%" style="text-align: center;"></iframe>
                    </div>
                </div>
            </div>
            <div class="layui-col-md6">
                <div class="layui-card">
                    <div class="layui-card-header">环境监测</div>
                    <div class="layui-card-body">
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
    });
</script>
</html>
