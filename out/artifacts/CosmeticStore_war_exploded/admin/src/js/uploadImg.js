function setImg(obj) { //用于进行图片上传，返回地址
    var f = $(obj).val();
    if (f == null || f == undefined || f == '') {
        return false;
    }
    if (!/\.(?:png|jpg|bmp|gif|PNG|JPG|BMP|GIF)$/.test(f)) {
        $(obj).val('');
        return false;
    }
    var formData = new FormData();
    var file = obj.files[0]
    formData.append('smfile', file);
    console.log(formData.get("smfile"));
    $.ajax({
        type: "POST",
        url: "https://sm.ms/api/upload", //提交的地址
        data: formData,
        cache: false, //禁用缓存
        contentType: false, //不可缺//不懂
        processData: false, //不可缺//禁止自动转换
        dataType: "json",
        success: function(rep) {
            console.log(rep)
            if (rep.code == "success") {
                alert("上传成功")
                $("#img_url").attr("value", rep.data.url)
                $("#img").attr("src", rep.data.url); //显示图片
            } else {
                alert("上传失败");
                // $("#url").val("");
                $(obj).val('');
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            alert("上传失败，请检查网络后重试");
            // $("#url").val("");
            $(obj).val('');
        }
    });
}