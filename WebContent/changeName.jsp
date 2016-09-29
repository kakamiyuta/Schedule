<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String errorMessage = (String)request.getAttribute("errorMessage");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>changeName</title>
</head>
<body>
<%@ include file="menu.jsp" %>

<h1>名前の変更</h1>

<%if(errorMessage != null){ %>

<% out.println(errorMessage);%>
<% }else{%>

<% out.println("新しい名前を入力してください");%>
<%} %>

<form method="POST" action="ChangeName">
苗字:<input type=text name="lastName"> &emsp;
名前:<input type=text name="firstName"><br>
苗字(読み):<input type=text name="lastNameKana"> &emsp;
名前(読み):<input type=text name="firstNameKana"><br>
<button type=submit> 送信 </button>
</form>
</body>

</html>