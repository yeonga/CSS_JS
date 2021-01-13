<%@ page contentType="text/html; charset=UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>블록 태그</h3>
		<div style="background-color:red; height:100px; width:200px;">
		</div>

		<div style="background-color: green; height:100px; width:300px;">
		</div>
		
		<p style="background-color: blue; height:100px;">
		</p>
		
		<ul style="background-color: orange; height:100px;">
			<li style="background-color: #00ffff;">item1</li>
			<li>item2</li>
		</ul>
		
		<h3 style="background-color: #ff00ff;">제목</h3>
		
		<h3>인라인 태그</h3>
		<a href="#">링크1</a>
		<a href="#">링크2</a>
		<a href="#">링크3</a>
		<br/>
		<input type="text"/>
		<input type="text"/>
		<input type="text"/>
		
		<h3>블록 -> 인라인,  인라인 -> 블록</h3>
		<div style="background-color:red; height:100px; width:200px; display:inline-block;">
		</div>
		<div style="background-color:green; height:100px; width:200px; display:inline-block;">
		</div>
		<a href="#" style="display:block;">링크1</a>
		<a href="#" style="display:block;">링크2</a>
	</body>
</html>











