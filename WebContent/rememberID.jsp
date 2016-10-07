<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% String errorMessage = (String)request.getAttribute("errorMessage"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>rememberID</title>

<script>
    /*確認ダイアログ*/
    function submitChk () {
        var flag = confirm ( "こちらのアドレスに送信してもよろしいですか？\n\n送信したくない場合は[キャンセル]ボタンを押して下さい");
        /* send_flg が TRUEなら送信、FALSEなら送信しない */
        return flag;
    }
</script>

</head>
<body>

<h1>ユーザーIDまたはパスワードをお忘れの場合</h1><br>

<% if(errorMessage != null) {%>
<% out.println(errorMessage);%>
<%} %>
<br>

<form method="POST" action="RememberIDSuccess" accept-charset="UTF-8">

<h3>登録されたメールアドレス宛にあなたのユーザー情報をお送りします</h3>
<h3>メールアドレス</h3>
<input type=text name=mailAddress><br>
<br>

&emsp;&emsp;&emsp;
<button type="submit" onClick = "return submitChk()">送信</button>
</form>

</body>
</html>