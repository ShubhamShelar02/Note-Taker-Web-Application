<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Note Taker</title>

<%@ include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@ include file="navbar.jsp"%>
		<br>

		<div class="card py-4">
			<img class="img-fluid mx-auto" style="width: 300px"
				src="img/pencil.png">
			<h1 class="text-primary mx-auto mt-2">Start Taking Notes</h1>

			<div class="container text-center mt-3">
				<button class="btn btn-outline-primary" href="add_notes.jsp" >Start Here</button>
			</div>
		</div>

	</div>
</body>
</html>