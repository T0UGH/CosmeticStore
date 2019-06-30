<%--suppress ALL --%>
<%@ page language="java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.List"%>
<%@page import="pojo.*" %>
    <%
	List<Product> products=(List<Product>)request.getAttribute("productList");
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
                                <th>产品编号</th>
                                <th>产品名称</th>
                                <th>产品规格</th>
                                <th>产品库存</th>
                                <th>产品价格</th>
                                <th>产品图片</th>
                                <th>操作一</th>
                                <th>操作二</th>
                            </tr>
                            <%for(Product product:products){%>
                            <tr>
                                <form action="modifyProduct" method="post">
                                    <th><input type="text" size="5" name="product_id" readonly="readonly" value="<%=product.getProduct_id()%>" /></th>
                                    <td><input type="text" name="product_name" value="<%=product.getProduct_name()%>" /></td>
                                    <td><input type="text" name="product_standard" value="<%=product.getProduct_standard()%>" /></td>
                                    <td><input type="text" size="10" name="product_remain" value="<%=product.getProduct_remain()%>" /></td>
                                    <td><input type="text" size="10" name="product_price" value="<%=product.getProduct_price()%>" /></td>
                                    <td><input type="text" size="10" name="product_img" value="<%=product.getProduct_img()%>" /></td>
                                    <td><input type="submit" value="修改"/></td>
                                    <td><input class="delete" type="button" value="删除" data-product-id="<%=product.getProduct_id()%>"/></td>
                                </form>
                            </tr>
                            <%}%>
                        </table>
                    </div>
                </div>
            </div>
        </body>
            <script type="text/javascript">
                $(".delete").click(function() {
                var product_id = $(this).attr("data-product-id");
                $.post("deleteProduct", {
                product_id: product_id
                }, function(data,status) {
                console.log(data);
                window.location.reload();
                }, "json");
                console.log(product_id);
                });
            </script>
        </html>