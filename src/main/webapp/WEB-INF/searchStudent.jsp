<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <body bgcolor="#CCFFCC	">
    <font size="4" color="red">IDとパスワードを入力してください。</font><br />
    <form action="./LoginInfo" method="post">
      ID<input type="text" name="stu_id" required/>  <br />
      パスワード<input type="text" name="stu_password" required/>  <br />
      <input type="submit" name="OK" />
    </form>
  </body>
</html>
