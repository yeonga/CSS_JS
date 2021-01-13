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
		<script type="text/javascript">
			function fun1() {
				//window의 크기
				console.log(window.innerWidth + "," + window.innerHeight);
				
				var myWindow = window.open("exam11_popup.jsp", "myWindow", "width=300, height=150");
				
				//window의 이동
				var i = 0;
				var intervalId = setInterval(function() {
					myWindow.moveTo(i, 200);
					i += 10;
				}, 100);
				
			}
			
			function fun2() {
				//운영체제의 Screen의 크기
				console.log(screen.width + "," + screen.height);				
			}
			
			function fun3() {
				//화면을 다시 로드(리프레쉬)
				//location.reload();
				
				//다른 URL로 요청
				location.href = "<%=request.getContextPath()%>/bootstrap/exam03_layout.jsp";
			}
		</script>
	</head>
	<body>
		<h5>exam13_bom.jsp</h5>
		<hr/>
		<div class="btn-group">
			<button type="button" class="btn btn-primary" onclick="fun1()">window 객체</button>
			<button type="button" class="btn btn-primary" onclick="fun2()">screen 객체</button>
			<button type="button" class="btn btn-primary" onclick="fun3()">location 객체</button>
		</div>
		</hr/>
	</body>
</html>