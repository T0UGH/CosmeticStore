<%@ page import="pojo.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%
    User user = (User)request.getAttribute("user");
%>
<html>

<head>

    <title>彩妆魔法--新用户注册</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
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
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="39" valign="top">
            <table width="100%" height="184" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="30" align="right" valign="top"><img src="images/jiao.gif" width="15" height="17"></td>
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
        <td width="190" valign="top" style="BORDER-bottom:#FF67A0 1px solid;BORDER-left:#FF67A0 1px solid; BORDER-right:#FF67A0 1px solid;">
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
                        <table width="184" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td><img src="images/carttop.gif" width="184" height="12" /></td>
                            </tr>
                            <tr>
                                <td background="images/cartbg.gif" width="184">
                                    <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" height="70">

                                        <tr>
                                            <td height="20">
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
                    <td height="5"></td>
                </tr>
                <tr>
                    <td>
                        <div align="center">
                            <a href="#" target="_blank"><img src="images/200610191514657144.gif" border="0" width="180"></a>
                        </div>
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
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
        <td valign="top">
            <TABLE cellSpacing=0 cellPadding=0 width=100% align=center border=0>
                <TBODY>
                <TR>
                    <TD class=b vAlign=top align=left><img src="images/jiaor.gif"><br>

                        <table width="95%" align="center" border="0" cellspacing="0" cellpadding="0" bordercolor="#CCCCCC">
                            <tr>
                                <td bgcolor="#FFFFFF" bordercolor="#FFFFFF">
                                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <script>
                                                function openwin() {
                                                    document.form1.username.value = document.userinfo.username.value;
                                                    var popupWin = window.open('', 'check', 'width=200,height=100,resizable=no,scrollbars=no,menubar=no');
                                                    document.form1.submit()
                                                }
                                            </SCRIPT>
                                            <form name=form1 method=post target=check>
                                                <input type=hidden name=username value=>
                                            </form>
                                            <td align="center">
                                                <form method="post" action="updateUser">

                                                    <table width="85%" border="0" cellpadding="2" cellspacing="1" bgcolor="#e1e1e1" align="center">
                                                        <tr>
                                                            <td height=15 colspan=2 bgcolor="#f1f1f1">
                                                                <font color="#FF3300">* 用户名和密码
                                                                </font>
                                                            </td>
                                                        </tr>
                                                        <tr bgcolor="#FFFFFF">
                                                            <td align=right>用 户 名：</td>
                                                            <td class=pad>
                                                                <input value="<%=user.getUserId()%>" readonly class="wenbenkuang" name="user_id" type="text" id="username" maxLength="18">
                                                            </td>
                                                            </td>
                                                        </tr>
                                                        <tr bgcolor="#FFFFFF">
                                                            <td align=right>密　　码：</td>
                                                            <td class=pad><input value="<%=user.getPassword()%>" class="wenbenkuang" name="user_password" type="password" id="userpassword" maxLength="18">
                                                                <font color=red>**</font>长度必须大于6个字符</td>
                                                        </tr>
                                                        <tr bgcolor="#FFFFFF">
                                                            <td align=right>确认密码：</td>
                                                            <td class=pad><input value="<%=user.getPassword()%>" class="wenbenkuang" name="user_password1" type="password" id="userpassword1" maxLength="18">
                                                                <font color=red>**</font>重复输入密码信息</td>
                                                        </tr>
                                                        <tr bgcolor="#FFFFFF">
                                                            <td colspan="2" valign="middle" bgcolor="#f1f1f1">
                                                                <font color="#FF3300">* 用户详细资料
                                                                </font>
                                                            </td>
                                                        </tr>
                                                        <tr bgcolor="#FFFFFF">
                                                            <td width=30% align=right>姓名：</td>
                                                            <td width="83%" class=pad><input value="<%=user.getUser_name()%>" class="wenbenkuang" name="user_name" type="text" id="userzhenshiname" size="10">
                                                                <font color=red>**</font>
                                                            </td>
                                                        </tr>
                                                        <tr bgcolor="#FFFFFF">
                                                            <td width=30% align=right>地址：</td>
                                                            <td class=pad><input class="wenbenkuang" value="<%=user.getUser_address()%>" name="user_address" type="text" id="shouhuodizhi" size="30" maxlength="30">
                                                                <font color=red>**</font>
                                                            </td>
                                                        </tr>
                                                        <tr bgcolor="#FFFFFF">
                                                            <td width=30% align=right>联系电话：</td>
                                                            <td class=pad><input class="wenbenkuang" value="<%=user.getUser_tel()%>" name="user_tel" maxlength="18" type="text" id="usertel">
                                                                <font color=red>**</font>
                                                            </td>
                                                        </tr>
                                                        <tr bgcolor="#FFFFFF">
                                                            <td width=30% align="right"></td>
                                                            <td class=pad><input class="go-wenbenkuang" type=submit name="submit" value=" 提交信息 ">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </form>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <br>
                    </TD>
                </TR>
                </TBODY>
            </TABLE>
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