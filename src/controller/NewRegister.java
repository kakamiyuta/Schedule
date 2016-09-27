package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logic.*;
/**
 * Servlet implementation class NewRegister
 */
@WebServlet("/NewRegister")
public class NewRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/newRegister.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String userID = request.getParameter("userID");
		String password = request.getParameter("password");
		String rePassword = request.getParameter("rePasword");
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String birthday = request.getParameter("birthday");
		String sex = request.getParameter("sex");
		int sexNumber = NewRegisterLogic.getSexNumber(sex);
		String mailAddress = request.getParameter("mailAddress");
		String errorMessage;

		if(userID.isEmpty() || password.isEmpty() || lastName.isEmpty() || firstName.isEmpty() || birthday.isEmpty() || sexNumber == 0 || mailAddress.isEmpty()){
			errorMessage = "���͍��ڂ�����������܂���B";
		    request.setAttribute("errorMessage", errorMessage);
		    request.getRequestDispatcher("/newRegister.jsp").forward(request, response);
		}else if(!(password.equals(rePassword))){
			errorMessage = "�p�X���[�h����v���܂���B";
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("/newRegister.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}

	}

}
