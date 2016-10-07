<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String errorMessage = (String)request.getAttribute("errorMessage"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>newRegister</title>

<script>
    /*確認ダイアログ*/
    function submitChk () {
        var flag = confirm ( "こちらの内容で登録してもよろしいですか？\n\n登録したくない場合は[キャンセル]ボタンを押して下さい");
        /* send_flg が TRUEなら送信、FALSEなら送信しない */
        return flag;
    }
</script>

</head>
<body>

<form method="POST" action="NewRegister" accept-charset="UTF-8">
<h1>新規登録</h1>
<% if(errorMessage != null) {%>
<% out.println(errorMessage);%>
<%} %>
<br>

<h3>ユーザーID</h3>
<input type=text name=userID><br>

<h3>パスワード</h3>
<input type=password name=password><br>

<h3>パスワード再入力</h3>
<input type=password name=rePassword><br>

<h3>名前</h3>
姓:<input type=text name=lastName> &emsp;
名:<input type=text name=firstName><br>

<h3>読み(カナ)</h3>
姓:<input type=text name=lastNameKana> &emsp;
名:<input type=text name=firstNameKana><br>

<h3>誕生日</h3>
<input type=text name=birthday><br>

<h3>性別</h3>
<input type=text name=sex><br>

<h3>メールアドレス</h3>
<input type=text name=mailAddress><br>
<br>

&emsp;&emsp;&emsp;<button type="submit" onClick="return submitChk()">登録</button>
</form>
</body>
</html>