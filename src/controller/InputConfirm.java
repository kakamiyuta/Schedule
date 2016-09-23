package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InputConfirm
 */
@WebServlet("/InputConfirm")
public class InputConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public InputConfirm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    int startTime = Integer.parseInt(request.getParameter("startTime"));
	    int endTime = Integer.parseInt(request.getParameter("endTime"));
	    //ŽžŠÔ‚ª‚©‚Ô‚Á‚Ä‚¢‚È‚¢‚©‚ð”»’f
	    if(startTime>0 && endTime>0){
	    	request.getRequestDispatcher("inputSuccess.jsp").forward(request, response);
	    }else{
	    	String errorMessage = "‚»‚ÌŽžŠÔ‚Í‚·‚Å‚É—\’è‚ª“ü‚Á‚Ä‚¢‚Ü‚·";
	    	request.setAttribute("errorMessage", errorMessage);
	    	request.getRequestDispatcher("inputSchedule.jsp").forward(request, response);
	    }
	}

}
