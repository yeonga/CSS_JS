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
			//변수는 선언하되, 변수가 생성되지는 않음
			var var1;
		
			//변수가 생성되고, 아직 객체를 참조하고 있지 않다.
			var var2 = null;
			
			console.log("var1: " + var1);
			console.log("var2: " + var2);
			
			console.log(var1 == var2);
			console.log(var1 == false);
			console.log(var2 == false);
			
			if(var1) {
				console.log("var1이 true입니다.");
			} else {
				console.log("var1이 false입니다.");
			}
			
			if(var2) {
				console.log("var2이 true입니다.");
			} else {
				console.log("var2이 false입니다.");
			}
		</script>
	</head>
	<body>
	
	</body>
</html>