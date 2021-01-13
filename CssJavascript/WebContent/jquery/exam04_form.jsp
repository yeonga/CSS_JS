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
			function checkData() {
				var result = true;
				
				//에러 초기화로 빈공백을 세팅
				$("#joinForm #midError").html("");
				$("#joinForm #mnameError").html("");
				$("#joinForm #mpasswordError").html("");
				
				//사용자가 입력한 값 얻기
				var mid = $("#mid").val();
				var mname = $("#mname").val();
				var mpassword = $("#mpassword").val();
				
				//데이터 유효성 검사(Validation Check)
				if(mid == "") {
					$("#joinForm #midError").html("*id는 필수 입력값입니다.");
					result = false;
				} else if(mid.length < 8) {
					$("#joinForm #midError").html("*id는 8자 이상 입력해야 합니다.");
					result = false;
				}
				
				if(mname == "") {
					$("#joinForm #mnameError").html("*name는 필수 입력값입니다.");
					result = false;
				}
				
				if(mpassword == "") {
					$("#joinForm #mpasswordError").html("*password는 필수 입력값입니다.");
					result = false;
				}
				
				return result;
			}
		</script>
	</head>
	<body>
		<h5>exam04_form.jsp</h5>
		<hr/>
		<form id="joinForm" name="joinForm" action="http://tomcat.apache.org" 
			  onsubmit="return checkData()">
			ID: 
				<input id="mid" type="text" name="mid"/> 
				<span id="midError" style="color:red"></span> <br/>
			Name: 
				<input id="mname" type="text" name="mname"/> 
				<span id="mnameError" style="color:red"></span> <br/>
			Password: 
				<input id="mpassword" type="text" name="mpassword"/> 
			    <span id="mpasswordError" style="color:red"></span>  <br/>
			<input type="submit" value="Join"/>
		</form>
	</body>
</html>
















