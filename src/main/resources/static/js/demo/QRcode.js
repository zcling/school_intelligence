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

