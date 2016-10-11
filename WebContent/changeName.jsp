<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String errorMessage = (String)request.getAttribute("errorMessage");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>changeName</title>

<script>
    /*確認ダイアログ*/
    function submitName () {
        var flag = confirm ( "名前を変更してもよろしいですか？\n\n変更したくない場合は[キャンセル]ボタンを 押して下さい");
        /* send_flg が TRUEなら送信、FALSEなら送信しない */
        return flag;
    }
</script>

</head>
<body>
<%@ include file="menu.jsp" %>

<h1>名前の変更</h1>

<%if(errorMessage != null){ %>

<% out.println(errorMessage);%>
<% }else{%>

<% out.println("新しい名前を入力してください");%>
<%} %>

<form method="POST" action="ChangeName" accept-charset="UTF-8">
苗字:<input type=text name="lastName"> &emsp;
名前:<input type=text name="firstName"><br>
苗字(読み):<input type=text name="lastNameKana"> &emsp;
名前(読み):<input type=text name="firstNameKana"><br>
<button type="submit" onClick="return submitName()"> 送信 </button>
</form>
</body>

</html>