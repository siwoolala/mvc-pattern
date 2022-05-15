<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h2>List 페이지</h2>
  <p>오늘을 잊지 말고 항상 공부해야해 시우야</p>
  <button type="button" class="btn btn-outline-secondary" onclick="selectEmpList()">조회</button>
<button type="button" class="btn btn-outline-success" onclick="insertBoard()">신규</button>
<button type="button" class="btn btn-outline-info" onclick="updateEmp()">수정</button>
<button type="button" class="btn btn-outline-warning" onclick="delectEmp()">삭제</button>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>날짜</th>
        <th>조회수</th>
      </tr>
    </thead>
    <tbody>
    </tbody>
  </table>
</div>

</body>
<script src="${pageContext.request.contextPath}/common/js/common-lims.js"></script><!--LIMS공통 js -->
<script type="text/javascript">
	$(document).ready(function() {
		selectEmpList(); //emptable 조회
	});
	
	//selectEmpList 리스트 조회
	function selectEmpList() {
		
		alert("호출");
		
        let selectVO = {
        		no: 1,
        		empNm: "박미자",
        		empZipCd: 65434
        };
        
        $.ajax({
        	url         : "/lims/PrjtIngr/selectEmpBasicsT.ajax",
	        type        : "post",
	        contentType : "application/json;charset=utf-8;",
	        data        : JSON.stringify(selectVO),
	        dataType    : "json",
	        success     : function (data) {
	        	console.log(data);
	            setPrjtIngrList(data); //표준물질 테이블 세팅
	        }
        });
	}
	
	function insertBoard() {
		
		$.ajax({
			url 		: "board/insertBoardVO.ajax",
			type		: "post",
			contentType : "application/json;charset=utf-8;",
			data		: JSON.stringify(selectVO),
			success		: function(data) {
				alert("성공");
			}
		});
	}
	
</script>
</html>
