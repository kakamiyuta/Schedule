<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String errorMessage = (String)request.getAttribute("errorMessage"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>changeAddress</title>

<script>
    /*確認ダイアログ*/
    function submitAddress () {
        var flag = confirm ( "メールアドレスを変更してもよろしいですか？\n\n変更したくない場合は[キャンセル]ボタンを 押して下さい");
        /* send_flg が TRUEなら送信、FALSEなら送信しない */
        return flag;
    }
</script>

</head>
<body>
<%@ include file="menu.jsp" %>

<h1>メールアドレスの変更</h1>

<%if(errorMessage != null){ %>

<% out.println(errorMessage);%>
<% }else{%>

<% out.println("新しいメールアドレスを入力してください");%>
<%} %>

<form method="POST" action="ChangeAddress" accept-charset="UTF-8">
新しいメールアドレス<input type=text name=newAddress><br>
再入力<input type=text name=reNewAddress>

<button type="submit" onClick="return submitAddress()">送信</button>

</form>
</body>
</html>