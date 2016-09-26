<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>newRegister</title>
</head>
<body>

<form method="POST" action="NewRegister" accept-charset="UTF-8">
<h1>新規登録</h1>
ユーザーID:<input type=text name=userID><br>
パスワード:<input type=password name=password><br>
苗字:<input type=text name=lastName> &emsp;
名前:<input type=text name=firstName><br>
誕生日:<input type=text name=birthday><br>
性別:<input type=text name=sex><br>
メールアドレス:<input type=text name=mailAddress>

<button type="submit" >登録</button>
</form>
</body>
</html>