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
			$(function() {
				$("#logout").hide();
			});
			
			function ajaxLogin() {
				var mid = $("#mid").val();
				var mpassword = $("#mpassword").val();
				
				$("#midError").html("");
				$("#mpasswordError").html("");
				
				$.ajax({
					url: "exam09_login.jsp",
					//data: "mid=" + mid + "&mpassword=" + mpassword,
					data: {mid:mid, mpassword:mpassword},
					success: function(data) {
						console.log(data); //응답이 JSON
						if(data.state == "success") {
							//{"state": "success"}
							$("#login").hide();
							$("#logout").show();
						} else if(data.state == "wrongId") {
							//{"state": "wrongId"}
							$("#midError").html("*존재하지 않는 ID");
						} else {
							//{"state": "wrongPassword"}
							$("#mpasswordError").html("*잘못된 PASSWORD");
						}
					}
				});
			}
			
			function ajaxLogout() {
				$.ajax({
					url: "exam09_logout.jsp",
					success: function(data) {
						if(data.state == "success") {
							//{"state": "success"}
							$("#login").show();
							$("#logout").hide();
							
							$("#mid").val("");
							$("#mpassword").val("");
						}
					}
				});
			}
		</script>
	</head>
	<body>
		<h5>AJAX를 이용해서 로그인과 로그아웃 영역 체인지</h5>
		<hr/>
		
		<div style="background-color:#00ffff; width:500px; height:130px;">
			<div id="login">
				<h5>로그인</h5>
				<form>
					ID: <input id="mid" type="text" name="mid"/> 
					    <span id="midError" style="color:red;"></span><br/>
					PW: <input id="mpassword" type="password" name="mpassword"/> 
						<span id="mpasswordError" style="color:red;"></span><br/>
					<input type="button" value="로그인" onclick="ajaxLogin()"/>
				</form>
			</div>
			
			<div id="logout">
				<h5>로그아웃</h5>
				<button onclick="ajaxLogout()">로그아웃</button>
			</div>
		</div>
	</body>
</html>




