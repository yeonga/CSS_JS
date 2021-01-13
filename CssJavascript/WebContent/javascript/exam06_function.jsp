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
			function fun1(x, y) {
				var result = x + y;
				console.log("result: " + result);
			}
			
			function fun2(end) {
				var sum = 0;
				for(var i=0; i<=end; i++) {
					sum += i;
				}
				console.log("sum: " + sum);
				return sum;
			}
			
			var intervalId1;
			var intervalId2;
			
			function fun3(status) {
				/* while(true) {
					console.log("계속 실행합니다.");
				} */
				
				intervalId1 = setInterval(function() {
					console.log("작업1을 계속 실행합니다.");
				}, 100);
				
				intervalId2 = setInterval(function() {
					console.log("작업2를 계속 실행합니다.");
				}, 100);
			}
			
			function fun4() {
				clearInterval(intervalId1);
				clearInterval(intervalId2);
			}
			
			function fun5() {
				var result = fun2(100);
				console.log("result: " + result);
			}
		</script>
	</head>
	<body>
		<h5>exam06_function.jsp</h5>
		
		<div>
			<button class="btn btn-primary btn-sm" onclick="fun1(3, 5)">fun1() 호출</button>
			<button class="btn btn-primary btn-sm" onclick="fun2(100)">fun2() 호출</button>
			<button class="btn btn-primary btn-sm" onclick="fun3()">fun3() 호출</button>
			<button class="btn btn-primary btn-sm" onclick="fun4()">fun4() 호출</button>
			<button class="btn btn-primary btn-sm" onclick="fun5()">fun5() 호출</button>
		</div>
	</body>
</html>









