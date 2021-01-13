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
			var loginStatus = false;
		
			function login() {
				loginStatus = true;
			}
			
			function logout() {
				loginStatus = false
			}
			
			function isLogin() {
				//로그인을 확인하는 코드
				return loginStatus;
			}
		</script>
	</head>
	<body>
		<h5>exam07_return_boolean.jsp</h5>
		<hr/>
		<div>
			<a href="javascript:login()" class="btn btn-info">로그인</a>
			<a href="javascript:logout()" class="btn btn-danger">로그아웃</a>
		</div>
		<hr/>
		<a onclick="return isLogin()" href="http://tomcat.apache.org">함수의 결과에 따라 이동 여부 결정</a>
	
		<form action="http://tomcat.apache.org" onsubmit="return isLogin()">
			<input type="submit" value="함수의 결과에 따라 이동 여부 결정"/>
		</form>
	</body>
</html>









