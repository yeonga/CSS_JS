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
	</head>
	<body>
		<h5>exam03_style.jsp</h5>
		<hr/>
		<p>
			<button class="btn btn-success btn-sm" onclick="fun1()">div1의 스타일 변경</button>
			<button class="btn btn-success btn-sm" onclick="fun2()">div2의 스타일 변경</button>
			<button class="btn btn-success btn-sm" onclick="fun3()">div3의 보이기</button>
			<button class="btn btn-success btn-sm" onclick="fun4()">div3의 숨기기</button>
			<script>
				function fun1() {
					var div1 = $("#div1");
					div1.css("background-color", "yellow");
					div1.css("color", "red");
				}
				
				function fun2() {
					$("#div2").css("background-color", "#00ffff");
					$("#div2").css("color", "#00ff00");
				}
				
				function fun3() {
					$("#div3").show();
				}
				
				function fun4() {
					$("#div3").hide();
				}
			</script>			
			<div id="div1" style="height:100px; border:1px solid red;">div1의 내용</div>
			<div id="div2" style="height:100px; border:1px solid blue"">div2의 내용</div>
			<div id="div3" style="height:100px; border:1px solid green"">div3의 내용</div>
		</p>
	</body>
</html>





