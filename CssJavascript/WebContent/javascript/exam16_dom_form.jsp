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
				document.querySelector("#joinForm #midError").innerHTML = "";
				document.querySelector("#joinForm #mnameError").innerHTML = "";
				document.querySelector("#joinForm #mpasswordError").innerHTML = "";
				
				//방법1 - 직접 양식의 id로 찾기(페이지에 form 태그가 하나만 있을 경우)
				/* var mid = document.querySelector("#mid").value;
				var mname = document.querySelector("#mname").value;
				var mpassword = document.querySelector("#mpassword").value; */
				
				//방법2 - form의 id로 양식의 id 찾기(페이지에 form 태그가 여러개가 있을 경우)
				/* var mid = document.querySelector("#joinForm #mid").value;
				var mname = document.querySelector("#joinForm #mname").value;
				var mpassword = document.querySelector("#joinForm #mpassword").value; */
				
				//방법3 - form의 name으로 양식의 name 찾기(페이지에 form 태그가 여러개가 있을 경우)
				var mid = document.joinForm.mid.value;
				var mname = document.joinForm.mname.value;
				var mpassword = document.joinForm.mpassword.value;
				
				if(mid == "") {
					document.querySelector("#joinForm #midError").innerHTML = "*id는 필수 입력값입니다.";
					result = false;
				} else if(mid.length < 8) {
					var midError = document.querySelector("#joinForm #midError");
					midError.innerHTML = "*id는 8자 이상 입력해야 합니다.";
					result = false;
				}
				
				if(mname == "") {
					document.querySelector("#joinForm #mnameError").innerHTML = "*name는 필수 입력값입니다.";
					result = false;
				}
				
				if(mpassword == "") {
					document.querySelector("#joinForm #mpasswordError").innerHTML = "*password는 필수 입력값입니다.";
					result = false;
				}
				
				return result;
			}
		</script>
	</head>
	<body>
		<h5>exam16_dom_form.jsp</h5>
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
















