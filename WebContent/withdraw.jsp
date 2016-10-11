<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>withdraw</title>

<script>
    /*確認ダイアログ*/
    function submitWithdraw () {
        var flag = confirm ( "本当に退会してもよろしいですか？\n\n退会したくない場合は[キャンセル]ボタンを 押して下さい");
        /* send_flg が TRUEなら送信、FALSEなら送信しない */
        return flag;
    }
</script>

</head>
<body>
<%@ include file="menu.jsp"%>

<form method="POST" action="Withdraw" accept-charset="UTF-8">
<h1>退会</h1>

不都合がなければ、退会理由の記入にご協力ください。
<h3>退会理由</h3>
<input type=text name=reason>

<button type=submit onClick="return submitWithdraw()">送信</button>
</form>

</body>
</html>