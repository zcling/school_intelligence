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
<script type="text/javascript">
    layui.use(['element', 'layer'], function () {
        var element = layui.element,
            layer = layui.layer;

        //生成二维码
        $('#sumbit').on('click', function () {
            if ($('#text').val() === "" || $('#text').val() == null) {
                layer.msg("内容为空")
            } else {
                jQuery('#qrcode').qrcode($('#text').val());
                $('#bit').val("1")
            }
        });
        $('#reset').on('click', function () {
            $('#text').val("");
            $('#bit').val("0");
            window.location.reload();
        });
        $('#save').on('click', function () {
            console.log($('#bit').val());
            if ($('#bit').val() === '0' || $('#bit').val() === '') {
                layer.msg("未生成二维码")
            } else {
                var qrcode = jQuery('#qrcode1').qrcode($('#text').val()).hide();
                var canvas = qrcode.find('canvas').get(0);
                var a = document.createElement("a");
                a.href = canvas.toDataURL("image/jpg");
                a.download = Date.parse(new Date()) + ".jpg";
                a.click();
            }
        });


        //中文转码，防止输入中文内容，扫描出乱码
        function utf16to8(str) {
            var out, i, len, c;
            out = "";
            len = str.length;
            for (i = 0; i < len; i++) {
                c = str.charCodeAt(i);
                if ((c >= 0x0001) && (c <= 0x007F)) {
                    out += str.charAt(i);
                } else if (c > 0x07FF) {
                    out += String.fromCharCode(0xE0 | ((c >> 12) & 0x0F));
                    out += String.fromCharCode(0x80 | ((c >> 6) & 0x3F));
                    out += String.fromCharCode(0x80 | ((c >> 0) & 0x3F));
                } else {
                    out += String.fromCharCode(0xC0 | ((c >> 6) & 0x1F));
                    out += String.fromCharCode(0x80 | ((c >> 0) & 0x3F));
                }
            }
            return out;
        }

    });


</script>
</html>
