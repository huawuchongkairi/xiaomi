<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的购物车-小米商城</title>
    <style>
        .box1 img{
            position:absolute;
            width: 55px;
            height: 55px;
            display: block;
            background-position: center;
            margin-left: 250px;
            margin-top: 10px;
            /*transition: left 0.3s;*/
        }
        .box1 h1{
            position: absolute;
            display: block;
            background-position: center;
            margin-left: 330px;
            margin-top: 10px;
        }
        .box2{
            background-color: #F5F5F5;
            width: 100%;
            height: 100%;
        }
        table{
            width: 80%;
            position: center;
            height: 80px;
          margin-left: 100px;
            background-color: #FF6700;
            font-size: 20px;
            border: 1px solid black;
        }
        p{
      float: right;
            padding-right: 80px;
            margin-top: 30px;
        }
    </style>
    <script>
        <%
     String a=null,b=null,c=null;
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
       String sql = "select * from 购物车";
       Connection con;
       try {
           con = DriverManager.getConnection(connectionUrl);
          Statement sta=con.createStatement();
          ResultSet re=sta.executeQuery(sql);
          while (re.next()){
          a=re.getString("商品名称");
          b=re.getString("单价");
          c=re.getString("数量");
         %>

        <%
          }
       } catch (SQLException e) {
           e.printStackTrace();
   }

       %>

    </script>
</head>
<link rel="icon" href="./img/favicon.ico">
<body>
<div class="box1" style="border-bottom: 3px orange solid;width: 100%;height: 80px;">
    <img src="./img/logo-mi2.png" alt="">
    <h1>我的购物车</h1>
    <p>个人中心</p>
    <p>我的订单</p>
</div>
<div class="box2">
 <table>
     <tr style="border-bottom: 1px solid black;">
         <td width="30%">商品名称</td>
         <td width="20%">单价</td>
         <td width="20%">数量</td>
         <td width="20%">操作</td>
     </tr>
     <tr>
         <td width="30%"><%=a%></td>
         <td width="20%"><%=b%></td>
         <td width="20%"><%=c%></td>
         <td width="20%">删除</td>
     </tr>
 </table>
</div>

</body>
</html>