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
				//load는 AJAX를 이용해서 해당 div에 자동으로 내용을 채운다.
				$("#divImage").load("exam10_moveimage.jsp", {no:1});
				$("#divBoard").load("exam10_moveboard.jsp", {no:1});
			});
		
			function moveImage(no) {
				$.ajax({
					url:"exam10_moveimage.jsp",
					data:{no:no},
					success: function(data) {
						$("#divImage").html(data);
					}
				});
				
				/* $.get("exam10_moveimage.jsp", {no:no}, function(data) {
					$("#divImage").html(data);
				}); */
			}
			
			function moveBoard(no) {
				$.ajax({
					url:"exam10_moveboard.jsp",
					data:{no:no},
					success: function(data) {
						$("#divBoard").html(data);
					}
				});
			}
			
			function showJoinForm() {
				$("#divJoinForm").show();
				$("#divLoginForm").hide();
			}
			
			function showLoginForm() {
				$("#divJoinForm").hide();
				$("#divLoginForm").show();
			}
			
			function ajaxJoin() {
				var mid = $("#joinForm #mid").val();
				var mname = $("#joinForm #mname").val();
				var mpassword = $("#joinForm #mpassword").val();
				
				$.ajax({
					url: "exam10_join.jsp",
					data: {mid:mid, mname:mname, mpassword:mpassword},
					method: "post",
					success: function(data) {
						if(data.state == "success") {
							//{"state":"success"}
							$("#divJoinForm").hide();
							$("#divLoginForm").show();
						} else {
							//{"state": "fail"}
							$("#joinError").html("*회원 가입 실패");
						}
					}
				});
				
				/* $.post(
					"exam10_join.jsp", 
					{mid:mid, mname:mname, mpassword:mpassword},
					function(data) {
						if(data.state == "success") {
							//{"state":"success"}
							$("#divJoinForm").hide();
							$("#divLoginForm").show();
						} else {
							//{"state": "fail"}
							$("#joinError").html("*회원 가입 실패");
						}
					}
				); */
			}
			
			function ajaxLogin() {
				var mid = $("#loginForm #mid").val();
				var mpassword = $("#loginForm #mpassword").val();
				
				$.ajax({
					url: "exam10_login.jsp",
					data: {mid:mid, mpassword:mpassword},
					method: "post",
					success: function(data) {
						if(data.state == "success") {
							//{"state":"success"}
							location.href="http://tomcat.apache.org";
						} else {
							//{"state": "fail"}
							$("#loginError").html("*로그인 실패");
						}
					}
				});
			}			
		</script>
	</head>
	<body>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md alert alert-primary" style="margin:0px;">
				  <strong>AJAX</strong> Sample Page.
				</div>
			</div>
			<div class="row">
				<div class="col-md-3" style="border:1px solid gray">
					<div class="container-fluid" style="padding:3px;">
						<div class="row">
							<div class="col">
								<button class="btn btn-info btn-sm" onclick="moveImage(1)">&lt;</button>
								<button class="btn btn-info btn-sm" onclick="moveImage(2)">&gt;</button>
							</div>
						</div>
						<div class="row">
							<div id="divImage" class="col" style="margin-top:5px;">
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6" style="border:1px solid gray">
					<div class="container-fluid" style="padding:3px;">
						<div class="row">
							<div class="col">
								<button class="btn btn-primary btn-sm" onclick="moveBoard(1)">이전</button>
								<button class="btn btn-primary btn-sm" onclick="moveBoard(2)">다음</button>
							</div>
						</div>
						<div class="row">
							<div id="divBoard" class="col" style="margin-top:5px;">
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3" style="border:1px solid gray">
					<div class="container-fluid" style="padding:3px;">
						<div class="row">
							<div class="col">
								<button class="btn btn-primary btn-sm" onclick="showJoinForm()">회원가입</button>
								<button class="btn btn-primary btn-sm" onclick="showLoginForm()">로그인</button>
							</div>
						</div>
						<div id="divJoinForm" class="row" style="display:none;">
							<div class="col">
								<div class="col-md alert alert-danger" style="margin-top:5px;">
									회원가입
								</div>
								<form id="joinForm" name="joinForm">
									<div class="form-group">
										<label for="mid">아이디:</label> 
										<input type="text" class="form-control" id="mid" name="mid">
									</div>
									<div class="form-group">
										<label for="mname">이름:</label> 
										<input type="text" class="form-control" id="mname" name="mname">
									</div>
									<div class="form-group">
										<label for="mpassword">비밀번호:</label> 
										<input type="password" class="form-control" id="mpassword" name="mpassword">
									</div>
									<button type="button" class="btn btn-danger" onclick="ajaxJoin()">가입</button>
									<span id="joinError" style="color:red"></span>
								</form>
							</div>
						</div>
						<div id="divLoginForm" class="row">
							<div class="col">
								<div class="col-md alert alert-success" style="margin-top:5px;">
									로그인
								</div>							
								<form id="loginForm" name="loginForm">
									<div class="form-group">
										<label for="mid">아이디:</label> 
										<input type="text" class="form-control" id="mid" name="mid">
									</div>
									<div class="form-group">
										<label for="mpassword">비밀번호:</label> 
										<input type="password" class="form-control" id="mpassword" name="mpassword">
									</div>
									<button type="button" class="btn btn-success" onclick="ajaxLogin()">로그인</button>
									<span id="loginError" style="color:red"></span>
								</form>							
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md alert alert-dark">
				  <strong>S.Y.K</strong> write this page.
				</div>			
			</div>
		</div>
	</body>
</html>







