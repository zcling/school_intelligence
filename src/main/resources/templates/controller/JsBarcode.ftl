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
                        <form id="form" class="layui-form" action="" method="post" enctype="multipart/form-data">
                            <input hidden name="imgType" type="text" value="0"/>
                            <div class="layui-form-item">
                                <label class="layui-form-label">条码内容</label>
                                <div class="layui-input-inline">
                                    <input type="text" required lay-verify="required"
                                           placeholder="请输入内容" class="layui-input"
                                           id="text" name="imgName">
                                </div>
                                <div class="layui-form-mid layui-word-aux">请输入数字或英文</div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-input-block">
                                    <button class="layui-btn" id="sumbit">生成</button>
                                    <button class="layui-btn layui-btn-primary" id="reset">重置</button>
                                    <button class="layui-btn layui-btn-normal" lay-submit="" lay-filter="formDemo">保存
                                    </button>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-input-block">
                                    <canvas id="barcode"></canvas>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript">
    layui.use(['element', 'layer', 'form'], function () {
        var element = layui.element,
            form = layui.form,
            layer = layui.layer;

        //------------------图形码区域------------------------------

        //生成条码
        $('#sumbit').on('click', function () {

            if ($('#text').val() === "" || $('#text').val() == null) {
                layer.msg("内容为空")
            } else {
                JsBarcode("#barcode", $('#text').val());
            }
        });
        $('#reset').on('click', function () {
            $('#text').val("");
            window.location.reload();
        });

        //--------------------表单区域-------------------------

        //渲染表单
        form.render();
        //监听提交
        form.on('submit(formDemo)', function (data) {
            var formData = new FormData($('#form')[0]);//文件上传用formData，获取form表单的数据
            $.ajax({
                type: "post",
                url: "/News/insert",
                dateType: "json",
                data: formData,
                processData: false,
                contentType: false,
                success: function () {
                    layer.msg("保存成功", {icon: 1});
                },
                error: function () {
                }
            });
            return false;
        })
    });

</script>
</html>
