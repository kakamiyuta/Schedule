package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChangePasswordConfirm
 */
@WebServlet("/ChangePasswordConfirm")
public class ChangePasswordConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePasswordConfirm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String password = request.getParameter("password");
		String newPassword = request.getParameter("newPassword");
		String reNewPassword = request.getParameter("reNewPassword");
		String errorMessage;
		if(!password.equals("password")){
			errorMessage = "現在のパスワードが正しくありません";
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("/changePassword.jsp").forward(request, response);
		}else if(!newPassword.equals(reNewPassword)){
			errorMessage = "新しいパスワードを正しく入力してください";
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("/changePassword.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("/changeSuccess.jsp").forward(request, response);
		}
	}

}
