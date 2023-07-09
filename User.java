package emailverification;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class User extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String id1;
	public static String Email;
	public static String p;
	public static String Name;
	public static String date;
	public static String gender;
	public static String phone;
	public static String waredno;
	public static String fname;
	public static String add;

//	protected void processRequest (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out =response.getWriter()){
			response.setContentType("text/html");
	
			 Email=request.getParameter("email");
			 p=request.getParameter("txtPwd");
			 add=request.getParameter("add");
		     id1=request.getParameter("id");
			 Name=request.getParameter("Name");
			 date=request.getParameter("date");
			 gender=request.getParameter("GENDER");
			 phone=request.getParameter("phoneno");
			 waredno=request.getParameter("WardNo");
			 fname=request.getParameter("fname");
			
			sendemail sn=new sendemail();
			String code=sn.getRandom();
			
			userinfo user=new userinfo(Name,Email,code);
			
			
			boolean test=sn.sendEmail(user);
			if(test) {
				HttpSession session=request.getSession();
				session.setAttribute("authcode",user);
				response.sendRedirect("verify.jsp");
				
			}
			}
	}

}