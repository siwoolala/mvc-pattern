<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Form</title>
</head>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#cancelBtn").click(function(){
			history.back();
		});
	});
</script>
<body>
	<form action="joinForm" method="post">
	아이디    : <input type="text" name="id" id="id">
	비밀번호 : <input type="password" name="password" id="password">
	이름       : <input type="text" name="name" id="name">
	<button type="submit">확인</button>
	<button type="button" id="cancelBtn">취소</button>
	</form>
</body>
</html>