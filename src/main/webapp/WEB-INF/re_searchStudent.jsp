<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>IDかパスワードに間違いがあります。もう一度入力してください。</title>
</head>
<body>
<form action="./RegistInfo" method="post">
  ID <input type="text" name="stu_id" /><br />
  名前<input type="text" name="stu_name" /><br />
  パスワード<input type="text" name="stu_password" /><br />
  <input type="submit" name="OK" />
</form>
<br />
ログインする
<a href="/StuInfo/LoginInfo">Click here! </a>
</body>
</html>