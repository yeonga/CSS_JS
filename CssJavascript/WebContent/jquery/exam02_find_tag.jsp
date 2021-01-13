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
		<h5>exam12_find_tag.jsp</h5>
		<hr/>
		<p>
			<button class="btn btn-success btn-sm" onclick="fun1()">img1의 그림 변경</button>
			<button class="btn btn-success btn-sm" onclick="fun2()">img1의 그림 변경</button>
			<script>
				function fun1() {
					$("#img1").attr("src", "<%=request.getContextPath()%>/resources/images/photo2.jpg");
				}
				function fun2() {
					$("#img1").attr("src", "<%=request.getContextPath()%>/resources/images/photo1.jpg");
				}
			</script>			
			<div>
				<img id="img1" src="<%=request.getContextPath()%>/resources/images/photo1.jpg" height="100px"/>
			</div>
		</p>
		
		<p>
			<button class="btn btn-success btn-sm" onclick="fun3()">모든 img 그림 변경</button>
			<script>
				function fun3() {
					$("img").attr("src", "<%=request.getContextPath()%>/resources/images/photo4.jpg");
				}
			</script>
			<div>
				<img src="<%=request.getContextPath()%>/resources/images/photo2.jpg" height="100px"/>
				<img src="<%=request.getContextPath()%>/resources/images/photo3.jpg" height="100px"/>
			</div>
		</p>
		
		<p>
			<button class="btn btn-success btn-sm" onclick="fun4()">같은 class 그림 변경</button>
			<script>
				function fun4() {
					$(".class1").attr("src", "<%=request.getContextPath()%>/resources/images/photo5.jpg");
				}
			</script>
			<div>
				<img class="class1" src="<%=request.getContextPath()%>/resources/images/photo2.jpg" height="100px"/>
				<img class="class1" src="<%=request.getContextPath()%>/resources/images/photo3.jpg" height="100px"/>
			</div>
		</p>
		
		<p>
			<button class="btn btn-success btn-sm" onclick="fun5()">같은 속성값을 갖는 태그 찾기</button>
			<script>
				function fun5() {
					$("input[type=image]").attr("src", "<%=request.getContextPath()%>/resources/images/photo8.jpg");
				}
			</script>
			<div>
				<input type="image" src="<%=request.getContextPath()%>/resources/images/photo6.jpg" height="100px"/>
				<input type="image" src="<%=request.getContextPath()%>/resources/images/photo7.jpg" height="100px"/>
				<input type="text"/>
				<input type="submit" value="전송"/>
			</div>
		</p>
		
		<p>
			<button class="btn btn-success btn-sm" onclick="fun6()">체크된 것만 가져오기</button>
			<script>
				function fun6() {
					var hobbyList = $("input[name=hobby]:checked");
					for(var i=0; i<hobbyList.length; i++) {
						var hobby = hobbyList[i];
						console.log(hobby.value);
					}
				}
			</script>
			<div>
				<input name="hobby" type="checkbox" value="1"/>영화
				<input name="hobby" type="checkbox" value="2" checked/>여행
				<input name="hobby" type="checkbox" value="3"/>게임
				<input name="hobby" type="checkbox" value="4" checked/>음악
				<input name="hobby" type="checkbox" value="5"/>산책
			</div>
		</p>
	</body>
</html>





