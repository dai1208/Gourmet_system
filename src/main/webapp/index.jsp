<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <body bgcolor="#CCFFCC">
  新規登録する<br />
    <form action="./RegistInfo" method="post">
      ID <input type="text" name="stu_id" required/><br />
      名前<input type="text" name="stu_name" required/><br />
      パスワード<input type="text" name="stu_password" required/><br />
      <input type="submit" name="OK" />
    </form>
    <br />
    <font size="4" color="blue">ログインする</font>
    <a href="/StuInfo/LoginInfo">Click here! </a>
  </body>
</html>
