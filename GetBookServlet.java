package net.codejava;


import java.io.IOException;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewbook")
public class GetBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public GetBookServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int Candidate_Id = Integer.parseInt(request.getParameter("id-card-outline"));
        if(Candidate_Id==0 || Candidate_Id==1) {
        	RequestDispatcher rd=request.getRequestDispatcher("NOTA.jsp");
			rd.forward(request, response);
        }
        else {
        BookDAO dao = new BookDAO();

        try {
            Book book = dao.get(Candidate_Id);

            request.setAttribute("book", book);

            String page = "img.jsp";
            RequestDispatcher requestDispatcher = request.getRequestDispatcher(page);
            requestDispatcher.forward(request, response);
        } catch (SQLException ex) {
            throw new ServletException(ex);
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        }
    }
}