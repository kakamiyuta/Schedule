package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMessages;

/**
 * Servlet implementation class ChangeName
 */
@WebServlet("/ChangeName")
public class ChangeName extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeName() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/changeName.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String lastNameKana = request.getParameter("lastNameKana");
		String firstNameKana = request.getParameter("firstNameKana");
		String errorMessage;
		if(lastName.isEmpty() || firstName.isEmpty() || lastNameKana.isEmpty() || firstNameKana.isEmpty()){
			errorMessage =  "ì¸óÕçÄñ⁄Ç™ê≥ÇµÇ≠Ç†ÇËÇ‹ÇπÇÒ";
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("/changeName.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("/changeSuccess.jsp").forward(request, response);
		}

	}

}
