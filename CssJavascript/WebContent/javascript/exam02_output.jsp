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
			//함수 선언
			function fun1() {
				console.log("fun1() 실행");
				var resultDiv = document.getElementById("result");
				resultDiv.innerHTML += "<img height='100px' src='<%=request.getContextPath()%>/resources/images/photo1.jpg'/>";
			}
		</script>
	</head>
	<body>
		<h5>exam02_output.jsp</h5>
		
		<div>
			<a class="btn btn-success btn-sm" href="javascript:fun1()">동적 내용 넣기</a>
			<button class="btn btn-info btn-sm" onclick="fun1()">동적 내용 넣기</button>
			<input class="btn btn-danger btn-sm" type="button" value="동적 내용 넣기" onclick="fun1()"/>
			<hr/>
			<div id="result" style="background-color:#00ffff"></div>
		</div>
	</body>
</html>






