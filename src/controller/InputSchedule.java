package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logic.InputConfirmLogic;

/**
 * Servlet implementation class InputSchedule
 */
@WebServlet("/InputSchedule")
public class InputSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public InputSchedule() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("inputSchedule.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String scheduleName = request.getParameter("scheduleName");
	    int startTime = InputConfirmLogic.getTime(request.getParameter("startTime"));
	    int endTime = InputConfirmLogic.getTime(request.getParameter("endTime"));
	    String errorMessage;

	    //時間がかぶっていないかを判断
	    if(startTime>0 && endTime>0){
	    	request.getRequestDispatcher("/inputSuccess.jsp").forward(request, response);
	    }else if(scheduleName.isEmpty() || startTime == 0 || endTime == 0){
	    	errorMessage = "入力項目が正しくありません";
	    	request.setAttribute("errorMessage", errorMessage);
	    	request.getRequestDispatcher("/inputSchedule.jsp").forward(request, response);
	    }
	    else{
	    	errorMessage = "その時間はすでに予定が入っています";
	    	request.setAttribute("errorMessage", errorMessage);
	    	request.getRequestDispatcher("/inputSchedule.jsp").forward(request, response);
	    }
	}

}
