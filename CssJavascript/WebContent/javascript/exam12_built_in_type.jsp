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
		<h5>exam12_built_in_type.jsp</h5>
		<hr/>
		<p>
			<a href="javascript:fun1()">String 조작하기</a>
			<script>
				function fun1() {
					//길이 얻기
					var ssn = "981225-1234567";
					if(ssn.length != 14) {
						console.log("잘못 입력된 주민번호입니다.");
					}
					//잘라내기
					var firstPart = ssn.substr(2, 4);
					console.log("firstPart: " + firstPart);
					
					firstPart = ssn.substring(2, 6);
					console.log("firstPart: " + firstPart);
					//문자 얻기
					var sex = ssn.charAt(7)
					if(sex == 1 || sex==3) {
						console.log("남자");
					} else if(sex == 2 || sex == 4) {
						console.log("여자");
					}
					//분리하기
					var tel = "010-123-1234";
					var parts = tel.split("-");
					console.log("parts[0]: " + parts[0]);
					console.log("parts[1]: " + parts[1]);
					console.log("parts[2]: " + parts[2]);
				}
			</script>
		</p>
		
		<p>
			<a href="javascript:fun2()">날짜 얻기</a>
			<script>
				function fun2() {
					var now = new Date();
					var year = now.getFullYear();
					var month = now.getMonth() + 1;
					var date = now.getDate();
					var hour = now.getHours();
					var minitue = now.getMinites();
					var second = now.getSeconds();
				}
			</script>
		</p>
		
		<p>
			<a href="javascript:fun3()">배열 생성 및 사용</a>
			<script>
				function fun3() {
					//반복 처리 방법1
					var arr1 = ["Java", "Jsp", "Servlet"];
					for(var i=0; i<arr1.length; i++) {
						console.log(arr1[i]);
					}
					//반복 처리 방법2
					arr1.forEach(function(item, index) {
						console.log(index + ": " + item);
					});
				}
			</script>
		</p>
	</body>
</html>








