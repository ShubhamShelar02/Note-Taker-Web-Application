<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show notes</title>
</head>
<%@ include file="all_js_css.jsp"%>

<body>

	<div class="container">
		<%@ include file="navbar.jsp"%>
		<h1 class="text-uppercase">All Notes :</h1>

		<%
		Session s = FactoryProvider.getFactory().openSession();
		Query q = s.createQuery("from Note");
		List<Note> list = q.list();
		for (Note note : list) {
		%>

		<div class="card mt-3">
			<img src="img/pencil.png"  style="max-width:100px;" class="card-img-top m-4" alt="...">
			<div class="card-body">
				<h5 class="card-title"><%= note.getTitle() %></h5>
				<p class="card-text"><%= note.getContetnt() %></p>
				<p ><b class="text-primary"><%= note.getAddedDate() %></b></p>
				<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
				<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
			</div>
		</div>

		<%
		}

		s.close();
		%>

	</div>
</body>
</html>