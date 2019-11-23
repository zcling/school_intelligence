layui.use(['element', 'layer'], function () {
    var element = layui.element,
        layer = layui.layer;

    //------------------图形码区域------------------------------

    //生成条码
    $('#sumbit').on('click', function () {
        if ($('#text').val() === "" || $('#text').val() == null) {
            layer.msg("内容为空")
        } else {
            JsBarcode("#barcode", $('#text').val());
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
            layer.msg("未生成条码")
        } else {
            var canvas = $('#barcode').get(0);
            var a = document.createElement("a");
            a.href = canvas.toDataURL("image/jpg");
            a.download = Date.parse(new Date()) + ".jpg";
            a.click();
        }
    });
});
