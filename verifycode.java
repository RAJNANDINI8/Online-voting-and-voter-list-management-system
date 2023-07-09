package emailverification;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class verifycode
 */
public class verifycode extends HttpServlet {
	private static final long serialVersionUID = 1L;
//	protected void processRequest (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	
//		
//			
//	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
try(PrintWriter out =response.getWriter()){
			
			HttpSession session=request.getSession();
			String code=request.getParameter("authcode");
			if(code.equals(userinfo.getCode())) {
				RequestDispatcher rd=request.getRequestDispatcher("register1.jsp");
				rd.forward(request, response);
				
			}
			else {
				out.println("<font color=red size=18 background-color: #d7e4f0> Invalid OTP!!<br>");
				out.println("<a href=voterlogin.jsp> Try Again!!</a>");
			}
			}
	}

}