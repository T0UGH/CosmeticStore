<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>彩妆商城管理员系统</title>
    <link href="src/css/style.css" rel="stylesheet" type="text/css">
    <script type="javascript" src="src/js/jquery.min.js"></script>
    <script src="src/js/jquery.min.js" type="text/javascript"></script>
    <script src="src/js/uploadImg.js" type="text/javascript"></script>
</head>
<body>
<div class="header">
    <div class="header03"></div>
    <div class="header01"></div>
    <div class="header02">彩妆商城管理员系统</div>
</div>
<div class="left" id="LeftBox">
    <div class="left01">
        <div class="left01_right"></div>
        <div class="left01_left"></div>
        <div class="left01_c">超级管理员：admin</div>
    </div>
    <div class="left02">
        <div class="left02top">
            <div class="left02top_right"></div>
            <div class="left02top_left"></div>
            <div class="left02top_c">用户信息</div>
        </div>
        <div class="left02down">
            <div class="left02down01">
                <a href="manageUser">
                    <div class="left02down01_img"></div>
                    管理用户
                </a>
            </div>
        </div>
    </div>
    <div class="left02">
        <div class="left02top">
            <div class="left02top_right"></div>
            <div class="left02top_left"></div>
            <div class="left02top_c">商品信息</div>
        </div>
        <div class="left02down">
            <div class="left02down01">
                <a href="insertProductPage">
                    <div class="left02down01_img"></div>
                    新增商品
                </a>
            </div>
        </div>
        <div class="left02down">
            <div class="left02down01">
                <a href="manageProduct">
                    <div class="left02down01_img"></div>
                    管理商品
                </a>
            </div>
        </div>
    </div>
    <div class="left02">
        <div class="left02top">
            <div class="left02top_right"></div>
            <div class="left02top_left"></div>
            <div class="left02top_c">订单信息</div>
        </div>
        <div class="left02down">
            <div class="left02down01">
                <a href="manageOrder">
                    <div class="left02down01_img"></div>
                    管理订单
                </a>
            </div>
        </div>
    </div>
    <div class="left01">
        <div class="left03_right"></div>
        <div class="left01_left"></div>
        <div class="left03_c">安全退出</div>
    </div>
</div>
    <div class="rrcc" id="RightBox">
        <form action="insertProduct" method="post">
        <div class="right">
            <div class="row">
                商品名称:<input type="text" name="product_name"/>
            </div>
            <div class="row">
                商品规格:<input type="text" name="product_standard"/>
            </div>
            <div class="row">
                商品库存:<input type="text" name="product_remain"/>
            </div>
            <div class="row">
                商品价格:<input type="text" name="product_price"/>
            </div>
            <input type="hidden" name="product_img" id="img_url" value="">
            <div class="row">
                <p>商品图片:
                    <input type="file" onchange="setImg(this)" accept="image/jpg,image/jpeg,image/png" name="file" id="inputImage" />
                </p>
                <div id="test-image-preview">
                    <img src="" id="img" width="200px" height="200px" />
                </div>
            </div>
            <div class="row">
                <input type="submit" value="创建">
            </div>
        </div>
        </form>
    </div>
</body>

</html>