<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String errorMessage = (String)request.getAttribute("errorMessage"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>inputSchedule</title>

<script>
    /*確認ダイアログ*/
    function submitSchedule () {
        var flag = confirm ( "以下の内容で予定を登録してもよろしいですか？\n\n登録したくない場合は[キャンセル]ボタンを押して下さい");
        /* send_flg が TRUEなら送信、FALSEなら送信しない */
        return flag;
    }
</script>

</head>
<body>
<%@ include file="menu.jsp"%>
<h1>予定入力</h1>
<%if(errorMessage != null) {%>
<% out.println(errorMessage);%>
<% }%>
<form method="POST" action="InputSchedule" accept-charset="UTF-8">
<h3>予定</h3>
<input type="text" name="scheduleName"><br>

<h3>開始</h3>
<select name="year">
<% for(int i=2016; i<2019; i++){%>
<option>
<% out.println(i); %>
</option>
<% }%>
</select>
年

<select name="month">
<% for(int i=1; i<13; i++){%>
<option>
<% out.println(i); %>
</option>
<% }%>
</select>
月

<select name="day">
<% for(int i=1; i<32; i++){%>
<option>
<% out.println(i); %>
</option>
<% }%>
</select>
日

<select name="hour">
<% for(int i=0; i<24; i++){%>
<option>
<% out.println(i); %>
</option>
<% }%>
</select>
時

<select name="">
<% for(int i=0; i<60; i++){%>
<option>
<% out.println(i); %>
</option>
<% }%>
</select>
分

<h3>終了</h3>
<select name="year">
<% for(int i=2016; i<2019; i++){%>
<option>
<% out.println(i); %>
</option>
<% }%>
</select>
年

<select name="month">
<% for(int i=1; i<13; i++){%>
<option>
<% out.println(i); %>
</option>
<% }%>
</select>
月

<select name="day">
<% for(int i=1; i<32; i++){%>
<option>
<% out.println(i); %>
</option>
<% }%>
</select>
日

<select name="hour">
<% for(int i=0; i<24; i++){%>
<option>
<% out.println(i); %>
</option>
<% }%>
</select>
時

<select name="">
<% for(int i=0; i<60; i++){%>
<option>
<% out.println(i); %>
</option>
<% }%>
</select>
分


<h3>コメント</h3>
<input type="text" name="comment"><br>

<br>
&emsp;&emsp;&emsp;
<button type="submit" onClick="return submitSchedule()"> OK </button>
</form>
</body>
</html>