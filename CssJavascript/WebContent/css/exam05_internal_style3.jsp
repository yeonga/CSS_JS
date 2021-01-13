<%@ page contentType="text/html; charset=UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			/* 클래스(그룹) 선택 */
			.menu {
				background-color: yellow;
			}
			
			.item {
				background-color: red;
			}
		</style>
	</head>
	<body>
		<div>
			<h3>Cities</h3>
			<div>
				<h3>Sub Cities</h3>
			</div>
		</div>
		
		<div id="leftMenu" class="menu">
			<ul>
				<li><a href="#">London</a></li>
				<li><a href="#">Paris</a></li>
				<li><a href="#">Tokyo</a></li>
			</ul>			
		</div>
		
		<div>
			<h3>London</h3>
			<p class="item">London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
			<p class="item">Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.</p>
		</div>
		
		<div id="rightMenu" class="menu">
			<p>Right Menu</p>
			<ul>
				<li><a href="#">London</a></li>
				<li><a href="#">Paris</a></li>
				<li><a href="#">Tokyo</a></li>
			</ul>			
		</div>		
		
		<div>
			<h5>Footer</h5>
		</div>
	</body>
</html>










