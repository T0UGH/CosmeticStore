<%@ page import="pojo.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 12433
  Date: 2019/5/12
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<User> userList=(List<User>)request.getAttribute("userList");
%>
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
    <div class="right" id="li010">
        <div class="row">
            <table border="1" cellspacing="0" style="font-size: 14px">
                <tr>
                    <th>用户id</th>
                    <th>密码</th>
                    <th>是否违规</th>
                    <th>用户姓名</th>
                    <th>用户地址</th>
                    <th>联系方式</th>
                    <th>操作</th>
                </tr>

                <%for(User user:userList){%>
                <tr>
                    <form action="modifyUser" method="post">
                        <th><input type="text" size="10" name="user_id" readonly="readonly" value="<%=user.getUserId()%>" /></th>
                        <td><input type="text" size="10" name="password" value="<%=user.getPassword()%>" /></td>
                        <td><input type="text" size="10" name="is_banned" value="<%=user.isIs_banned()%>" readonly="readonly" /></td>
                        <td><input type="text" size="10" name="user_name" value="<%=user.getUser_name()%>" /></td>
                        <td><input type="text" size="10" name="user_address" value="<%=user.getUser_address()%>" /></td>
                        <td><input type="text" size="10" name="user_tel" value="<%=user.getUser_tel()%>" /></td>
                        <td><input type="submit" value="修改" /></td>
                    </form>
                </tr>
                <%}%>

            </table>
        </div>
    </div>
</div>
</body>
</html>
