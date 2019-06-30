<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>彩妆商城管理员系统</title>
    <link href="src/css/style.css" rel="stylesheet" type="text/css">
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
                    修改用户
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
    <div class="left01">
        <div class="left03_right"></div>
        <div class="left01_left"></div>
        <div class="left03_c">安全退出</div>
    </div>

</div>
</body>
</html>
