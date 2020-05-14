<%@page import="controller.MD5Password"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="controller.connexionController"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>

<%

    //Creating a result for getting status that messsage is delivered or not!

   String result;
   String mdp = "";
    // Get recipient's email-ID, message & subject-line from index.html page

    final String to = request.getParameter("mail");
    
     
    final String subject = "LEONI PASSWORD RESET";

      String messg ;

    try { 
	
	    
                connexionController conn1 = new connexionController();
                Connection cc= conn1.getConnection();
                String req1 ="select * from utilisateur where Email="+to+"";
                
                ResultSet res=conn1.executeSelect(req1);
		
                 int cpt=0;
		while (res.next()){
				    
				out.println("done");
				//mdp=res.getString(16);
				// MD5Password newPwd = new MD5Password();
				  cpt++;
			    }
	       
	     
	       }  catch(Exception e)
                    {
                      System.out.print(e.toString());
                    }
   
messg = "oqifjsekf "+mdp;
    // Sender's email ID and password needs to be mentioned

    final String from = "dhamir.m@gmail.com";

    final String pass = "09288MDhamir@-";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "443");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText(messg);

        // Send message

        Transport.send(message);

        result = "Your mail sent successfully....";
	
	response.sendRedirect("Login.html");

	
	
    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to send mail....";

    }
    
	
%>
