<%--
  Created by IntelliJ IDEA.
  User: 朱广成
  Date: 2022/6/20
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
       <% request.setCharacterEncoding("utf-8");%>
<%!
      String zh,mm,s1;
      int flag=1;
      public void judge(){
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
          String sql = "select * from 注册 where 账号='"+zh+"'";
          Connection con;
          try {
              con = DriverManager.getConnection(connectionUrl);
              Statement sta=con.createStatement();
              ResultSet re=sta.executeQuery(sql);
              while (re.next()){
                  s1=re.getString("密码");
              }
              if (s1.equals(mm))
                  flag=0;
              else flag=1;
          } catch (SQLException e) {
              e.printStackTrace();
          }
      }
%>
<%
    zh=request.getParameter("账号1");
    mm=request.getParameter("密码1");
    judge();
    if (flag==0){
//        session.setAttribute("");
        s1=null;
        response.sendRedirect("Xiaomi.jsp");
    }
    else
    {
        out.print("<h2><div style=text-align:center;>账号或密码错误<h2></div>");
        out.print("<h2><div style=text-align:center;>3秒后返回登录页面<h2></div>");
        response.setHeader("refresh","3;url=http://localhost:8080/web_war_exploded/mi/%E7%99%BB%E5%BD%95.jsp");
    }
%>
</body>
</html>
