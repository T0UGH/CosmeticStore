<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ page import="pojo.Product" %>
        <%@ page import="pojo.User" %>
            <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
            <html>

            <head>
                <%@ page contentType="text/html;charset=UTF-8" language="java" %>
                    <%
        User user = (User)request.getAttribute("user");
        Product product =(Product)request.getAttribute("product");
    %>
                        <title>彩妆魔法</title>
                        <link href="images/css.css" rel="stylesheet" type="text/css">
                        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
                        <script src="images/jquery.min.js" type="text/javascript"></script>
            </head>

            <body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
                <TABLE border=0 cellSpacing=0 cellPadding=0 width=1000 align=center>
                    <TBODY>
                        <TR>
                            <TD height=7 background="images/bg3.gif"></TD>
                        </TR>
                    </TBODY>
                </TABLE>
                <TABLE border=0 cellSpacing=0 cellPadding=0 width=1000 align=center>
                    <TBODY>
                        <TR>
                            <TD>
                                <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                    <TBODY>
                                        <TR>
                                            <TD width="24%"><img src="images/top.jpg" width="1000" height="83"></TD>
                                        </TR>
                                    </TBODY>
                                </TABLE>
                            </TD>
                        </TR>
                        <TR>
                            <TD height=42 vAlign=bottom background=images/topbg.gif>
                                <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                    <TBODY>
                                        <TR>
                                            <TD width="28%" align=middle>
                                                <FONT color=#ffffff>
                                                    <SCRIPT>
                                                        today = new Date();
                                                        var day;
                                                        var date;
                                                        var hello;
                                                        var wel;
                                                        hour = new Date().getHours()
                                                        if (hour < 6) hello = '凌晨好'
                                                        else if (hour < 9) hello = '早上好'
                                                        else if (hour < 12) hello = '上午好'
                                                        else if (hour < 14) hello = '中午好'
                                                        else if (hour < 17) hello = '下午好'
                                                        else if (hour < 19) hello = '傍晚好'
                                                        else if (hour < 22) hello = '晚上好'
                                                        else {
                                                            hello = '夜里好'
                                                        }
                                                        if (today.getDay() == 0) day = '星期日'
                                                        else if (today.getDay() == 1) day = '星期一'
                                                        else if (today.getDay() == 2) day = '星期二'
                                                        else if (today.getDay() == 3) day = '星期三'
                                                        else if (today.getDay() == 4) day = '星期四'
                                                        else if (today.getDay() == 5) day = '星期五'
                                                        else if (today.getDay() == 6) day = '星期六'
                                                        date = (today.getMonth() + 1) + '月' + today.getDate() + '日';
                                                        document.write(hello);
                                                    </SCRIPT>
                                                    ！
                                                    <SCRIPT>
                                                        document.write(date + ' ' + day + ' ');
                                                    </SCRIPT>
                                                </FONT>
                                            </TD>
                                            <TD width="72%">
                                                <TABLE border=0 cellSpacing=0 cellPadding=0 width="80%">
                                                    <TBODY>
                                                        <TR>
                                                            <TD>
                                                                <A href="index">
                                                                    <IMG border=0 src="images/b1.gif">
                                                                </A>
                                                            </TD>
                                                            <TD>
                                                                <A href="multiProduct">
                                                                    <IMG border=0 src="images/b2.gif">
                                                                </A>
                                                            </TD>


                                                            <TD>
                                                                <A href="cart">
                                                                    <IMG border=0 src="images/b5.gif">
                                                                </A>
                                                            </TD>

                                                        </TR>
                                                    </TBODY>
                                                </TABLE>
                                            </TD>
                                        </TR>
                                    </TBODY>
                                </TABLE>
                            </TD>
                        </TR>
                    </TBODY>
                </TABLE>
                <script language="javascript" src="Wq_StranJF.js"></script>
                <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="39" valign="top">
                            <table width="100%" height="184" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td height="30" align="right" valign="top"></td>
                                </tr>
                                <tr>
                                    <td height="90">
                                        <div align="right"><img src="images/ttts.gif" width="26" height="110" /></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td width="190" style="BORDER-bottom:#FF67A0 1px solid;BORDER-left:#FF67A0 1px solid; BORDER-right:#FF67A0 1px solid;" valign="top">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        <table width="190" height="190" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td align="center" valign="middle" background="images/index_2.gif">
                                                    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
                                                    <TABLE border=0 cellSpacing=0 cellPadding=0 width="87%" align=center>
                                                        <TBODY>
                                                        </TBODY>
                                                        <FORM id=userlogin method=post action="userLogin">
                                                            <TBODY>
                                                                <TR>
                                                                    <TD class=unnamed2 height=10 colSpan=2>
                                                                        <DIV align=center>
                                                                            <% if(session.getAttribute("user") == null){%>
                                                                                顾客您好,购买商品请先登录
                                                                                <%}else{
                                                                        User user1 = (User) session.getAttribute("user");
                                                                        String user_id = user1.getUserId();
                                                                        String user_name = user1.getUser_name();
                                                                    %>
                                                                                    欢迎您,
                                                                                    <%=user_id%>(
                                                                                        <%=user_name%>)
                                                                                            <%}%>
                                                                        </DIV>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD class=unnamed2 width="35%">
                                                                        <DIV align=right>账　号：</DIV>
                                                                    </TD>
                                                                    <TD width="65%">
                                                                        <DIV align=left>
                                                                            <INPUT id=username2 class=form2 maxLength=18 size=12 name="user_id">
                                                                        </DIV>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD class=unnamed2>
                                                                        <DIV align=right>密　码：</DIV>
                                                                    </TD>
                                                                    <TD>
                                                                        <DIV align=left>
                                                                            <INPUT id=userpassword2 class=form2 maxLength=18 size=12 type=password name="password">
                                                                            <INPUT class=wenbenkuang value=class.htm?lx=news type=hidden name=linkaddress2>
                                                                            <BR>
                                                                        </DIV>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=10 colSpan=2></TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=17 colSpan=2>
                                                                        <DIV align=center>
                                                                            <INPUT type="submit" value="登录" border=0 src="images/login.gif" width=53 height=17>
                                                                            <a href="registerPage"><input type="button" value="注册" border="0"  width=53 height=17></a>
                                                                            <a href="myPage"><input type="button" value="我的" border="0"  width=53 height=17></a>

                                                                        </DIV>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=10 colSpan=2></TD>
                                                                </TR>
                                                        </FORM>
                                                    </TABLE>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img src="images/index_4.gif" width="190" height="12" alt="" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" style="BORDER-RIGHT: #e5e5e5 1px solid; BORDER-TOP: #e5e5e5 1px solid; BORDER-LEFT: #e5e5e5 1px solid; BORDER-BOTTOM: #e5e5e5 1px solid">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <style type="text/css">
                                                            <!-- .style1 {
                                                                color: #FF0000
                                                            }
                                                            
                                                            -->
                                                        </style>

                                                        <TABLE border=0 cellPadding=0 cellSpacing=0 width="178">
                                                            <TBODY>
                                                                <TR>
                                                                    <TD>
                                                                        <IMG height=50 src="images/searc.gif" width=180><br>
                                                                        <TABLE align=center border=0 cellPadding=1 cellSpacing=1 width="88%">
                                                                            <FORM method=get name=form2 action="searchProduct">
                                                                                <TBODY>
                                                                                    <TR>
                                                                                        <TD align=middle>关键字：
                                                                                            <INPUT class=wenbenkuang name="search_key" size=12 ;> </TD>
                                                                                    </TR>
                                                                                    <TR>
                                                                                        <TD align=middle height=38>
                                                                                            <INPUT class=go-wenbenkuang type="submit" value=查询>
                                                                                            </A>
                                                                                        </TD>
                                                                                    </TR>
                                                                            </FORM>

                                                                        </TABLE>
                                                                    </TD>
                                                                </TR>

                                                        </TABLE>
                                                    </td>
                                                </tr>
                                                </tbody>
                                        </table>
                                        <table width="184" border="0" align="center" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td><img src="images/carttop.gif" width="184" height="12" /></td>
                                            </tr>
                                            <tr>
                                                <td background="images/cartbg.gif" width="184">
                                                    <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" height="70">

                                                        <tr>
                                                            <td height="20">
                                                                <div align="center">
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td height="1"></td>
                                                        </tr>

                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><img src="images/cartbt.gif" width="184" height="12" /></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <style type="text/css">
                                            <!-- .style4 {
                                                color: #FF5C99
                                            }
                                            
                                            -->
                                        </style>
                                        <table width="190" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td>
                                                    <div align="center"><img src="images/left01.gif" width="183" height="43" /></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table width="100%" border="0" cellpadding="0" cellspacing="0">

                                                        <tr>
                                                            <td width="1%" height="24" valign="middle"></td>
                                                            <td width="99%" valign="middle">&nbsp;<img src="images/dian2.gif" width="14" height="15" />
                                                                <a href=product.jsp?id=352 title=此商品已成功销售27次>兰芝睡眠锁水面膜</a>
                                                                <font color="#DC143C">
                                                                    <font color="#DC143C">￥180</font>
                                                                </font>
                                                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0">
                                                                    <tr>
                                                                        <td height="1" background="images/blank.gif"></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td width="1%" height="24" valign="middle"></td>
                                                            <td width="99%" valign="middle">&nbsp;<img src="images/dian2.gif" width="14" height="15" />
                                                                <a href=product.jsp?id=346 title=此商品已成功销售18次>娇韵诗新生紧肤晚..</a>
                                                                <font color="#DC143C">
                                                                    <font color="#DC143C">￥550</font>
                                                                </font>
                                                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" background="image/lineDotGray.gif">
                                                                    <tr>
                                                                        <td height="1" background="images/blank.gif"></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td width="1%" height="24" valign="middle"></td>
                                                            <td width="99%" valign="middle">&nbsp;<img src="images/dian2.gif" width="14" height="15" />
                                                                <a href=product.jsp?id=353 title=此商品已成功销售17次>兰芝新装水润面霜</a>
                                                                <font color="#DC143C">
                                                                    <font color="#DC143C">￥245</font>
                                                                </font>
                                                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" background="image/lineDotGray.gif">
                                                                    <tr>
                                                                        <td height="1" background="images/blank.gif"></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td width="1%" height="24" valign="middle"></td>
                                                            <td width="99%" valign="middle">&nbsp;<img src="images/dian2.gif" width="14" height="15" />
                                                                <a href=product.jsp?id=351 title=此商品已成功销售16次>兰芝酸奶美白面膜</a>
                                                                <font color="#DC143C">
                                                                    <font color="#DC143C">￥119</font>
                                                                </font>
                                                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" background="image/lineDotGray.gif">
                                                                    <tr>
                                                                        <td height="1" background="images/blank.gif"></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td width="1%" height="24" valign="middle"></td>
                                                            <td width="99%" valign="middle">&nbsp;<img src="images/dian2.gif" width="14" height="15" />
                                                                <a href=product.jsp?id=348 title=此商品已成功销售11次>美白精华晚霜</a>
                                                                <font color="#DC143C">
                                                                    <font color="#DC143C">￥700</font>
                                                                </font>
                                                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" background="image/lineDotGray.gif">
                                                                    <tr>
                                                                        <td height="1" background="images/blank.gif"></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td width="1%" height="24" valign="middle"></td>
                                                            <td width="99%" valign="middle">&nbsp;<img src="images/dian2.gif" width="14" height="15" />
                                                                <a href=product.jsp?id=337 title=此商品已成功销售10次>雅顿时空草本胶囊</a>
                                                                <font color="#DC143C">
                                                                    <font color="#DC143C">￥420</font>
                                                                </font>
                                                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" background="image/lineDotGray.gif">
                                                                    <tr>
                                                                        <td height="1" background="images/blank.gif"></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td width="1%" height="24" valign="middle"></td>
                                                            <td width="99%" valign="middle">&nbsp;<img src="images/dian2.gif" width="14" height="15" />
                                                                <a href=product.jsp?id=343 title=此商品已成功销售8次>冰冻滋润修护唇膏</a>
                                                                <font color="#DC143C">
                                                                    <font color="#DC143C">￥48</font>
                                                                </font>
                                                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" background="image/lineDotGray.gif">
                                                                    <tr>
                                                                        <td height="1" background="images/blank.gif"></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td width="1%" height="24" valign="middle"></td>
                                                            <td width="99%" valign="middle">&nbsp;<img src="images/dian2.gif" width="14" height="15" />
                                                                <a href=product.jsp?id=333 title=此商品已成功销售7次>尿素手霜</a>
                                                                <font color="#DC143C">
                                                                    <font color="#DC143C">￥90</font>
                                                                </font>
                                                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" background="image/lineDotGray.gif">
                                                                    <tr>
                                                                        <td height="1" background="images/blank.gif"></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td width="1%" height="24" valign="middle"></td>
                                                            <td width="99%" valign="middle">&nbsp;<img src="images/dian2.gif" width="14" height="15" />
                                                                <a href=product.jsp?id=349 title=此商品已成功销售7次>草莓酸奶面膜</a>
                                                                <font color="#DC143C">
                                                                    <font color="#DC143C">￥90</font>
                                                                </font>
                                                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" background="image/lineDotGray.gif">
                                                                    <tr>
                                                                        <td height="1" background="images/blank.gif"></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td width="1%" height="24" valign="middle"></td>
                                                            <td width="99%" valign="middle">&nbsp;<img src="images/dian2.gif" width="14" height="15" />
                                                                <a href=product.jsp?id=354 title=此商品已成功销售7次>柔丝深层滋润霜</a>
                                                                <font color="#DC143C">
                                                                    <font color="#DC143C">￥78</font>
                                                                </font>
                                                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" background="image/lineDotGray.gif">
                                                                    <tr>
                                                                        <td height="1" background="images/blank.gif"></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="5"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div align="center"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="5"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div align="center"></div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td valign="top">
                            <table width="100%" height="41" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td height="28" background="imagespdbg01.gif">
                                        <div align="center"><span class="table-zuo">
          
        </span></div>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=index>商城首页</a> >></td>
                                </tr>

                                <tr>
                                    <td>
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="400"><br>
                                                    <table width=300 height=300border=0 align="center" cellpadding=0 cellspacing=0>
                                                        <tbody>
                                                            <tr>
                                                                <td align=center>
                                                                    <div align="center">

                                                                        <img src="<%=product.getProduct_img()%>" width=300 border=0 alt="商品名称：兰芝新装水润面霜" height="300">
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                                <td width="8" rowspan="2" background="images/p_bg01.gif"></td>
                                                <td width="462" rowspan="2">
                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td height="25" colspan="2" align="center">&nbsp;
                                                                <font color="#ff6600" size="3"><strong><%=product.getProduct_name()%></strong></font>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="28%">&nbsp;<img src="images/orange-bullet.gif" height="7" width="9"> 商品编号：</td>
                                                            <td width="72%" height="22">
                                                                <%=product.getProduct_id()%>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;<img src="images/orange-bullet.gif" height="7" width="9"> 商品规格：</td>
                                                            <td height="22">
                                                                <%=product.getProduct_standard()%>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;<img src="images/orange-bullet.gif" height="7" width="9"> 商品库存：</td>
                                                            <td height="22">
                                                                <%=product.getProduct_remain()%>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;<img src="images/orange-bullet.gif" height="7" width="9"> 商品尺码：</td>
                                                            <td height="22">500ml</td>

                                                            <tr>
                                                                <td colspan="2">
                                                                    <table width="100%" height="60" border="0" cellpadding="0" cellspacing="0">
                                                                        <tr>
                                                                            <td height="8" colspan="2" background="images/p_bg02.gif"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td width="24%" height="13">
                                                                                <div align="center">市场价：</div>
                                                                            </td>
                                                                            <td width="76%"><s>￥<%=product.getProduct_price()%>元</s></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td height="2" colspan="2" background="images/p_bg03.gif"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td height="2" colspan="2" style=" BORDER-top:#DD0000 2px solid;">
                                                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                                    <tr>
                                                                                        <td height="10"></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <% if (user != null){%>
                                                                                            <button id="buy" data-product-id="<%=product.getProduct_id()%>">加入购物车</button>
                                                                                            <script type="text/javascript">
                                                                                                $("#buy").click(function() {
                                                                                                    var product_id = $(this).attr("data-product-id");
                                                                                                    $.post("addCart", {
                                                                                                        product_id: product_id
                                                                                                    }, function(data, status) {
                                                                                                        if (data.code == 1) {
                                                                                                            alert("添加成功");
                                                                                                        } else {
                                                                                                            alert("添加失败，请先登录")
                                                                                                        }
                                                                                                    }, "json");
                                                                                                });
                                                                                            </script>
                                                                                            <%}else{%>
                                                                                                <button id="buy" data-product-id="<%=product.getProduct_id()%>">加入购物车</button>
                                                                                                <script type="text/javascript">
                                                                                                    $("#buy").click(function() {
                                                                                                        alert("请先登录");
                                                                                                    });
                                                                                                </script>
                                                                                                <%}%>

                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>

                                                            </tr>
                                                    </table>
                                                </td>
                                                <td width="16" rowspan="2">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="top">
                                                </tr>

                                        </table>
                                        </td>
                                        </tr>
                                        <tr>

                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                            </table>
                            </td>
                            <td width="68" valign="top"><img name="d" src="" width="69" height="0" alt=""></td>
                            </tr>
                </table>
                <TABLE border=0 cellSpacing=0 cellPadding=0 width=1000 align=center>
                    <TBODY>
                        <TR>
                            <TD background=images/footbg1.gif>
                                <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                    <TBODY>
                                        <TR>
                                            <TD height=30 colSpan=3>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <FONT color=#eae9e9>友情链接:</FONT>
                                            </TD>
                                        </TR>
                                        <TR borderColor=#cccccc>
                                            <TD rowSpan=2 width="23%" align=middle>
                                                <A href="http://127.0.0.1/">
                                                    <IMG border=0 src="images/logo.gif">
                                                </A>
                                            </TD>
                                            <TD width="51%">
                                                <A href="index">购物首页</A> | 关于我们 | 联系我们 | 订单查询 | 付款方式 | 留言/建议/投诉</TD>
                                            <TD rowSpan=2 width="26%">
                                                <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" align=right>
                                                    <TBODY>
                                                        <TR>

                                                        </TR>
                                                        <TR>
                                                            <TD colSpan=3>&nbsp;网站备案:
                                                                <A href="http://www.miibeian.gov.cn/" target=_blank>粤ICP备06128454号</A>
                                                            </TD>
                                                        </TR>
                                                    </TBODY>
                                                </TABLE>
                                            </TD>
                                        </TR>
                                        <TR borderColor=#cccccc>
                                            <TD vAlign=top>　客服邮箱：
                                                <A href="mailto:webmaster@wrtx.cn">webmaster@wrtx.cn</A>　客服电话：0754-34700400,34506590<br> 　邮政编码：510000 公司地址：汕头市 QQ：
                                                <SPAN class=style11>123456789<BR>
                　Copyright &copy; 2019 彩妆魔法司 All 
                Rights Reserved.</SPAN>
                                            </TD>
                                        </TR>
                                    </TBODY>
                                </TABLE>
                            </TD>
                        </TR>
                    </TBODY>
                </TABLE>
            </body>

            </html>