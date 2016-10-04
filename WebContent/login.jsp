<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% String errorMessage = (String) request.getAttribute("errorMessage");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>

<form method="POST" action="Login" accept-charset="UTF-8">
<h1> Login</h1>
<% if(errorMessage != null) {%>
<% out.println(errorMessage);%>
<%} %>
<br>
<h3>ユーザーID</h3>
<input type=text name=userID><br>

<h3>パスワード</h3>
<input type=password name=password><br>
<br>

&emsp;&emsp;&emsp;<button type="submit" >送信</button>
<br>
<br>
ユーザーIDまたはパスワードを忘れた方は
<a href="RememberID">
こちら
</a><br>

</form>
</body>
</html>