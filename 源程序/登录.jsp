<%--
  Created by IntelliJ IDEA.
  User: 朱广成
  Date: 2022/6/18
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page import="com.sun.corba.se.impl.orbutil.ObjectStreamClassUtil_1_3" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小米账号-登录</title>
    <style>
        .dl{
           margin-left: 150px;
            background-color: orange;
           border: none;
            width:150px;
            height: 30px;
        }
        .dl:nth-child(1){
            margin-top: 100px;
        }

        p{
            /*float: left;*/
            font-size: 2px;
        }
    </style>
</head>
<link rel="icon" href="./img/favicon.ico">
<body>
<div style="margin-left:100px;border: 3px blue solid;width: 500px;height: 350px">
    <form method="post" action="check-login.jsp">
    <h1 style="margin-left: 150px;color: #96fbc4">登录界面，亲</h1>
<input type="text" value="" placeholder="邮箱/小米ID/手机号码" class="dl" name="账号1">
<br>
<br>
<input type="password" placeholder="密码" class="dl" name="密码1">
<br><br>
<input type="radio" name="ytx"  value="yes" style="margin-left: 150px;float: left"><p>已阅读并同意小米帐号 用户协议 和 隐私政策</p>
<br>
<input type="submit" value="登录" style="background-color:#ff6700;border:none;width: 200px;margin-left: 150px"  >
</form>
    <br>
<input type="button" onclick="window.location.href='register.jsp';"value="一键注册" style="background-color:#FF6700;margin-left: 150px;border: none;width: 200px">
</div>
</body>
</html>
