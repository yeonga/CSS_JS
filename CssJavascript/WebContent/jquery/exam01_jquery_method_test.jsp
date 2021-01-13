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
			function fun1() {
				$("img").attr("src", "<%=request.getContextPath()%>/resources/images/photo6.jpg");
			}
			
			function fun2() {
				$(".class1").attr("src", "<%=request.getContextPath()%>/resources/images/photo7.jpg");
			}
			
			function fun3() {
				$("#img1").attr("src", "<%=request.getContextPath()%>/resources/images/photo7.jpg");
			}
		</script>
	</head>
	<body>
		<h5>exam01_jquery_method_test.jsp</h5>
		
		<button onclick="fun1()">tab 이름을 검색된 모든 객체를 일괄 변경</button>
		<button onclick="fun2()">class 이름으로 검색된 모든 객체를 일괄 변경</button>
		<button onclick="fun3()">id 이름으로 으로 검색된 모든 객체를 일괄 변경</button>
		
		<hr/>
		
		<img class="class1" src="<%=request.getContextPath()%>/resources/images/photo1.jpg" height="100px"/>
		<img class="class1" src="<%=request.getContextPath()%>/resources/images/photo2.jpg" height="100px"/>
		<img class="class2" src="<%=request.getContextPath()%>/resources/images/photo3.jpg" height="100px"/>
		<img class="class2" src="<%=request.getContextPath()%>/resources/images/photo4.jpg" height="100px"/>
		<img id="img1" src="<%=request.getContextPath()%>/resources/images/photo5.jpg" height="100px"/>
	</body>
</html>




