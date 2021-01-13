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
		<h5>HTML EventHandling</h5>
		<button onclick="fun1()">버튼1</button>
		<div id="div1" onmouseenter="fun2()" onmouseleave="fun3()" style="border:1px solid black; height:100px;">마우스가 들어오거나 나가기 해보세요.</div>
		<script>
			function fun1() {
				console.log("버튼1 이벤트 처리함");
			}
			function fun2() {
				console.log("DIV 마우스 인 이벤트 처리함");
				document.querySelector("#div1").style.backgroundColor = "red";
			}
			function fun3() {
				console.log("DIV 마우스 아웃 이벤트 처리함");
				document.querySelector("#div1").style.backgroundColor = "white";
			}
		</script>
	
		<h5>DOM EventHandling</h5>
		<button id="btn2">버튼2</button>
		<button id="btn3">버튼3</button>
		<script>
			document.querySelector("#btn2").onclick = function() {
				console.log("버튼2 이벤트 처리함");
			};
			document.querySelector("#btn3").addEventListener("click", function() {
				console.log("버튼3 이벤트 처리함");
			});
		</script>
		
		<h5>jQuery EventHandling</h5>
		<button id="btn4">버튼4</button>
		<button id="btn5">버튼5</button>
		<script>
			$("#btn4").click(function() {
				console.log("버튼4 이벤트 처리함");
			});
			
			$("#btn5").on("click", function() {
				console.log("버튼5 이벤트 처리함");
			});
		</script>
	</body>
</html>


















