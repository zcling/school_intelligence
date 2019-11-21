<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>条码</title>
    <script src="/static/js/jquery.min.js"></script>
    <!-- 引入样式 -->
    <link rel="stylesheet" href="/static/layui-v2.5.5/layui/css/layui.css" media="all">
    <!-- 引入组件库 -->
    <script src="/static/js/JsBarcode.all.js" charset="UTF-8"></script>
    <script src="/static/layui-v2.5.5/layui/layui.js" charset="UTF-8"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div style="padding: 20px 20px; background-color: #F2F2F2;">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-header">条码操作</div>
                    <div class="layui-card-body">
                        <div class="layui-form-item">
                            <label class="layui-form-label">条码内容</label>
                            <div class="layui-input-inline">
                                <input type="text" required lay-verify="required"
                                       placeholder="请输入内容" class="layui-input"
                                       id="text">
                            </div>
                            <div class="layui-form-mid layui-word-aux">条码扫描出的内容</div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" id="sumbit">生成</button>
                                <button class="layui-btn layui-btn-primary" id="reset">重置</button>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <canvas id="barcode"></canvas>
                            </div>
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

        var barcode = document.getElementById("JsBarcode");

        //生成条码
        $('#sumbit').on('click', function () {

            if ($('#text').val() === "" || $('#text').val() == null) {
                barcode.style.display = 'none';
                layer.msg("内容为空")
            } else {
                JsBarcode("#barcode", $('#text').val());
                // barcode.style.display = "block";
            }
        });
        $('#reset').on('click', function () {
            $('#text').val("");
            barcode.style.display = "none";
        });
    });

</script>
</html>
