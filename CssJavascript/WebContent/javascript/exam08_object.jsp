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
			var myCar = {
				//필드
				company: "현대자동차",
				model: "그랜저",
				color: "검정",
				speed: 0,
				
				//메소드
				start: function() {
					console.log("시동을 겁니다.");
				},
				stop: function() {
					this.setSpeed(0);
					console.log("멈춥니다.");
				},
				setSpeed: function(speed) {
					this.speed = speed;
				},
				run: function() {
					console.log(this.speed + "로 달립니다.");
				}
			};

			
			console.log(myCar.company);
			console.log(myCar.model);
			console.log(myCar.color);
			console.log(myCar.speed);
			
			myCar.start();
			myCar.setSpeed(60);
			myCar.run();
			myCar.stop();
		</script>
	</head>
	<body>

	</body>
</html>





