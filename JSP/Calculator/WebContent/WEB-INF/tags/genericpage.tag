<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true"%>
<html>
<head>
<title>Pavan's Online Calculator</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<jsp:invoke fragment="header" />
</head>
<body>
	<nav>
		<ul class="nav nav-pills pull-right">
			<li class="active"><a href="">Home</a></li>
			<li><a href="css.html">CSS</a></li>
			<li><a href="html.html">HTML</a></li>
		</ul>
		<h3 class="muted">
			<a href=".">Java Midterm</a>
		</h3>
	</nav>

	<div class="container">

		<jsp:doBody />

		<hr>
		<footer>
			<p>CC-BY-NC Pavan Chander 2013</p>
		</footer>
	</div>

	<script src="../js/bootstrap.min.js"></script>
</body>
</html>