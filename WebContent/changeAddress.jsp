<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String errorMessage = (String)request.getAttribute("errorMessage"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>changeAddress</title>
</head>
<body>
<h1>メールアドレスの変更</h1>
<form method="POST" action="ChangeName" accept-charset="UTF-8">
新しいメールアドレス<input type=text name=newAddress><br>
再入力<input type=text name=reNewAddress>
<button type="submit">送信</button>
</form>
</body>
</html>