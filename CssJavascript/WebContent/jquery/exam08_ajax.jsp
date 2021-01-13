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
				location.href = "exam08_next_image_1.jsp";
			}
			
			function fun2() {
				$.ajax({
					url:"exam08_next_image_1.jsp",
					success: function(data) {
						$("#content").html(data);
					}
				});
			}
		</script>
	</head>
	<body>
		<button onclick="fun1()">페이지 전체를 이동</button>
		<button onclick="fun2()">비동기로 내용 채워넣기</button>
		<hr/>
		<div id="content">
			<div>
				<%for(int i=1; i<=5; i++) {%>
					<img src="<%=application.getContextPath()%>/resources/images/photo<%=i%>.jpg" height="100px"/>
				<%}%>
			</div>
		</div>
	</body>
</html>




