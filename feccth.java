 package com.servlet.fec;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.query.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.hibernate.DBcon.DBcon;
 import com.student.entity.admin;
import com.student.entity.student_detai;

/**
 * Servlet implementation class feccth
 */
@WebServlet("/feccth")
public class feccth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public feccth() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String uid=request.getParameter("name");
//		String password=request.getParameter("pass");
//		String na,pas;
//		 SessionFactory sf=DBcon.buildSession();
//		 Session sess=sf.openSession();
//		 Query<Object[]> query=sess.createQuery(" userid,password from admi where password='"+password+"' and userid='"+uid+"' ");
//	        List<Object[]> li=query.list();
//		 
//		  for(Object[] obj:li) {
//			na=(String)obj[0]; 
//			pas=(String)obj[1];
//	}
//		  if(uid.equals(na)&password.equals(pas))
//		  {
//			  RequestDispatcher r=request.getRequestDispatcher("view2.jsp");
//			  r.include(request, response);
//		  }
//			else
//	{
//    PrintWriter pw=response.getWriter();
//    pw.println("error occured");
//}
//		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int roll=Integer.parseInt(request.getParameter("rollno"));
		String uid=request.getParameter("name");
		 String phon=request.getParameter("phone_no");
		 PrintWriter pw=response.getWriter();
		 pw.println("<html><body>");
		 SessionFactory sf=DBcon.buildSession();
		 Session sess=sf.openSession();
		 student_detai sd=new student_detai();
		 Transaction t=sess.beginTransaction();
		 // int s=sess.createSQLQuery("insert into student_detai values("+10+",'"+uid+"','"+phon+"','"+roll+"')").executeUpdate();
		 sd.setRollno(roll);
		 sd.setName(uid);
		 sd.setPhone(phon);
		 sess.save(sd);
		 t.commit();
		 pw.println("<h1>data stored </h1>");
		 pw.println("<a href='index.jsp'>home</a>");
		 pw.println("</body></html>");
		 
//		   if(s>0) {
//				 pw.println("<h1>record as been updated</h1>");
//			 }
//			 else
//			 {
//				 pw.println("<h1>not inserted </h1>");
//			 }
	        sess.close();
//		   pw.println("</body></html>");
}
}
