<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
	아이디    		: <input type="text" name="mid" id="mid"><br>
	비밀번호 		: <input type="password" name="mpassword" id="mpassword"><br>
	비밀번호 체크 	: <input type="password" name="mpasswordchk" id="mpasswordchk"><br>
	이름       		: <input type="text" name="mname" id="mname"><br>
	<button type="button" onclick="loinForm()">확인</button>
	<button type="button" id="cancelBtn">취소</button>
</body>
<script type="text/javascript">
	
	$(function(){
		$("#cancelBtn").click(function(){
			history.back();
		});
	});
	
	function loinForm() {
		// 아이디 벨리데이션
		alert("최소 7자리 이상 11자리 이하입니다.");
		/* if($("#mid").val()) {
			if($("#mid").val().length < 7 ) {
				alert("최소 7자리 이상 11자리 이하입니다.");
				return;
			} else if ($("#mid").val().length > 12) {
				alert("최소 7자리 이상 11자리 이하입니다.");
				return;
			}
		} */
/* 		// 비밀번호 벨리데이션
		if($("#mpaasword").val() != "") {
			if($("#mpaasword").val() != $("#mpasswordchk").val()) {
				alert("비밀번호가 일치하지 않습니다.");
				$("#mpaasword").val().focus();
				return;
			} 
		}
		if(!$(isNaN($("#mphone").val()))) {
			alert("숫자로 입력하셔야 합니다.");
			return;
		} */
		
		
		let joinMemberVo = {
				mid : $("#mid").val().trim(),
				mpassword : $("#mpassword").val(),
				mname : $("#mname").val()
		}
		console.log(joinMemberVo + ": joinMemberVo");
		$.ajax({
			url         : "/joinMember",
	        type        : "post",
	        contentType : "application/json;charset=utf-8;",
	        data        : JSON.stringify(joinMemberVo),
	        dataType    : "json",
	        success     : function (data) {
	        	alert("회원가입 성공");
	        }
		});
	}
	
</script>
</html>