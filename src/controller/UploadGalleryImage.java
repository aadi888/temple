package controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import dao.Header;

/**
 * Servlet implementation class UploadGalleryImage
 */
public class UploadGalleryImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadGalleryImage() {
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
		
		FileItemFactory factory= new DiskFileItemFactory();
		ServletFileUpload upload=new ServletFileUpload(factory);
		List<FileItem> items = null;
		String fieldName = null;
		String fieldValue = null;
		String fileName = null;
		File file = null;
		String number=null;
		//UserBean bean=new UserBean();
		
		
try {
			
			items = upload.parseRequest(request);// Parse Request
		
			for (int i = 0; i < items.size(); i++) {
				FileItem item = items.get(i);
			
				
				if (item.isFormField()) {
					fieldName = item.getFieldName();
					fieldValue = item.getString();
					if (fieldName.equalsIgnoreCase("name")) {
						String value = fieldValue;
						//student.setName(value);
						System.out.println("Name : " + value);
					}
					if (fieldName.equalsIgnoreCase("number")) {
						String value = fieldValue;
						number=value;
						//student.setNumber(value);
						System.out.println("Number : " + value);
					}
				
					

					
				}else {
					/*
					fieldName = item.getFieldName();
					System.out.println("FieldName : "+fieldName);
					fileName = item.getName();
					System.out.println("File Name : "+fileName);
					
					fileName = fileName.substring(
							fileName.lastIndexOf("\\") + 1,
							fileName.length());
					System.out.println("File Name 1 : "+fileName);
					*/
					ServletContext context = getServletContext();
					String path12 = context.getRealPath("\\");
					System.out.println("Path12 : "+path12);
					
					
					
					String path = "C:\\Users\\adshah\\Desktop\\AadishEclipseWork\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\MadirBaps\\images";
					if(number.equals("1"))
					{
						fileName="p1.jpg";
					}
					else if(number.equals("2"))
					{
						fileName="p2.jpg";
					}
					else if(number.equals("3"))
					{
						fileName="p3.jpg";
					}
					else if(number.equals("4"))
					{
						fileName="p4.jpg";
					}
					else if(number.equals("5"))
					{
						fileName="p5.jpg";
					}
					else if(number.equals("6"))
					{
						fileName="p6.jpg";
					}
					else if(number.equals("7"))
					{
						fileName="p7.jpg";
					}
					else if(number.equals("8"))
					{
						fileName="p8.jpg";
					}
					file = new File(path + file.separator
							+ fileName);
				       

					try {

						if (fileName.isEmpty()) {

							// Validations....
						} else {

							if (context.getMimeType(fileName).equals(
									"image/gif")
									|| context.getMimeType(fileName)
											.equals("image/jpeg")
									|| context.getMimeType(fileName)
											.equals("image/png")) {
								
								
								//String inputImagePath ="D:\\eclipse_NEW\\photolocator\\WebContent\\upload\\"+fileName;
						        //String outputImagePath2 = "D:\\eclipse_NEW\\photolocator\\WebContent\\upload\\"+fileName+"_smaller.jpg";
						       // try {
						            // resize to a fixed width (not proportional)
						        	//http://codejava.net/java-se/graphics/how-to-resize-images-in-java
						           // int scaledWidth = 1024;
						            //int scaledHeight = 768;
						            //UserDAO dao=new UserDAO();
						            //dao.resize(inputImagePath, outputImagePath2, scaledWidth, scaledHeight);
						 
						            // resize smaller by 50%
						            //double percent = 0.5;
						           // ImageResizer.resize(inputImagePath, outputImagePath2, percent);
						 
						            // resize bigger by 50%
						            //percent = 1.5;
						            //ImageResizer.resize(inputImagePath, outputImagePath3, percent);
						 
						        //} catch (IOException ex) {
						         //   System.out.println("Error resizing the image.");
						          //  ex.printStackTrace();
						       // }
						        
						        
								item.write(file);
								
							request.setAttribute("commonFlag","Your File Has Been Updated ... ");
								//request.getRequestDispatcher("ResizeImageController").forward(request, response);
								 
								  request.getRequestDispatcher("admin.jsp").forward(request, response);
							} else {

								request.setAttribute(
										"commonFlag",
										"<font color=red>*Please upload files that end in types .png only.</font>");
							request.getRequestDispatcher("admin.jsp").forward(request, response);
							}
						}
					} catch (Exception e) {
						e.printStackTrace();
					}

				}

			}

		} catch (FileUploadException e) {
			e.printStackTrace();
		}
		
		
	}

}
