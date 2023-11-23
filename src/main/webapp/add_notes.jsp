<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<h1>This is add notes page</h1>
		<br>

		<!-- Adding Notes -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title" class="col-sm-2 col-form-label">Title</label>
				<div class="col-sm-10">
					<input name="title" required type="text" class="form-control" placeholder="Enter Title here" id="title">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 col-form-label">Content</label>
				<textarea 
					name="content"
					required
					id="content"
					placeholder="Enter content Here"
					class="form-control"
					style="height: 200px"
				></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary" >Add</button>
			</div>
		</form>
	</div>


</body>
</html>