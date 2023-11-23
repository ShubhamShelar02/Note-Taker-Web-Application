<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>

<%@ include file="all_js_css.jsp"%>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<h1>Edit your note</h1>
		<br>

		<%
		int note_id = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, note_id);
		%>

		<form action="UpdateServlet" method="post">
			<div class="form-group">
				<input name = "noteId" value="<%= note.getId() %>" type="hidden">
				<label for="title" class="col-sm-2 col-form-label">Title</label>
				<div class="col-sm-10">
					<input name="title" required type="text" class="form-control"
						placeholder="Enter Title here" id="title" value="<%= note.getTitle()%>">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 col-form-label">Content</label>
				<textarea name="content" required id="content"
					placeholder="Enter content Here" class="form-control"
					style="height: 200px"><%= note.getContetnt() %></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save</button>
			</div>
		</form>


	</div>
</body>
</html>