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
		
		<script src="<%=request.getContextPath()%>/resources/js/exam09.js"></script>
		
		<script>
			var myCar = new Car("그랜저", "검정");
			
			console.log(myCar.company);
			console.log(myCar.model);
			console.log(myCar.color);
			console.log(myCar.speed);
			
			myCar.start();
			myCar.setSpeed(60);
			myCar.run();
			myCar.stop();
			
			var yourCar = new Car("소나타", "흰색");
			console.log(yourCar.company);
			console.log(yourCar.model);
			console.log(yourCar.color);
			console.log(yourCar.speed);
			yourCar.start();
			yourCar.setSpeed(60);
			yourCar.run();
			yourCar.stop();
		</script>
	</head>
	<body>
		
	</body>
</html>




