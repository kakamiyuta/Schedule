<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String errorMessage = (String)request.getAttribute("errorMessage"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>inputSchedule</title>
</head>
<body>
<h1>予定入力</h1>
<%if(errorMessage != null) {%>
<% out.println(errorMessage);%>
<% }%>
<form method="POST" action="InputConfirm" accept-charset="UTF-8">
予定<input type="text" name="scheduleName"><br>
開始<input type="text" name="startTime"><br>
終了<input type="text" name="endTime"><br>
コメント<input type="text" name="comment"><br>
<button type="submit"> OK </button>
</form>
</body>
</html>