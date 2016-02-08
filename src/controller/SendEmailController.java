package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * Servlet implementation class SendEmailController
 */
public class SendEmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendEmailController() {
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
		
		 String name=request.getParameter("name");
		 String email=request.getParameter("email");
		 String subject=request.getParameter("subject");
		 String message12=request.getParameter("message");
		 
		 
		 
		 final String username = "Aadish.Shah001@umb.edu";
		    final String password = "USAgre220+";

		    Properties props = new Properties();
		    props.put("mail.smtp.auth", "true");
		    props.put("mail.smtp.starttls.enable", "true");
		    props.put("mail.smtp.host", "outlook.office365.com");
		    props.put("mail.smtp.port", "587");

		    Session session = Session.getInstance(props,
		      new javax.mail.Authenticator() {
		        protected PasswordAuthentication getPasswordAuthentication() {
		            return new PasswordAuthentication(username, password);
		        }
		      });

		    try {

		        Message message = new MimeMessage(session);
		        message.setFrom(new InternetAddress("Aadish.Shah001@umb.edu"));
		        message.setRecipients(Message.RecipientType.TO,
		            InternetAddress.parse("Aadish.Shah001@umb.edu"));
		    	message.setSubject("Contact Support");
				message.setText("Dear Sir," +"\nMy self "+name+",\n\n"+message12+"\n\nRegards,\n"+name+"\n"+email);
	 
		        Transport.send(message);

		        System.out.println("Done");
		        String emailFlag="Your Message Has Been Sent Successfully . We will Contact You Soon"; 
		        request.setAttribute("emailFlag", emailFlag);
		        request.getRequestDispatcher("index.jsp").forward(request, response);

		    } catch (MessagingException e) {
		        throw new RuntimeException(e);
		    }
	}

}
