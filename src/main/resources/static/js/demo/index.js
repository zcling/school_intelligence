$(function () {
    //锁屏区域
    $('#jiesuo').click(function () {
        var str = $('#password').val();
        if (str === "123456") {
            //关闭弹框
            layer.closeAll();
            $("#password").val("");
        } else {
            layer.msg("密码错误或为空", {icon: 2});
            $("#password").val("");
        }
    });

    //进入页面全屏
    var isDonw = true;  //定义一个标志位
    $('.kit-side-quan').click(function () {
        //判断isDonw的状态
        if (isDonw) {//全屏
            var de = document.documentElement;
            if (de.requestFullscreen) {
                de.requestFullscreen();
            } else if (de.mozRequestFullScreen) {
                de.mozRequestFullScreen();
            } else if (de.webkitRequestFullScreen) {
                de.webkitRequestFullScreen();
            }
            //修改标志位
            isDonw = false;
        } else {//退出
            var de = document;
            if (de.exitFullscreen) {
                de.exitFullscreen();
            } else if (de.mozCancelFullScreen) {
                de.mozCancelFullScreen();
            } else if (de.webkitCancelFullScreen) {
                de.webkitCancelFullScreen();
            }
            //修改标志位
            isDonw = true;
        }
    });

    //侧边栏缩放区域
    var isShow = true;  //定义一个标志位
    $('.kit-side-fold').click(function () {
        //判断ishow的状态
        if (isShow) {//缩
            $('.kit-side-fold i').attr('class', 'layui-icon layui-icon-spread-left');
            $('.layui-side.layui-bg-black').width(0); //设置宽度
            $('.layui-layout-left').css('left', 0);  //修改图标的位置
            //将footer和body的宽度修改
            $('.layui-body').css('left', 0 + 'px');
            $('.layui-header').css('left', 0 + 'px');
            $('.layui-body').css('transition', '.5s all');
            $('.layui-layout-left').css('transition', '.5s all');
            $('.layui-side.layui-bg-black').css('transition', '.5s all');
            $('.layui-header').css('transition', '.5s all');
            //修改标志位
            isShow = false;
        } else {//放
            $('.kit-side-fold i').attr('class', 'layui-icon layui-icon-shrink-right');
            $('.layui-side.layui-bg-black').width(200);
            $('.layui-body').css('left', 200 + 'px');
            $('.layui-header').css('left', 200 + 'px');
            $('.layui-body').css('transition', '.5s all');
            $('.layui-header').css('transition', '.5s all');
            $('.layui-layout-left').css('transition', '.5s all');
            $('.layui-side.layui-bg-black').css('transition', '.5s all');
            isShow = true;
        }
    });

    //刷新页面
    $('.kit-side-refresh').click(function () {
        document.getElementById('iframeid').contentWindow.location.reload(true);
    });

});

//layui模块区域
layui.use(['element', 'layer'], function () {
    var $ = layui.jquery,
        layer = layui.layer,
        element = layui.element;

    //弹出锁定div
    $('#suopin').click(function () {
        layer.open({
            type: 1,
            shadeClose: false,
            title: "界面锁定",
            closeBtn: 0,
            area: ['350px', '200px'], //宽高
            shade: 0.7,
            skin: 'layui-layer-molv',
            anim: 6,
            move: false,
            resize: false,
            content: $('#suobox')  //调到新增页面
        });
    });
});