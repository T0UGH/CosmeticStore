<%@ page import="pojo.User" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
        <html>

        <HEAD>
            <TITLE>彩妆魔法--首页</TITLE>
            <META content="text/html; charset=utf8" http-equiv=Content-Type>
            <LINK rel=stylesheet type=text/css href="images/css.css">
            <META name=GENERATOR content="MSHTML 8.00.6001.18928">
        </HEAD>

        <BODY leftMargin=0 topMargin=0 bgColor=#ffffff marginheight="0" marginwidth="0">
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
            <SCRIPT language=javascript src="images/Wq_StranJF.js"></SCRIPT>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width=1000 align=center>
                <TR>
                    <TD vAlign=top width=39>
                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" height=184>
                            <TBODY>
                                <TR>
                                    <TD height=30 vAlign=top align=right>
                                        <IMG src="images/jiao.gif" width=15 height=17>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD height=90>
                                        <DIV align=right></DIV>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD height=30>&nbsp;</TD>
                                </TR>
                            </TBODY>
                        </TABLE>
                    </TD>
                    <TD style="BORDER-BOTTOM: #ff67a0 1px solid; BORDER-LEFT: #ff67a0 1px solid; BORDER-RIGHT: #ff67a0 1px solid" vAlign=top width=190>
                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                            <TBODY>
                                <TR>
                                    <TD>
                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width=190 height=190>
                                            <TBODY>
                                                <TR>
                                                    <TD vAlign=center background=images/index_2.gif align=middle>
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
                                                                                <a href="logout"><input type="button" value="注销" border="0"  width=53 height=17></a>
                                                                                <a href="myPage"><input type="button" value="我的" border="0"  width=53 height=17></a>
                                                                            </DIV>
                                                                        </TD>
                                                                    </TR>
                                                                    <TR>
                                                                        <TD height=10 colSpan=2></TD>
                                                                    </TR>
                                                            </FORM>
                                                        </TABLE>
                                                    </TD>
                                                </TR>
                                        </TABLE>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD>
                                        <IMG src="images/index_4.gif" width=190 height=12>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD>
                                        <TABLE style="BORDER-BOTTOM: #e5e5e5 1px solid; BORDER-LEFT: #e5e5e5 1px solid; BORDER-TOP: #e5e5e5 1px solid; BORDER-RIGHT: #e5e5e5 1px solid" border=0 cellSpacing=0 cellPadding=0 width="100%">
                                            <TBODY>
                                                <TR>
                                                    <TD>
                                                        <STYLE type=text/css>
                                                            .style1 {
                                                                COLOR: #ff0000
                                                            }
                                                        </STYLE>
                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width=178>
                                                            <TBODY>
                                                                <TR>
                                                                    <TD>
                                                                        <IMG src="images/searc.gif" width=180 height=50>
                                                                        <BR>
                                                                        <TABLE border=0 cellSpacing=1 cellPadding=1 width="88%" align=center>
                                                                            <FORM method=post name=form2>
                                                                                <TBODY>
                                                                                    <TR>
                                                                                        <TD align=middle>关键字：
                                                                                            <INPUT class=wenbenkuang size=12 name=searchkey ;>
                                                                                        </TD>
                                                                                    </TR>

                                                                                    <TR>
                                                                                        <TD height=38 align=center>
                                                                                            <INPUT class=go-wenbenkuang value=查询 type=submit name=Submit>

                                                                                            </A>
                                                                                        </TD>
                                                                                    </TR>
                                                                            </FORM>
                                                                        </TABLE>
                                                                    </TD>
                                                                </TR>
                                                                </TBODY>
                                                        </TABLE>
                                                    </TD>
                                                </TR>
                                                </TBODY>
                                        </TABLE>
                                        <TABLE style="BORDER-BOTTOM: #e5e5e5 1px solid; BORDER-LEFT: #e5e5e5 1px solid; BORDER-TOP: #e5e5e5 1px solid; BORDER-RIGHT: #e5e5e5 1px solid" border=0 cellSpacing=0 cellPadding=0 width="100%">
                                            <TBODY>
                                                <TR>
                                                    <TD height=28>
                                                        <DIV align=center>
                                                            <IMG src="images/menutop.gif">
                                                        </DIV>
                                                    </TD>
                                                </TR>
                                                <TR>
                                                    <TD>
                                                        <DIV align=center></DIV>
                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                                            <TBODY>
                                                                <TR>
                                                                    <TD height=22 colSpan=3 align=left>
                                                                        <FONT color=#ff6600>
                                                                            <IMG src="images/orange-bullet.gif" width=9 height=7>
                                                                            <A href="multiProduct.jsp?lx=big&amp;anid=62">
                                                                                <FONT color=#ff4800>
                                                                                    <STRONG>彩妆用品</STRONG>
                                                                                </FONT>
                                                                            </A>
                                                                        </FONT>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=62&amp;nid=571">粉底/粉饼</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=62&amp;nid=572">胭脂/眼影</A>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=62&amp;nid=573">彩妆套装</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=62&amp;nid=574">唇线笔/卸妆</A>
                                                                    </TD>
                                                                </TR>
                                                            </TBODY>
                                                        </TABLE>
                                                        <DIV></DIV>
                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                                            <TBODY>
                                                                <TR>
                                                                    <TD height=22 colSpan=3 align=left>
                                                                        <FONT color=#ff6600>
                                                                            <IMG src="images/orange-bullet.gif" width=9 height=7>
                                                                            <A href="multiProduct.jsp?lx=big&amp;anid=63">
                                                                                <FONT color=#ff4800>
                                                                                    <STRONG>塑身纤体</STRONG>
                                                                                </FONT>
                                                                            </A>
                                                                        </FONT>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=63&amp;nid=575">收腹提臀</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=63&amp;nid=576">瘦身减肥</A>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=63&amp;nid=577">丰胸美乳</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=63&amp;nid=578">美腿产品</A>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=63&amp;nid=579">增高助长</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=63&amp;nid=580">紧致瘦脸</A>
                                                                    </TD>
                                                                </TR>
                                                            </TBODY>
                                                        </TABLE>
                                                        <DIV></DIV>
                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                                            <TBODY>
                                                                <TR>
                                                                    <TD height=22 colSpan=3 align=left>
                                                                        <FONT color=#ff6600>
                                                                            <IMG src="images/orange-bullet.gif" width=9 height=7>
                                                                            <A href="multiProduct.jsp?lx=big&amp;anid=64">
                                                                                <FONT color=#ff4800>
                                                                                    <STRONG>工具器械</STRONG>
                                                                                </FONT>
                                                                            </A>
                                                                        </FONT>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=64&amp;nid=581">化妆工具</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=64&amp;nid=582">美容工具</A>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=64&amp;nid=583">美甲工具</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=64&amp;nid=584">美发工具</A>
                                                                    </TD>
                                                                </TR>
                                                            </TBODY>
                                                        </TABLE>
                                                        <DIV></DIV>
                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                                            <TBODY>
                                                                <TR>
                                                                    <TD height=22 colSpan=3 align=left>
                                                                        <FONT color=#ff6600>
                                                                            <IMG src="images/orange-bullet.gif" width=9 height=7>
                                                                            <A href="multiProduct.jsp?lx=big&amp;anid=65">
                                                                                <FONT color=#ff4800>
                                                                                    <STRONG>化妆保健</STRONG>
                                                                                </FONT>
                                                                            </A>
                                                                        </FONT>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=65&amp;nid=585">男/女化妆品</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=65&amp;nid=586">洗护用品</A>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=65&amp;nid=587">美颜保健品</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=65&amp;nid=588">保健滋补品</A>
                                                                    </TD>
                                                                </TR>
                                                            </TBODY>
                                                        </TABLE>
                                                        <DIV></DIV>
                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                                            <TBODY>
                                                                <TR>
                                                                    <TD height=22 colSpan=3 align=left>
                                                                        <FONT color=#ff6600>
                                                                            <IMG src="images/orange-bullet.gif" width=9 height=7>
                                                                            <A href="multiProduct.jsp?lx=big&amp;anid=66">
                                                                                <FONT color=#ff4800>
                                                                                    <STRONG>特效护理</STRONG>
                                                                                </FONT>
                                                                            </A>
                                                                        </FONT>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=66&amp;nid=589">祛痘暗疮</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=66&amp;nid=590">祛斑/祛疤/祛皱</A>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=66&amp;nid=591">精油/焕颜</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=66&amp;nid=592">其他产品</A>
                                                                    </TD>
                                                                </TR>
                                                            </TBODY>
                                                        </TABLE>
                                                        <DIV></DIV>
                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                                            <TBODY>
                                                                <TR>
                                                                    <TD height=22 colSpan=3 align=left>
                                                                        <FONT color=#ff6600>
                                                                            <IMG src="images/orange-bullet.gif" width=9 height=7>
                                                                            <A href="multiProduct.jsp?lx=big&amp;anid=67">
                                                                                <FONT color=#ff4800>
                                                                                    <STRONG>香水系列</STRONG>
                                                                                </FONT>
                                                                            </A>
                                                                        </FONT>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=67&amp;nid=593">情侣香水</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=67&amp;nid=594">运动香水</A>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=67&amp;nid=595">止汗香露</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=67&amp;nid=596">香水套装</A>
                                                                    </TD>
                                                                </TR>
                                                            </TBODY>
                                                        </TABLE>
                                                        <DIV></DIV>
                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                                            <TBODY>
                                                                <TR>
                                                                    <TD height=22 colSpan=3 align=left>
                                                                        <FONT color=#ff6600>
                                                                            <IMG src="images/orange-bullet.gif" width=9 height=7>
                                                                            <A href="multiProduct.jsp?lx=big&amp;anid=68">
                                                                                <FONT color=#ff4800>
                                                                                    <STRONG>居家洗护</STRONG>
                                                                                </FONT>
                                                                            </A>
                                                                        </FONT>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=68&amp;nid=597">沐浴香体</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=68&amp;nid=598">洗发护发</A>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=20 width="48%" align=right>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=68&amp;nid=599">美发定型</A>
                                                                    </TD>
                                                                    <TD width="4%" align=middle>
                                                                        <FONT color=#ff6600>
                                                                            <B>|</B>
                                                                        </FONT>
                                                                    </TD>
                                                                    <TD height=22 width="48%" align=left>
                                                                        <A href="multiProduct.jsp?lx=small&amp;anid=68&amp;nid=600">足浴/其他</A>
                                                                    </TD>
                                                                </TR>
                                                            </TBODY>
                                                        </TABLE>
                                                    </TD>
                                                </TR>
                                                <TR>
                                                    <TD>&nbsp;</TD>
                                                </TR>
                                            </TBODY>
                                        </TABLE>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD>
                                        <STYLE type=text/css>
                                            .style4 {
                                                COLOR: #ff5c99
                                            }
                                        </STYLE>
                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width=190>
                                            <TBODY>
                                                <TR>
                                                    <TD>
                                                        <DIV align=center>
                                                            <IMG src="images/left01.gif" width=183 height=43>
                                                        </DIV>
                                                    </TD>
                                                </TR>
                                                <TR>
                                                    <TD>
                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                                            <TBODY>
                                                                <TR>
                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                        <IMG src="images/dian2.gif" width=14 height=15>
                                                                        <A title=此商品已成功销售27次 href="product.jsp?id=352">兰芝睡眠锁水面膜</A>
                                                                        <FONT color=#dc143c>
                                                                            <FONT color=#dc143c>￥180</FONT>
                                                                        </FONT>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                </TR>
                                                                            </TBODY>
                                                                        </TABLE>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                        <IMG src="images/dian2.gif" width=14 height=15>
                                                                        <A title=此商品已成功销售18次 href="product.jsp?id=346">娇韵诗新生紧肤晚..</A>
                                                                        <FONT color=#dc143c>
                                                                            <FONT color=#dc143c>￥550</FONT>
                                                                        </FONT>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                </TR>
                                                                            </TBODY>
                                                                        </TABLE>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                        <IMG src="images/dian2.gif" width=14 height=15>
                                                                        <A title=此商品已成功销售17次 href="product.jsp?id=353">兰芝新装水润面霜</A>
                                                                        <FONT color=#dc143c>
                                                                            <FONT color=#dc143c>￥245</FONT>
                                                                        </FONT>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                </TR>
                                                                            </TBODY>
                                                                        </TABLE>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                        <IMG src="images/dian2.gif" width=14 height=15>
                                                                        <A title=此商品已成功销售16次 href="product.jsp?id=351">兰芝酸奶美白面膜</A>
                                                                        <FONT color=#dc143c>
                                                                            <FONT color=#dc143c>￥119</FONT>
                                                                        </FONT>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                </TR>
                                                                            </TBODY>
                                                                        </TABLE>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                        <IMG src="images/dian2.gif" width=14 height=15>
                                                                        <A title=此商品已成功销售11次 href="product.jsp?id=348">美白精华晚霜</A>
                                                                        <FONT color=#dc143c>
                                                                            <FONT color=#dc143c>￥700</FONT>
                                                                        </FONT>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                </TR>
                                                                            </TBODY>
                                                                        </TABLE>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                        <IMG src="images/dian2.gif" width=14 height=15>
                                                                        <A title=此商品已成功销售10次 href="product.jsp?id=337">雅顿时空草本胶囊</A>
                                                                        <FONT color=#dc143c>
                                                                            <FONT color=#dc143c>￥420</FONT>
                                                                        </FONT>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                </TR>
                                                                            </TBODY>
                                                                        </TABLE>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                        <IMG src="images/dian2.gif" width=14 height=15>
                                                                        <A title=此商品已成功销售8次 href="product.jsp?id=343">冰冻滋润修护唇膏</A>
                                                                        <FONT color=#dc143c>
                                                                            <FONT color=#dc143c>￥48</FONT>
                                                                        </FONT>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                </TR>
                                                                            </TBODY>
                                                                        </TABLE>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                        <IMG src="images/dian2.gif" width=14 height=15>
                                                                        <A title=此商品已成功销售7次 href="product.jsp?id=333">尿素手霜</A>
                                                                        <FONT color=#dc143c>
                                                                            <FONT color=#dc143c>￥90</FONT>
                                                                        </FONT>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                </TR>
                                                                            </TBODY>
                                                                        </TABLE>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                        <IMG src="images/dian2.gif" width=14 height=15>
                                                                        <A title=此商品已成功销售7次 href="product.jsp?id=349">草莓酸奶面膜</A>
                                                                        <FONT color=#dc143c>
                                                                            <FONT color=#dc143c>￥90</FONT>
                                                                        </FONT>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                </TR>
                                                                            </TBODY>
                                                                        </TABLE>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                        <IMG src="images/dian2.gif" width=14 height=15>
                                                                        <A title=此商品已成功销售7次 href="product.jsp?id=354">柔丝深层滋润霜</A>
                                                                        <FONT color=#dc143c>
                                                                            <FONT color=#dc143c>￥78</FONT>
                                                                        </FONT>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD height=1 background=images/blank.gif></TD>
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
                                    </TD>
                                </TR>
                                <TR>
                                    <TD>
                                        <DIV align=center>
                                            <A href="#/" target=_blank>
                                                <IMG border=0 src="images/20062212294473168.gif" width=190 height=235>
                                            </A>
                                        </DIV>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD height=5></TD>
                                </TR>
                                <TR>
                                    <TD>
                                        <A href="#/" target=_blank>
                                            <IMG border=0 src="images/200622122321784974.gif" width=190 height=235>
                                        </A>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD height=5></TD>
                                </TR>
                                <TR>
                                    <TD>
                                        <A href="#/" target=_blank>
                                            <IMG border=0 src="images/200622121482878345.gif" width=190 height=235>
                                        </A>
                                    </TD>
                                </TR>
                                </TBODY>
                        </TABLE>
                    </TD>
                    <TD vAlign=top width=700>
                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                            <TBODY>

                                <TR>
                                    <TD vAlign=top width="74%">
                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width=520 background=images/bg13.gif height=190>
                                            <TBODY>
                                                <TR>
                                                    <TD vAlign=bottom align=middle>
                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" height=185>
                                                            <TBODY>
                                                                <TR>
                                                                    <TD width=5 align=right>&nbsp;</TD>
                                                                    <TD align=right>
                                                                        <DIV align=center>
                                                                            <img src="images/200610191250517600.jpg">
                                                                        </DIV>
                                                                    </TD>
                                                                </TR>
                                                            </TBODY>
                                                        </TABLE>
                                                    </TD>
                                                </TR>
                                            </TBODY>
                                        </TABLE>
                                    </TD>
                                    <TD vAlign=top width="26%">
                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width=180>
                                            <TBODY>
                                                <TR>
                                                    <TD height=5></TD>
                                                </TR>
                                                <TR>
                                                    <TD align=right>
                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width=189>
                                                            <TBODY>
                                                                <TR>
                                                                    <TD>
                                                                        <a href="multiProduct">
                                                                            <IMG border=0 src="images/newtop.gif" width=189 height=40>
                                                                        </a>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD background=images/newbg.gif>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="98%" align=center height=22>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD vAlign=center width="10%">
                                                                                        <DIV align=center>
                                                                                            <IMG src="images/blit_01.gif" width=2 height=3>
                                                                                        </DIV>
                                                                                    </TD>
                                                                                    <TD height=18 vAlign=center width="90%">
                                                                                        <SPAN class=noti_text>资生堂安耐晒防晒霜特价78折起</SPAN>
                                                                                    </TD>
                                                                                </TR>
                                                                                <TR>
                                                                                    <TD vAlign=center width="10%">
                                                                                        <DIV align=center>
                                                                                            <IMG src="images/blit_01.gif" width=2 height=3>
                                                                                        </DIV>
                                                                                    </TD>
                                                                                    <TD height=18 vAlign=center width="90%">
                                                                                        <SPAN class=noti_text>买普丽缇.赫柏爱侣情趣精油赠萨沙珀手工天然洁面皂! </SPAN>
                                                                                    </TD>
                                                                                </TR>
                                                                                <TR>
                                                                                    <TD vAlign=center width="10%">
                                                                                        <DIV align=center>
                                                                                            <IMG src="images/blit_01.gif" width=2 height=3>
                                                                                        </DIV>
                                                                                    </TD>
                                                                                    <TD height=18 vAlign=center width="90%">
                                                                                        <SPAN class=noti_text>新款欧莱雅男士护肤系列6折起 </SPAN>
                                                                                    </TD>
                                                                                </TR>
                                                                                <TR>
                                                                                    <TD vAlign=center width="10%">
                                                                                        <DIV align=center>
                                                                                            <IMG src="images/blit_01.gif" width=2 height=3>
                                                                                        </DIV>
                                                                                    </TD>
                                                                                    <TD height=18 vAlign=center width="90%">
                                                                                        <SPAN class=noti_text>新款欧莱雅男士护肤系列6折起 </SPAN>
                                                                                    </TD>
                                                                                </TR>
                                                                                <TR>
                                                                                    <TD vAlign=center width="10%">
                                                                                        <DIV align=center>
                                                                                            <IMG src="images/blit_01.gif" width=2 height=3>
                                                                                        </DIV>
                                                                                    </TD>
                                                                                    <TD height=18 vAlign=center width="90%">
                                                                                        <SPAN class=noti_text>新款欧莱雅男士护肤系列6折起 </SPAN>
                                                                                    </TD>
                                                                                </TR>
                                                                                <TR>
                                                                                    <TD vAlign=center width="10%">
                                                                                        <DIV align=center>
                                                                                            <IMG src="images/blit_01.gif" width=2 height=3>
                                                                                        </DIV>
                                                                                    </TD>
                                                                                    <TD height=18 vAlign=center width="90%">
                                                                                        <SPAN class=noti_text>新款欧莱雅男士护肤系列6折起 </SPAN>
                                                                                    </TD>
                                                                                </TR>
                                                                            </TBODY>
                                                                        </TABLE>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD>
                                                                        <IMG src="images/newbot.gif" width=189 height=14>
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
                                <TR>
                                    <TD colSpan=2>
                                        <IMG src="images/index_5.gif" width="100%" height=12>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD colSpan=2>
                                        <TABLE style="BORDER-RIGHT: #ff67a0 1px solid" border=0 cellSpacing=0 cellPadding=0 width="100%">
                                            <TBODY>
                                                <TR>
                                                    <TD colSpan=2>
                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" align=center>
                                                            <TBODY>
                                                                <TR>
                                                                    <TD>
                                                                        <IMG border=0 src="images/np.gif" width="100%" useMap=#Map4>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="99%" align=center>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=232 align=center height=110>
                                                                                            <TBODY>
                                                                                                <TR>
                                                                                                    <TD vAlign=center width=110 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="singleProduct?product_id=12">
                                                                                                                            <IMG border=0 alt=点击查看商品:蓝色的瓶子 align=absMiddle src="https://i.loli.net/2019/05/12/5cd7aee374dc1.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                    <TD width="60%">
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203>
                                                                                                                        <A class=a4 href="singleProduct?product_id=12">
                                                                                                                            <FONT color=#ff0000>蓝色的瓶子</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>市场价：
                                                                                                                        <S>245.60</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>会员价：
                                                                                                                        <FONT color=#ff0000>245.60</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=232 align=center height=110>
                                                                                            <TBODY>
                                                                                                <TR>
                                                                                                    <TD vAlign=center width=110 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="singleProduct?product_id=13">
                                                                                                                            <IMG border=0 alt=点击查看商品:兰芝睡眠锁水面膜 align=absMiddle src="https://i.loli.net/2019/05/12/5cd7aef52f57a.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                    <TD width="60%">
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203>
                                                                                                                        <A class=a4 href="singleProduct?product_id=13">
                                                                                                                            <FONT color=#ff0000>粉色的瓶子</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>市场价：
                                                                                                                        <S>189.79</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>会员价：
                                                                                                                        <FONT color=#ff0000>189.79</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=232 align=center height=110>
                                                                                            <TBODY>
                                                                                                <TR>
                                                                                                    <TD vAlign=center width=110 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="singleProduct?product_id=14">
                                                                                                                            <IMG border=0 alt=点击查看商品:兰芝酸奶美白面膜 align=absMiddle src="https://i.loli.net/2019/05/12/5cd7af199fa26.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                    <TD width="60%">
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203>
                                                                                                                        <A class=a4 href="singleProduct?product_id=14">
                                                                                                                            <FONT color=#ff0000>小药丸</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>市场价：
                                                                                                                        <S>200.00</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>会员价：
                                                                                                                        <FONT color=#ff0000>200.00</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                </TR>
                                                                                <TR>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=232 align=center height=110>
                                                                                            <TBODY>
                                                                                                <TR>
                                                                                                    <TD vAlign=center width=110 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=349">
                                                                                                                            <IMG border=0 alt=点击查看商品:草莓酸奶面膜 align=absMiddle src="images/2006101714444353381.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                    <TD width="60%">
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203>
                                                                                                                        <A class=a4 href="product.jsp?id=349">
                                                                                                                            <FONT color=#ff0000>草莓酸奶面膜</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>市场价：
                                                                                                                        <S>108</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>会员价：
                                                                                                                        <FONT color=#ff0000>90</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=232 align=center height=110>
                                                                                            <TBODY>
                                                                                                <TR>
                                                                                                    <TD vAlign=center width=110 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=346">
                                                                                                                            <IMG border=0 alt=点击查看商品:娇韵诗新生紧肤晚霜 align=absMiddle src="images/2006101714355533406.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                    <TD width="60%">
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203>
                                                                                                                        <A class=a4 href="product.jsp?id=346">
                                                                                                                            <FONT color=#ff0000>娇韵诗新生紧肤晚霜</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>市场价：
                                                                                                                        <S>680</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>会员价：
                                                                                                                        <FONT color=#ff0000>550</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=232 align=center height=110>
                                                                                            <TBODY>
                                                                                                <TR>
                                                                                                    <TD vAlign=center width=110 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=343">
                                                                                                                            <IMG border=0 alt=点击查看商品:冰冻滋润修护唇膏 align=absMiddle src="images/200610171423364092.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                    <TD width="60%">
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203>
                                                                                                                        <A class=a4 href="product.jsp?id=343">
                                                                                                                            <FONT color=#ff0000>冰冻滋润修护唇膏</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>市场价：
                                                                                                                        <S>50</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>会员价：
                                                                                                                        <FONT color=#ff0000>48</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                </TR>
                                                                                <TR>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=232 align=center height=110>
                                                                                            <TBODY>
                                                                                                <TR>
                                                                                                    <TD vAlign=center width=110 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=341">
                                                                                                                            <IMG border=0 alt=点击查看商品:美白维生素C胶囊 align=absMiddle src="images/2006101714114278650.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                    <TD width="60%">
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203>
                                                                                                                        <A class=a4 href="product.jsp?id=341">
                                                                                                                            <FONT color=#ff0000>美白维生素C胶囊</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>市场价：
                                                                                                                        <S>525</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>会员价：
                                                                                                                        <FONT color=#ff0000>480</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=232 align=center height=110>
                                                                                            <TBODY>
                                                                                                <TR>
                                                                                                    <TD vAlign=center width=110 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=340">
                                                                                                                            <IMG border=0 alt=点击查看商品:雅顿显效美白三件套 align=absMiddle src="images/200610171491328690.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                    <TD width="60%">
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203>
                                                                                                                        <A class=a4 href="product.jsp?id=340">
                                                                                                                            <FONT color=#ff0000>雅顿显效美白三件套</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>市场价：
                                                                                                                        <S>390</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>会员价：
                                                                                                                        <FONT color=#ff0000>300</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=232 align=center height=110>
                                                                                            <TBODY>
                                                                                                <TR>
                                                                                                    <TD vAlign=center width=110 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=338">
                                                                                                                            <IMG border=0 alt=点击查看商品:眼部护理水凝霜 align=absMiddle src="images/20061017143334466.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                    <TD width="60%">
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203>
                                                                                                                        <A class=a4 href="product.jsp?id=338">
                                                                                                                            <FONT color=#ff0000>眼部护理水凝霜</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>市场价：
                                                                                                                        <S>500</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD>会员价：
                                                                                                                        <FONT color=#ff0000>480</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
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
                                                                    </TD>
                                                                </TR>
                                                            </TBODY>
                                                        </TABLE>
                                                        <MAP id=Map4 name=Map4>
                      <AREA
                              href="multiProduct.jsp?lx=news" shape=rect
                              coords=68,7,80,15>
                    </MAP>
                                                    </TD>
                                                </TR>
                                            </TBODY>
                                        </TABLE>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD style="BORDER-RIGHT: #ff67a0 1px solid" colSpan=2>
                                        <DIV align=center>
                                            <A href="#/" target=_blank>
                                                <IMG border=0 src="images/200610191383490143.jpg" width="99%" height=135>
                                            </A>
                                        </DIV>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD colSpan=2>
                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                            <TBODY>

                                                <TR>
                                                    <TD vAlign=top>
                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                                            <TBODY>
                                                                <TR>
                                                                    <TD>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width=518 align=center>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD>
                                                                                        <IMG border=0 src="images/tj.gif" width=560 useMap=#Map1>
                                                                                    </TD>
                                                                                </TR>
                                                                            </TBODY>
                                                                        </TABLE>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width=518 align=center>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=350">
                                                                                                                            <IMG border=0 alt=点击查看商品:玉兰油美容焕采面膜 align=absMiddle src="images/2006101714513229932.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=350">
                                                                                                                            <FONT color=#ff0000>玉兰油美容焕采..</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>419</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>400</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=349">
                                                                                                                            <IMG border=0 alt=点击查看商品:草莓酸奶面膜 align=absMiddle src="images/2006101714444353381.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=349">
                                                                                                                            <FONT color=#ff0000>草莓酸奶面膜</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>108</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>90</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=348">
                                                                                                                            <IMG border=0 alt=点击查看商品:美白精华晚霜 align=absMiddle src="images/200610171441356033.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=348">
                                                                                                                            <FONT color=#ff0000>美白精华晚霜</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>790</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>700</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=347">
                                                                                                                            <IMG border=0 alt=点击查看商品:密丝佛陀铁盘粉饼 align=absMiddle src="images/2006101714383487942.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=347">
                                                                                                                            <FONT color=#ff0000>密丝佛陀铁盘粉..</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>130</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>110</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                </TR>
                                                                                <TR>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=345">
                                                                                                                            <IMG border=0 alt=点击查看商品:增大纳米套装 align=absMiddle src="images/2006101714315953196.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=345">
                                                                                                                            <FONT color=#ff0000>增大纳米套装</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>2930</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>2800</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=344">
                                                                                                                            <IMG border=0 alt=点击查看商品:保湿两件套兰包 align=absMiddle src="images/2006101714272959710.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=344">
                                                                                                                            <FONT color=#ff0000>保湿两件套兰包</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>495</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>400</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=336">
                                                                                                                            <IMG border=0 alt=点击查看商品:水蜜桃保湿霜 align=absMiddle src="images/200610171333945303.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=336">
                                                                                                                            <FONT color=#ff0000>水蜜桃保湿霜</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>230</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>180</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=333">
                                                                                                                            <IMG border=0 alt=点击查看商品:尿素手霜 align=absMiddle src="images/2006101713352594321.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=333">
                                                                                                                            <FONT color=#ff0000>尿素手霜</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>120</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>90</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
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
                                                                        <MAP id=Map1 name=Map1>
                            <AREA 
                          href="multiProduct.jsp?lx=hot"
                          shape=rect coords=413,8,502,16>
                          </MAP>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width=518 align=center>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD>
                                                                                        <IMG border=0 src="images/tejia.gif" width=560 useMap=#Map2>
                                                                                    </TD>
                                                                                </TR>
                                                                            </TBODY>
                                                                        </TABLE>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width=518 align=center>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=353">
                                                                                                                            <IMG border=0 alt=点击查看商品:兰芝新装水润面霜 align=absMiddle src="images/200610171459027590.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=353">
                                                                                                                            <FONT color=#ff0000>兰芝新装水润面..</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>270</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>245</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=352">
                                                                                                                            <IMG border=0 alt=点击查看商品:兰芝睡眠锁水面膜 align=absMiddle src="images/200610171456096562.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=352">
                                                                                                                            <FONT color=#ff0000>兰芝睡眠锁水面..</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>200</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>180</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=354">
                                                                                                                            <IMG border=0 alt=点击查看商品:柔丝深层滋润霜 align=absMiddle src="images/20061017153130162.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=354">
                                                                                                                            <FONT color=#ff0000>柔丝深层滋润霜</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>105</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>78</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=351">
                                                                                                                            <IMG border=0 alt=点击查看商品:兰芝酸奶美白面膜 align=absMiddle src="images/200610171454973797.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=351">
                                                                                                                            <FONT color=#ff0000>兰芝酸奶美白面..</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>130</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>119</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                </TR>
                                                                                <TR>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=347">
                                                                                                                            <IMG border=0 alt=点击查看商品:密丝佛陀铁盘粉饼 align=absMiddle src="images/2006101714383487942.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=347">
                                                                                                                            <FONT color=#ff0000>密丝佛陀铁盘粉..</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>130</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>110</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=346">
                                                                                                                            <IMG border=0 alt=点击查看商品:娇韵诗新生紧肤晚霜 align=absMiddle src="images/2006101714355533406.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=346">
                                                                                                                            <FONT color=#ff0000>娇韵诗新生紧肤..</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>680</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>550</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=344">
                                                                                                                            <IMG border=0 alt=点击查看商品:保湿两件套兰包 align=absMiddle src="images/2006101714272959710.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=344">
                                                                                                                            <FONT color=#ff0000>保湿两件套兰包</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>495</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>400</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=342">
                                                                                                                            <IMG border=0 alt=点击查看商品:润白净化防晒粉饼 align=absMiddle src="images/2006101714174643370.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=342">
                                                                                                                            <FONT color=#ff0000>润白净化防晒粉..</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>290</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>245</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                </TR>
                                                                                <TR>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=340">
                                                                                                                            <IMG border=0 alt=点击查看商品:雅顿显效美白三件套 align=absMiddle src="images/200610171491328690.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=340">
                                                                                                                            <FONT color=#ff0000>雅顿显效美白三..</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>390</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>300</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=339">
                                                                                                                            <IMG border=0 alt=点击查看商品:倩碧温和型洁面皂 align=absMiddle src="images/200610171464130100.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=339">
                                                                                                                            <FONT color=#ff0000>倩碧温和型洁面..</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>99</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>70</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=337">
                                                                                                                            <IMG border=0 alt=点击查看商品:雅顿时空草本胶囊 align=absMiddle src="images/200610371632145305.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=337">
                                                                                                                            <FONT color=#ff0000>雅顿时空草本胶..</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>350</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>420</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                            </TBODY>
                                                                                        </TABLE>
                                                                                    </TD>
                                                                                    <TD height=110 vAlign=top>
                                                                                        <TABLE cellSpacing=0 cellPadding=0 width=128 align=center>
                                                                                            <TBODY>
                                                                                                <TR vAlign=center>
                                                                                                    <TD></TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=113 align=middle>
                                                                                                        <TABLE border=0 cellSpacing=1 cellPadding=2 width=140 height=142>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=140 background=images/136.jpg align=middle>
                                                                                                                        <A href="product.jsp?id=334">
                                                                                                                            <IMG border=0 alt=点击查看商品:抗菌洗手液 align=absMiddle src="images/200610371633945305.jpg" width=100 height=100>
                                                                                                                        </A>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD align=middle>
                                                                                                        <TABLE cellSpacing=0 cellPadding=0 width="95%" align=center height=60>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD width=203 align=middle>
                                                                                                                        <A class=a4 href="product.jsp?id=334">
                                                                                                                            <FONT color=#ff0000>抗菌洗手液</FONT>
                                                                                                                        </A>
                                                                                                                        <BR>
                                                                                                                        </B>
                                                                                                                    </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>市场价：
                                                                                                                        <S>50</S>元</TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD align=middle>会员价：
                                                                                                                        <FONT color=#ff0000>40</FONT>元 </TD>
                                                                                                                </TR>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=""></TD>
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
                                                                        <MAP id=Map2 name=Map2>
                            <AREA 
                          href="multiProduct.jsp?lx=tejia"
                          shape=rect 
                coords=417,9,502,18>
                          </MAP>
                                                                    </TD>
                                                                </TR>
                                                            </TBODY>
                                                        </TABLE>
                                                    </TD>
                                                    <TD style="BORDER-LEFT: #ff67a0 1px solid; BORDER-RIGHT: #ff67a0 1px solid" vAlign=top width=180>
                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                                            <TBODY>

                                                                <TR>
                                                                    <TD>
                                                                        <STYLE type=text/css>
                                                                            .style4 {
                                                                                COLOR: #ff5c99
                                                                            }
                                                                        </STYLE>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width=180 align=left>
                                                                            <TBODY>
                                                                                <TR>
                                                                                    <TD>
                                                                                        <DIV align=center>
                                                                                            <IMG src="images/left04.gif" width=180 height=50>
                                                                                        </DIV>
                                                                                    </TD>
                                                                                </TR>
                                                                                <TR>
                                                                                    <TD>
                                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                                                                            <TBODY>
                                                                                                <TR>
                                                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                                                        <IMG src="images/dian3.gif" width=11 height=11>
                                                                                                        <A title=此商品已成功销售27次 href="product.jsp?id=352">兰芝睡眠锁水面膜</A>
                                                                                                        <FONT color=#dc143c>
                                                                                                            <FONT color=#dc143c>￥180</FONT>
                                                                                                        </FONT>
                                                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                                                        <IMG src="images/dian3.gif" width=11 height=11>
                                                                                                        <A title=此商品已成功销售17次 href="product.jsp?id=353">兰芝新装水润面霜</A>
                                                                                                        <FONT color=#dc143c>
                                                                                                            <FONT color=#dc143c>￥245</FONT>
                                                                                                        </FONT>
                                                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                                                        <IMG src="images/dian3.gif" width=11 height=11>
                                                                                                        <A title=此商品已成功销售18次 href="product.jsp?id=346">娇韵诗新生紧肤晚..</A>
                                                                                                        <FONT color=#dc143c>
                                                                                                            <FONT color=#dc143c>￥550</FONT>
                                                                                                        </FONT>
                                                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                                                        <IMG src="images/dian3.gif" width=11 height=11>
                                                                                                        <A title=此商品已成功销售16次 href="product.jsp?id=351">兰芝酸奶美白面膜</A>
                                                                                                        <FONT color=#dc143c>
                                                                                                            <FONT color=#dc143c>￥119</FONT>
                                                                                                        </FONT>
                                                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                                                        <IMG src="images/dian3.gif" width=11 height=11>
                                                                                                        <A title=此商品已成功销售7次 href="product.jsp?id=354">柔丝深层滋润霜</A>
                                                                                                        <FONT color=#dc143c>
                                                                                                            <FONT color=#dc143c>￥78</FONT>
                                                                                                        </FONT>
                                                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                                                        <IMG src="images/dian3.gif" width=11 height=11>
                                                                                                        <A title=此商品已成功销售5次 href="product.jsp?id=336">水蜜桃保湿霜</A>
                                                                                                        <FONT color=#dc143c>
                                                                                                            <FONT color=#dc143c>￥180</FONT>
                                                                                                        </FONT>
                                                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                                                        <IMG src="images/dian3.gif" width=11 height=11>
                                                                                                        <A title=此商品已成功销售10次 href="product.jsp?id=337">雅顿时空草本胶囊</A>
                                                                                                        <FONT color=#dc143c>
                                                                                                            <FONT color=#dc143c>￥420</FONT>
                                                                                                        </FONT>
                                                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                                                        <IMG src="images/dian3.gif" width=11 height=11>
                                                                                                        <A title=此商品已成功销售7次 href="product.jsp?id=333">尿素手霜</A>
                                                                                                        <FONT color=#dc143c>
                                                                                                            <FONT color=#dc143c>￥90</FONT>
                                                                                                        </FONT>
                                                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                                                        <IMG src="images/dian3.gif" width=11 height=11>
                                                                                                        <A title=此商品已成功销售11次 href="product.jsp?id=348">美白精华晚霜</A>
                                                                                                        <FONT color=#dc143c>
                                                                                                            <FONT color=#dc143c>￥700</FONT>
                                                                                                        </FONT>
                                                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=images/blank.gif></TD>
                                                                                                                </TR>
                                                                                                            </TBODY>
                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD height=24 vAlign=center width="1%"></TD>
                                                                                                    <TD vAlign=center width="99%">&nbsp;
                                                                                                        <IMG src="images/dian3.gif" width=11 height=11>
                                                                                                        <A title=此商品已成功销售5次 href="product.jsp?id=340">雅顿显效美白三件..</A>
                                                                                                        <FONT color=#dc143c>
                                                                                                            <FONT color=#dc143c>￥300</FONT>
                                                                                                        </FONT>
                                                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" background="" height=1>
                                                                                                            <TBODY>
                                                                                                                <TR>
                                                                                                                    <TD height=1 background=images/blank.gif></TD>
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
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD>
                                                                        <DIV align=center></DIV>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD>
                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width=180 align=left>
                                                                            <TBODY>

                                                                                <TR>
                                                                                    <TD>
                                                                                        <IMG src="images/left03.gif" width=180>
                                                                                    </TD>
                                                                                </TR>
                                                                                <TR>
                                                                                    <TD>
                                                                                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                                                                            <TBODY>

                                                                                                <TR>
                                                                                                    <TD>
                                                                                                        <DIV align=center>
                                                                                                            <B>您认为此网站设计怎么样？</B>
                                                                                                        </DIV>
                                                                                                    </TD>
                                                                                                </TR>
                                                                                                <TR>
                                                                                                    <TD>
                                                                                                        <TABLE border=0 cellSpacing=2 cellPadding=2 width="100%">
                                                                                                            <FORM method=post name=research target=newwindow>
                                                                                                                <TBODY>
                                                                                                                    <TR>
                                                                                                                        <TD vAlign=top width="100%">
                                                                                                                            <INPUT style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" value=1 CHECKED type=radio name=Options> 1.页面漂亮美观
                                                                                                                            <BR>
                                                                                                                            <INPUT style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" value=2 type=radio name=Options> 2.内容丰富实用
                                                                                                                            <BR>
                                                                                                                            <INPUT style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" value=3 type=radio name=Options> 3.功能性强大
                                                                                                                            <BR>
                                                                                                                            <INPUT style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" value=4 type=radio name=Options> 4.应加强内容的丰富性
                                                                                                                            <BR>
                                                                                                                            <INPUT style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" value=5 type=radio name=Options> 5.布局合理外观精美
                                                                                                                            <BR>
                                                                                                                            <INPUT style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px" value=6 type=radio name=Options> 6.商品价格再便宜些
                                                                                                                            <BR>
                                                                                                                        </TD>
                                                                                                                    </TR>
                                                                                                                    <TR>
                                                                                                                        <TD height=30 width="100%" align=middle>
                                                                                                                            <INPUT style="CURSOR: hand" border=0 src="images/vote1.gif" width=59 height=19 type=image name=submit>
                                                                                                                            <A href="" target=_blank>
                                                                                                                                <IMG border=0 src="images/vote.gif" width=59 height=19> </A>
                                                                                                                        </TD>
                                                                                                                    </TR>
                                                                                                            </FORM>

                                                                                                        </TABLE>
                                                                                                    </TD>
                                                                                                </TR>

                                                                                        </TABLE>
                                                                                    </TD>
                                                                                </TR>

                                                                        </TABLE>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD>
                                                                        <DIV align=center></DIV>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD>
                                                                        <A href="#/" target=_blank>
                                                                            <IMG border=0 src="images/200610191514657144.gif" width=180 height=190>
                                                                        </A>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=5></TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD>
                                                                        <A href="#/" target=_blank>
                                                                            <IMG border=0 src="images/200610191514657141.gif" width=180 height=190>
                                                                        </A>
                                                                    </TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD height=5></TD>
                                                                </TR>
                                                                <TR>
                                                                    <TD>
                                                                        <A href="#/" target=_blank>
                                                                            <IMG border=0 src="images/200610191514657142.gif" width=180 height=190>
                                                                        </A>
                                                                    </TD>
                                                                </TR>

                                                        </TABLE>
                                                    </TD>
                                                </TR>

                                        </TABLE>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD colSpan=2></TD>
                                </TR>
                                </TBODY>
                        </TABLE>
                    </TD>
                    <TD width=68>&nbsp;</TD>
                </TR>
                </TBODY>
            </TABLE>
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
        </BODY>

        </HTML>