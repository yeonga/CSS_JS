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
		<style type="text/css">
			div {
				margin: 3px;
			}
		</style>
	</head>
	<body>
		<h5>exam11_built_in_function.jsp</h5>
		<hr/>
		<div>
			<button class="btn btn-info btn-sm" onclick="globalFunction()">Global Function</button>
			<script>
				function globalFunction() {
					var var1 = "3";
					var var2 = "5.5";
					var result = parseInt(var1) + parseFloat(var2);
					console.log("result: " + result);
				}
			</script>
		</div>
		
		<div>
			<button class="btn btn-info btn-sm" onclick="windowMethod1()">Window Method1 - alert()</button>
			<script>
				function windowMethod1() {
					//브라우저 자체를 객체화 한 것: window (생략 가능)
					//window.alert("나 보여~");
					alert("나 보여~");
				}
			</script>
		</div>
		
		<div>
			<button class="btn btn-info btn-sm" onclick="windowMethod2()">Window Method - setInterval()</button>
			<button class="btn btn-danger btn-sm" onclick="windowMethod3()">Window Method - clearInterval()</button>
			<script>
				var intervalId;
				function windowMethod2() {
					intervalId = setInterval(function() {
						console.log("작업1을 실행합니다.");
					}, 1000);
				}
				function windowMethod3() {
					clearInterval(intervalId);
				}
			</script>
		</div>
		
		<div>
			<button class="btn btn-info btn-sm" onclick="windowMethod4()">Window Method - setTimeout()</button>
			<button class="btn btn-danger btn-sm" onclick="windowMethod5()">Window Method - clearTimeout()</button>
			<script>
				var timeoutId;
				function windowMethod4() {
					timeoutId = setTimeout(function() {
						console.log("알람이 울립니다.");
					}, 5000);
				}
				function windowMethod5() {
					clearTimeout(timeoutId);
				}
			</script>
		</div>
		
		<div>
			<button class="btn btn-info btn-sm" onclick="windowMethod6()">Window Method - open()</button>
			<script>
				function windowMethod6() {
					//open("https://tomcat.apache.org", "_blank");
					//open("https://tomcat.apache.org", "_parent");
					//open("https://tomcat.apache.org", "_self");
					open("exam11_popup.jsp", "popup", "width=300,height=200");
				}
			</script>
		</div>
	</body>
</html>






