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
	
		<script>
			$(document).ready(function(){
				console.log("HTML 파싱을 완료한 후에 실행1");
			});
			
			$(function() {
				console.log("HTML 파싱을 완료한 후에 실행2");
			});
			
			$(function() {
				console.log("HTML 파싱을 완료한 후에 실행3");
			});
		
			function alldownloaded() {
				console.log("모든 자원들을 다운로드한 후에 실행");
			}
		</script>
	</head>
	<body onload="alldownloaded()">
		<%for(int i=1; i<=17; i++) {%>
			<img src="<%=application.getContextPath()%>/resources/images/photo<%=i%>.jpg"/>		
		<%}%>
	</body>
</html>