package candidateverification;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.DriverManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@MultipartConfig(maxFileSize=16*1024*1024)
public class User1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String id1;
	public static String Email;
	public static String p;
	public static String Name;
	public static String date;
	public static String gender;
	public static String phone;
	public static String party;
	public static String fname;
	public static String add;
	public static String position;
	public static Part p1;
	public static InputStream in;
//	protected void processRequest (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out =response.getWriter()){
			
			p1=request.getPart("image");
			in=p1.getInputStream();
		
			
			 Email=request.getParameter("mail");
			 p=request.getParameter("txtPwd");
			 add=request.getParameter("home-outline");
		     id1=request.getParameter("id-card-outline");
			 Name=request.getParameter("person");
			 date=request.getParameter("DATE");
			 gender=request.getParameter("transgender-outline");
			 phone=request.getParameter("call-outline");
			 party=request.getParameter("party");
			 fname=request.getParameter("person1");	
			  position=request.getParameter("position");
			
			sendemail sn=new sendemail();
			String code=sn.getRandom();
			
			userinfo user=new userinfo(Name,Email,code);
			
			
			boolean test=sn.sendEmail(user);
			if(test) {
				HttpSession session=request.getSession();
				session.setAttribute("authcode",user);
				response.sendRedirect("verifycandidate.jsp");
				
			}
			}
	}

}