<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String errorMessage = (String)request.getAttribute("errorMessage"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>inquiry</title>
</head>
<body>
<%@ include file="menu.jsp"%>

<h1>問い合わせ</h1>

<%if(errorMessage != null) {%>
<%out.println(errorMessage); %>
<%} %>

<form method="POST" action="Inquiry" accept-charset="UTF-8">

<h3>名前</h3>
姓<input type=text name=localName> &emsp; 名<input type=text name=firstName>

<h3>メールアドレス</h3>
<input type=text name=mailAddress>

<h3>問い合わせ内容</h3>
<input type=text name=content>
<br>

<button type=submit>送信</button>

</form>
</body>
</html>