<%--
  Created by IntelliJ IDEA.
  User: 朱广成
  Date: 2022/6/22
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page import="com.sun.org.apache.regexp.internal.RE" %>
<%@ page import="sun.misc.Request" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<% request.setCharacterEncoding("utf-8");%>



<%!

   public void pd(String a,String b){
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
       String sql = "insert into 购物车(商品名称,单价,数量) values (?,?,?)";
       Connection con;
       try {
           con = DriverManager.getConnection(connectionUrl);
           PreparedStatement pst=con.prepareStatement(sql);
           pst.setString(1,a);
           pst.setString(2,b);
           pst.setString(3,"1");
           pst.executeUpdate();
       } catch (SQLException e) {
           e.printStackTrace();
       }
   }
%>
   <%
     String j=request.getParameter("i");
     if (j.equals("0")){
         pd("Xiaomi Civi 1S","2299");
     }
    else if (j.equals("1")) {
         pd("Xiaomi 12Pro", "4199");
     }
     else if (j.equals("2"))
         {
             pd("Xiaomi 12","3199");
         }
     else if (j.equals("3"))
     {
         pd("Xiaomi 12X","2399");
     }
     else if (j.equals("4"))
     {
         pd("Xiaomi 11 青春活力版","1799");
     }
     else if (j.equals("5"))
     {
         pd("Xiaomi Civi","2299");
     }
     else if (j.equals("6"))
     {
         pd("RedmiNote 11 Pro+","1999");
     }
     else if (j.equals("7"))
     {
         pd("RedmiNote","1699");
     }
     else if (j.equals("8"))
     {
         pd("RedmiNote 11SE","999");
     }
     else if (j.equals("9"))
     {
         pd("RedmiBook Pro 13","549");
     }
     else if (j.equals("10"))
     {
         pd("Redmi 10A","2699");
     }
     else if (j.equals("11"))
     {
         pd("Redmi K50 Pro","2199");
     }
     else if (j.equals("12"))
     {
         pd("RedmiBook Pro 14","5299");
     }
     else if (j.equals("13"))
     {
         pd("RedmiBook Pro 15","5499");
     }
     else if (j.equals("14")){
         pd("RedmiBook Pro 14 锐龙版","4699");
     }
     else if (j.equals("15")){
         pd("RedmiBook Pro 13","5399");
     }
     else if (j.equals("16")){
         pd("小米笔记本 Pro 14 锐龙版","5499");
     }
     else if (j.equals("17")){
         pd("RedmiBook G 2021 AMd","5499");
     }
%>
<% response.setHeader("refresh", "0;URL=Xiaomi.jsp");%>
<script>

</script>
</body>
</html>
