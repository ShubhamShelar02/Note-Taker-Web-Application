package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {

			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int noteId = Integer.parseInt(request.getParameter("noteId").trim());

			Session s = FactoryProvider.getFactory().openSession();
			Transaction tr = s.beginTransaction();
			Note note = (Note) s.get(Note.class, noteId);

			note.setTitle(title);
			note.setContetnt(content);
			note.setAddedDate(new Date());
			tr.commit();
			s.close();
			
			response.sendRedirect("all_notes.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
