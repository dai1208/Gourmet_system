<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <body bgcolor="#CCFFCC">
    <form action="./ShopRegistInfo" method="post">
      店名 <input type="text" name="shop_name" required/><br />
      ニックネーム<input type="text" name="shop_nickname" required/><br />
      コメント<input type="text" size="100" name="shop_eva" required/><br />
      <input type="submit" name="OK" />
    </form>
    <br />
    <font size="4" color="blue">トップに戻る</font>
        <a href="/StuInfo/ShopRegistInfo">Clicl here!</a>
  </body>
</html>
