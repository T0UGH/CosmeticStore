<%--suppress ALL --%>
<%@ page language="java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.List"%>
<%@page import="pojo.*" %>
<%
    List<Order> orderList=(List<Order>)request.getAttribute("orderList");
%>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html charset=UTF-8"/>
        <title>彩妆商城管理员系统</title>
        <link href="src/css/style.css" rel="stylesheet" type="text/css"/>
        <script src="src/js/jquery.min.js" type="text/javascript"></script>
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
                            <th>订单编号</th>
                            <th>商品数量</th>
                            <th>订单总价</th>
                            <th>订单用户</th>
                        </tr>
                        <%for(Order order:orderList){%>
                        <tr>
                            <th><%=order.getOrder_id()%></th>
                            <th><%=order.getTotalAmount()%></th>
                            <th><%=order.getTotalPrice()%></th>
                            <th><%=order.getUser_id()%></th>
                        </tr>
                        <%}%>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>