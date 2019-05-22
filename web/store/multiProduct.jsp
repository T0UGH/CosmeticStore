<%--suppress ALL --%>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@page import="pojo.*" %>
            <%@ page import="java.util.List" %>
                <%
    List<Product> products=(List<Product>)request.getAttribute("productList");
    int pageNum = (int)request.getAttribute("page_num");
    int productAmount = (int)request.getAttribute("product_amount");
    int pageAmount = (int)request.getAttribute("page_amount");
%>
                    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
                    <html>

                    <head>

                        <title>彩妆魔法--新品上架</title>
                        <link href="images/css.css" rel="stylesheet" type="text/css">
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
                                            <td height="30" align="right" valign="top"><img src="imagesjiao.gif" width="15" height="17"></td>
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
                                                                                User user = (User) session.getAttribute("user");
                                                                                String user_id = user.getUserId();
                                                                                String user_name = user.getUser_name();
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
                                                <table width="100%" border="0" cellpadding="0" cellspacing="0" style="BORDER-RIGHT: #e5e5e5 1px solid; BORDER-TOP: #e5e5e5 1px solid; BORDER-LEFT: #e5e5e5 1px solid; BORDER-BOTTOM: #e5e5e5 1px solid">
                                                    <tbody>
                                                        <tr>
                                                            <td height="28">
                                                                <div align="center"><img src="images/menutop.gif"></div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div align="center">

                                                                </div>
                                                                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                                    <tr>
                                                                        <td colspan="3" height="22" align="left">
                                                                            <font color="#FF6600"><img src="images/orange-bullet.gif" width="9" height="7" />
                                                                                <a href="class.htm?lx=big&amp;anid=62">
                                                                                    <font color="#FF4800"><strong>彩妆用品</strong></font>
                                                                                </a>
                                                                            </font>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=62&amp;nid=571">粉底/粉饼</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=62&amp;nid=572">胭脂/眼影</a></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=62&amp;nid=573">彩妆套装</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=62&amp;nid=574">唇线笔/卸妆</a></td>
                                                                    </tr>

                                                                </table>

                                                                </div>
                                                                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                                    <tr>
                                                                        <td colspan="3" height="22" align="left">
                                                                            <font color="#FF6600"><img src="images/orange-bullet.gif" width="9" height="7" />
                                                                                <a href="class.htm?lx=big&amp;anid=63">
                                                                                    <font color="#FF4800"><strong>塑身纤体</strong></font>
                                                                                </a>
                                                                            </font>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=63&amp;nid=575">收腹提臀</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=63&amp;nid=576">瘦身减肥</a></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=63&amp;nid=577">丰胸美乳</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=63&amp;nid=578">美腿产品</a></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=63&amp;nid=579">增高助长</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=63&amp;nid=580">紧致瘦脸</a></td>
                                                                    </tr>

                                                                </table>

                                                                </div>
                                                                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                                    <tr>
                                                                        <td colspan="3" height="22" align="left">
                                                                            <font color="#FF6600"><img src="images/orange-bullet.gif" width="9" height="7" />
                                                                                <a href="class.htm?lx=big&amp;anid=64">
                                                                                    <font color="#FF4800"><strong>工具器械</strong></font>
                                                                                </a>
                                                                            </font>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=64&amp;nid=581">化妆工具</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=64&amp;nid=582">美容工具</a></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=64&amp;nid=583">美甲工具</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=64&amp;nid=584">美发工具</a></td>
                                                                    </tr>

                                                                </table>

                                                                </div>
                                                                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                                    <tr>
                                                                        <td colspan="3" height="22" align="left">
                                                                            <font color="#FF6600"><img src="images/orange-bullet.gif" width="9" height="7" />
                                                                                <a href="class.htm?lx=big&amp;anid=65">
                                                                                    <font color="#FF4800"><strong>化妆保健</strong></font>
                                                                                </a>
                                                                            </font>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=65&amp;nid=585">男/女化妆品</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=65&amp;nid=586">洗护用品</a></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=65&amp;nid=587">美颜保健品</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=65&amp;nid=588">保健滋补品</a></td>
                                                                    </tr>

                                                                </table>

                                                                </div>
                                                                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                                    <tr>
                                                                        <td colspan="3" height="22" align="left">
                                                                            <font color="#FF6600"><img src="images/orange-bullet.gif" width="9" height="7" />
                                                                                <a href="class.htm?lx=big&amp;anid=66">
                                                                                    <font color="#FF4800"><strong>特效护理</strong></font>
                                                                                </a>
                                                                            </font>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=66&amp;nid=589">祛痘暗疮</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=66&amp;nid=590">祛斑/祛疤/祛皱</a></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=66&amp;nid=591">精油/焕颜</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=66&amp;nid=592">其他产品</a></td>
                                                                    </tr>

                                                                </table>

                                                                </div>
                                                                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                                    <tr>
                                                                        <td colspan="3" height="22" align="left">
                                                                            <font color="#FF6600"><img src="images/orange-bullet.gif" width="9" height="7" />
                                                                                <a href="class.htm?lx=big&amp;anid=67">
                                                                                    <font color="#FF4800"><strong>香水系列</strong></font>
                                                                                </a>
                                                                            </font>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=67&amp;nid=593">情侣香水</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=67&amp;nid=594">运动香水</a></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=67&amp;nid=595">止汗香露</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=67&amp;nid=596">香水套装</a></td>
                                                                    </tr>

                                                                </table>

                                                                </div>
                                                                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                                    <tr>
                                                                        <td colspan="3" height="22" align="left">
                                                                            <font color="#FF6600"><img src="images/orange-bullet.gif" width="9" height="7" />
                                                                                <a href="class.htm?lx=big&amp;anid=68">
                                                                                    <font color="#FF4800"><strong>居家洗护</strong></font>
                                                                                </a>
                                                                            </font>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=68&amp;nid=597">沐浴香体</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=68&amp;nid=598">洗发护发</a></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td width="48%" height="20" align="right"><a href="class.htm?lx=small&amp;anid=68&amp;nid=599">美发定型</a></td>
                                                                        <td width="4%" align="center">
                                                                            <font color="ff6600"><b>|</b></font>
                                                                        </td>

                                                                        <td align="left" width="48%" height="22"><a href="class.htm?lx=small&amp;anid=68&amp;nid=600">足浴/其他</a></td>
                                                                    </tr>

                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                    </tbody>
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
                                                                        <a href=product.htm?id=352 title=此商品已成功销售27次>兰芝睡眠锁水面膜</a>
                                                                        <font color="#DC143C">
                                                                            <font color="#DC143C">￥180</font>
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
                                                                        <a href=product.htm?id=346 title=此商品已成功销售18次>娇韵诗新生紧肤晚..</a>
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
                                                                        <a href=product.htm?id=353 title=此商品已成功销售17次>兰芝新装水润面霜</a>
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
                                                                        <a href=product.htm?id=351 title=此商品已成功销售16次>兰芝酸奶美白面膜</a>
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
                                                                        <a href=product.htm?id=348 title=此商品已成功销售11次>美白精华晚霜</a>
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
                                                                        <a href=product.htm?id=337 title=此商品已成功销售10次>雅顿时空草本胶囊</a>
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
                                                                        <a href=product.htm?id=343 title=此商品已成功销售8次>冰冻滋润修护唇膏</a>
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
                                                                        <a href=product.htm?id=333 title=此商品已成功销售7次>尿素手霜</a>
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
                                                                        <a href=product.htm?id=349 title=此商品已成功销售7次>草莓酸奶面膜</a>
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
                                                                        <a href=product.htm?id=354 title=此商品已成功销售7次>柔丝深层滋润霜</a>
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
                                                <div align="center"><img src="images/20062212294473168.gif" border="0" width="190"></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="5"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td valign="top">
                                    <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0" bordercolor="#CCCCCC">
                                        <tr>
                                            <td width="100%" valign="top" align="center" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
                                                <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">

                                                    <tr>
                                                        <td height=28 colspan="2" background="imagespdbg01.gif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=index.jsp>商城首页</a> >> 最新上架</td>
                                                    </tr>
                                                    <tr>
                                                        <td height="8" colspan="2"></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" background="" height=50>
                                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                <tr>
                                                                    <td width="5"></td>
                                                                    <td><img src="images/200621714544982086.jpg" border="0" width="99%" height="160"></td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" height=10></td>
                                                    </tr>

                                                </table>

                                                <table class="sideleft" width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                                                    <tr>
                                                        <%for (Product product : products){%>
                                                            <td width="27%">
                                                                <table width="175" border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td height="10"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table width="175" border="0" cellspacing="0" cellpadding="0">
                                                                                <tr>
                                                                                    <td height="1" background="images/lineDotGray.gif"></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td height="10"></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <div align="center">
                                                                                            <table width="140" height="142" cellspacing="1" cellpadding="2" border="0">
                                                                                                <tbody>
                                                                                                    <TR>
                                                                                                        <TD align=middle background="images136.jpg" height=140>

                                                                                                            <a href="singleProduct?product_id=<%=product.getProduct_id()%>"><img src="<%=product.getProduct_img()%>" alt="兰芝新装水润面霜" width=100 height=100 border="0" align="absmiddle" /></a>

                                                                                                        </TD>
                                                                                                    </TR>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                            <tr>
                                                                                                <td align=center>
                                                                                                    <a class=a4 href="singleProduct?product_id=<%=product.getProduct_id()%>">
                                                                                                        <font color=#FF0000>
                                                                                                            <%=product.getProduct_name()%>
                                                                                                        </font>
                                                                                                    </a>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="35" align=center>市场价：
                                                                                                    <%=product.getProduct_price()%> 元
                                                                                            </tr>
                                                                                        </table>
                                                                                        </td>
                                                                                </tr>
                                                                            </table>
                                                                            </td>
                                                                    </tr>
                                                                </table>
                                                                </td>
                                                                <%}%>
                                                    </tr>
                                                </table>
                                                <table width=100% border=0 cellpadding=0 cellspacing=0>
                                                    <TR>
                                                        <TD align=center height=40>
                                                            <p align=center>
                                                                <a href="multiProduct?page_num=<%=Math.max(0, pageNum - 1)%>">上一页</a> <a href="multiProduct?page_num=<%=Math.min(pageAmount - 1, pageNum + 1)%>">下一页</a> 页次：
                                                                <%=pageNum + 1%>/
                                                                    <%=pageAmount%>页 共有
                                                                        <%=productAmount%>种商品
                                                        </TD>
                                                    </TR>
                                                </table>
                                                </td>
                                        </tr>
                                    </table>
                                    </td>
                                    <td width="68" style="BORDER-left:#FF67A0 1px solid;">&nbsp;</td>

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
                                                        <A href="index.jsp">购物首页</A> | 关于我们 | 联系我们 | 订单查询 | 付款方式 | 留言/建议/投诉</TD>
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