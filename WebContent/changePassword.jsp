<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String errorMessage = (String)request.getAttribute("errorMessage");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>changePassword</title>

<script>
    /*確認ダイアログ*/
    function submitPassword () {
        var flag = confirm ( "パスワードを変更してもよろしいですか？\n\n変更したくない場合は[キャンセル]ボタンを 押して下さい");
        /* send_flg が TRUEなら送信、FALSEなら送信しない */
        return flag;
    }
</script>

</head>
<body>
<%@ include file="menu.jsp"%>
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
<button type="submit" onClick = "return submitPassword()">送信</button>
</form>
</body>
</html>