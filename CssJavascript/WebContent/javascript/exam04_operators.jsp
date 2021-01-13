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
				var var1 = 3;
				var var2 = "3";
				
				//변수값의 타입 조사하기
				console.log(typeof var1);
				console.log(typeof var2);
				
				//모든 값 비교는 == 을 사용
				console.log(var1 == 3);
				console.log(var2 == "3");
				
				//타입이 일치하는지 비교하는 방법(===)
				console.log(var1 == var2);
				console.log(var1 === var2);
				
			}
		</script>
	</head>
	<body>
		<button class="btn btn-danger btn-sm" onclick="fun1()">함수 호출</button>
	</body>
</html>