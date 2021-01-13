<%@ page contentType="text/html; charset=UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			header {
				background-color:#666666; 
				text-align:center; 
				padding:30px;
			}
			
			header h2 {
				font-size:35px; 
				color:white;
			}
			
			#menu {
				background-color:lightgray; 
				height:200px; 
				float:left; 
				width:20%; 
				padding:10px;
			}
			
			#menu ul {
				list-style-type:none;
			}
			
			.link {
				color: red;
			}
			
			article {
				height:200px; 
				float:left; 
				width:60%; 
				padding:10px;
			}
			
			footer {
				background-color:darkgray; 
				clear:both; 
				text-align:center; 
				padding:5px;
				color:white;
			}
		</style>
	</head>
	<body>
		<header>
			<h2>Cities</h2>
		</header>
		<nav id="menu">
			<ul>
				<li><a class="link" href="#">London</a></li>
				<li><a class="link" href="#">Paris</a></li>
				<li><a class="link" href="#">Tokyo</a></li>
			</ul>
		</nav>
		<article>
			<h3>London</h3>
			<p>London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
			<p>Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.</p>
		</article>
		<footer>
			<h5>Footer</h5>
		</footer>
	</body>
</html>










