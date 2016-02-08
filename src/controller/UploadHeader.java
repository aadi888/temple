package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Header;

/**
 * Servlet implementation class UploadHeader
 */
public class UploadHeader extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadHeader() {
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
		String header=request.getParameter("header");
		
		Header dao=new Header();
		boolean headerFlag= dao.addHeader(header);
		if(headerFlag==true)
		{
			request.setAttribute("commonFlag","Your File Has Been Updated ... ");
			//request.getRequestDispatcher("ResizeImageController").forward(request, response);
			 
			  request.getRequestDispatcher("admin.jsp").forward(request, response);
	
		}
	}

}
