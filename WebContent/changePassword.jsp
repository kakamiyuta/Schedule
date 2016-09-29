<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String errorMessage = (String)request.getAttribute("errorMessage");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>changePassword</title>
</head>
<body>

<form method="POST" action="ChangePasswordConfirm" accept-charset="UTF-8">
<h1>
パスワード変更
</h1>

<%if(errorMessage != null){ %>
<% out.println(errorMessage);%>
<% }%><br>

現在のパスワード:<input type=password name=password><br>
新しいパスワード:<input type=password name=newPassword><br>
パスワード再入力:<input type=password name=reNewPassword><br>
<button type="submit" >送信</button>
</form>
</body>
</html>