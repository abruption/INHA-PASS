<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>J해외직구 통관조회 및 배송조회 :: INHA-PASS/title>

<!--  메뉴 선택 시 hover를 적용하기 위해서는 include문을 제외해야 함. -->

</head>

<body>

	<!--  Header 부분 시작  -->
	<jsp:include page="header.jsp" flush="false"></jsp:include>
	<!--  Header 부분 종료  -->	
	
	<div class="container">
			<div class="jumbotron">
				<jsp:include page="sweetTrackerAPI.jsp" flush="false" />
			</div>
		</div>
		
	<jsp:include page="footer.jsp" flush="false" /> 	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>