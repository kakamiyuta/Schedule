package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChangeAddress
 */
@WebServlet("/ChangeAddress")
public class ChangeAddress extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeAddress() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/changeAddress.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String newAddress = request.getParameter("newAddress");
		String reNewAddress = request.getParameter("reNewAddress");
		String errorMessage;
		if(newAddress.equals(reNewAddress) || newAddress.isEmpty() || reNewAddress.isEmpty() || !newAddress.equals(reNewAddress)){
			errorMessage = "メールアドレスを正しく入力してください";
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("/changeAddress.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("/changeSuccess.jsp").forward(request, response);
		}

	}

}
