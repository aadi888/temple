package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.TrusteeNameBean;
import dao.Header;

/**
 * Servlet implementation class ChangeTrusteeNameController
 */
public class ChangeTrusteeNameController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeTrusteeNameController() {
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
		
		String tid=request.getParameter("tid");
		String tname=request.getParameter("tname");
		String tposition=request.getParameter("tposition");
		TrusteeNameBean bean=new TrusteeNameBean();
		bean.setTid(tid);
		bean.setTname(tname);
		bean.setTposition(tposition);
		Header dao=new Header();
		boolean flag=dao.changeAdminData(bean);
		
		if(flag==true)
		{
			
			request.setAttribute("commonFlag","Your File Has Been Updated ... ");
			//request.getRequestDispatcher("ResizeImageController").forward(request, response);
			 
			  request.getRequestDispatcher("admin.jsp").forward(request, response);
	
		}
		
		
		
		
	}

}
