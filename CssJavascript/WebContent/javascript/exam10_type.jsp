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
			var var1 = 3;
			var var2 = true;
			var var3 = {name:"홍길동", age:30};
			//---------------------------------
			var var4 = function() {
				console.log("익명함수 실행");
			};
			console.log(typeof var4);
			var4();
			//---------------------------------
			function fun1() {
				console.log("fun1() 실행");
			}
			fun1();
			//---------------------------------
			var var5 = function() {
				console.log("작업5를 실행합니다.");
			};
			intervalId = setInterval(var5, 1000);
			//---------------------------------
			function var6() {
				console.log("작업5를 실행합니다.");
			}
			intervalId = setInterval(var6, 1000);
		</script>
	</head>
	<body>
	
	</body>
</html>







