package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Inquiry
 */
@WebServlet("/Inquiry")
public class Inquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Inquiry() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/inquiry.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String localName = request.getParameter("localName");
		String firstName = request.getParameter("firstName");
		String mailAddress = request.getParameter("mailAddress");
		String content = request.getParameter("content");
		String errorMessage;
		if(localName.isEmpty() || firstName.isEmpty()){
			errorMessage = "名前を入力してください";
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("/inquiry.jsp").forward(request, response);
		}else if(mailAddress.isEmpty()){
			errorMessage = "メールアドレスを入力してください";
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("/inquiry.jsp").forward(request, response);
		}else if(content.isEmpty()){
			errorMessage = "問い合わせ内容を入力してください";
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("/inquiry.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("/inquirySuccess.jsp").forward(request, response);
		}

	}

}
