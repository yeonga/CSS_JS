<%@ page contentType="text/html; charset=UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			/* 태그 이름으로 선택 */
			* {
				padding: 0px;
				margin: 0px;
			}
			
			body {
				background-color:black; 
				color: white;
			}
			
			header {
				background-color:#666666; 
				text-align:center; 
				padding:30px;
			}
			
			a {
				color: red;
			}
			
			/* header h3 {
				color: blue;
			} */
			
			header > h3 {
				color: blue;
			}
			
			article h3 {
				color: green;
			}
		</style>
	</head>
	<body>
		<header>
			<h3>Cities</h3>
			<div>
				<h3>Sub Cities</h3>
			</div>
		</header>
		<nav>
			<ul>
				<li><a href="#">London</a></li>
				<li><a href="#">Paris</a></li>
				<li><a href="#">Tokyo</a></li>
			</ul>
		</nav>
		<article>
			<h3>London</h3>
			<p>London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
			<p>Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.</p>
		</artice>
		<footer>
			<h5>Footer</h5>
		</footer>
	</body>
</html>










