<%@ page contentType="text/html; charset=UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
		<!-- 자바스크립트 선언부(전역변수, 함수, 클래스 선언) -->
		<script>
			console.log("나 자바스크립트야! - 1");
			console.log("나 자바스크립트야! - 2");
			console.log("나 자바스크립트야! - 3");
		</script>
		
		<script src="<%=request.getContextPath()%>/resources/js/exam01.js"></script>
		<%-- <script src="<%=application.getContextPath()%>/resources/js/exam01.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/exam01.js"></script> --%>
	</head>
	<body>
		<!-- 자동 실행부 -->
		<script>
			console.log("나 자바스크립트야! - 4");
			console.log("나 자바스크립트야! - 5");
		</script>	
	</body>
</html>

