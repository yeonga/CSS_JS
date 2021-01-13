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
			//전역 변수
			var var1 = 10;
			var var2 = "자바스크립트";
			var var3 = true;
			
			//지역 변수(함수 선언 안에서 선언된 변수)
			//자바스크립트는 함수 레벨의 지역 변수만 있음
			function fun1() {
				var var4 = 3.14;
				
				if(true) {
					var var5 = "나는 어떨까요?";
				}
				
				console.log("var1: " + var1);
				console.log("var2: " + var2);
				console.log("var3: " + var3);
				console.log("var4: " + var4);
				console.log("var5: " + var5);
			}
			
			//전역 변수 출력
			console.log("var1: " + var1);
			console.log("var2: " + var2);
			console.log("var3: " + var3);
			//console.log("var4: " + var4);
			//console.log("var5: " + var5);
			
			//함수 호출
			//fun1();
		</script>
	</head>
	<body>
		<h5>exam03_variables.jsp</h5>
		
		<button class="btn btn-danger btn-sm" onclick="fun1()">함수 호출</button>
	</body>
</html>




