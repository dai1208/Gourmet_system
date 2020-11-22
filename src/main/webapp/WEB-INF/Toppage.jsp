<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!-- beans.Studentをimportする -->
<%@ page import= "beans.Student" %>
<%@ page import = "java.sql.*" %>
<html>
  <head>
    <title>トップページ</title>
  </head>
  <body bgcolor="#CCFFCC">
        <font size="6" color="red">店舗情報一覧</font><hr>
  <%
  Class.forName("com.mysql.jdbc.Driver");
  String DRIVER_URL = "jdbc:mysql://localhost:3306/food?characterEncoding=utf8&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=GMT%2B9:00&rewriteBatchedStatements=true";
  String USER_NAME = "root";
  String PASSWORD = "Bwtkuv48";
  Connection conn = DriverManager.getConnection(DRIVER_URL, USER_NAME, PASSWORD);

  Statement stmt = conn.createStatement();
  String strSql = "SELECT * FROM shop_info";
  ResultSet rs = stmt.executeQuery(strSql);
  while(rs.next()){

	  String strShopname = rs.getString("shop_name");
	  String strShopnickname = rs.getString("shop_nickname");
	  String strShopeva = rs.getString("shop_eva");

  %>
      店舗名:<%=strShopname %><br>
      投稿者のニックネーム:<%=strShopnickname %><br>
      評価:<%=strShopeva %><br>

      <hr>
  <%
  }
	  conn.close();
  %>
 	<font size="4" color="blue">レビューする</font>
          <a href="./review.jsp">Click here!</a><br><br>

     <body >
        <font size="6" color="red">みんなのコメント</font><hr>
  <%
  Class.forName("com.mysql.jdbc.Driver");
  conn = DriverManager.getConnection(DRIVER_URL, USER_NAME, PASSWORD);
  stmt = conn.createStatement();
  strSql = "SELECT * FROM comment";
  rs = stmt.executeQuery(strSql);
  while(rs.next()){
	  int intId = rs.getInt("comment_id");
	  String strComment = rs.getString("comment");

  %>
  	  <%=intId%><br>
  	  <%=strComment %><br>

      <hr>
  <%
  }
	  conn.close();
  %>
	<font size="4" color="blue">コメントする</font>
  <a href="./comment.jsp">Click here!</a><br><br>

	<font size="4" color="blue">ログアウトする</font>
  <a href="./index.jsp">Click here!</a><br><br>
  </body>
</html>