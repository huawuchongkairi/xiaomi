<%--
  Created by IntelliJ IDEA.
  User: 朱广成
  Date: 2022/6/19
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小米账号-注册</title>
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

            font-size: 2px;
        }

    </style>
    <script>

        function zc() {
            <%
     String zh=request.getParameter("账号");;
     String mm=request.getParameter("密码");
     if (zh!=null&mm!=null){
     try {
         Class.forName( "com.microsoft.sqlserver.jdbc.SQLServerDriver");
     } catch (ClassNotFoundException e1) {
         // TODO Auto-generated catch block
         e1.printStackTrace();
     }
     String connectionUrl =
             "jdbc:sqlserver://localhost:1433;"
                     + "databaseName=web小米;"
                     + "user=sa;"
                     + "password=123456;";
     String sql = "insert into 注册(账号,密码) values (?,?) ";
     Connection con;
     try {
         con = DriverManager.getConnection(connectionUrl);
         PreparedStatement pst=con.prepareStatement(sql);
         pst.setString(1,zh);
         pst.setString(2,mm);
         pst.executeUpdate();

     } catch (SQLException e) {
         e.printStackTrace();
     }
     }
 %>
            alert("注册成功");
        }
    </script>
</head>
<link rel="icon" href="./img/favicon.ico">
<body>
<form>
<div style="margin-left:100px;border: 3px blue solid;width: 500px;height: 350px">
<h1 style="margin-left: 150px;color: #96fbc4">注册界面，亲</h1>
<input type="text"  placeholder="邮箱/小米ID/手机号码" class="dl" name="账号">
<br>
<br>
<input type="password" placeholder="密码" class="dl" name="密码">
<br><br>
    <input type="submit" onclick="zc()"value="点击注册" style="background-color:#FF6700;margin-left: 150px;border: none;width: 200px">
    <br><br>
    <input type="button" onclick="window.location.href='登录.jsp';" value="返回登陆界面" style="background-color:#FF6700;margin-left: 150px;border: none;width: 200px">
</div>
</form>
</body>
</html>
