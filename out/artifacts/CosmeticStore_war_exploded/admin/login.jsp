<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

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
    <div class="container" style="margin-left: 40%">
        <form action="login" method="post">
            <div class="row">
                用户账号:<input type="text" name="user_id" />
            </div>
            <div class="row">
                用户密码:<input type="text" name="password" />
            </div>
            <div class="row">
                <input type="submit" value="登录" />
            </div>
        </form>
    </div>
</body>

</html>