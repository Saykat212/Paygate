

import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class SendMail
{ 
    public static void send(String to, String sub, 
                         String msg, final String user,final String pass)
    { 
    	
        //create an instance of Properties Class   
        Properties props = new Properties();
     
        /*  Specifies the IP address of your default mail server
     	      for e.g if you are using gmail server as an email sever
            you will pass smtp.gmail.com as value of mail.smtp host. 
            As shown here in the code. 
            Change accordingly, if your email id is not a gmail id
        */
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        // below mentioned mail.smtp.port is optional 
        props.put("mail.smtp.port", "587");		
       
   
      
        /* Pass Properties object(props) and Authenticator object   
           for authentication to Session instance 
        */

        Session session = Session.getInstance(props,new Authenticator()
        {
            protected PasswordAuthentication getPasswordAuthentication()
            {
  	 	         return new PasswordAuthentication(user,pass); 
            }
        });

        try {
 
     	      /*  Create an instance of MimeMessage, 
     	          it accept MIME types and headers 
     	      */
     
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
            message.setSubject("Reciept");

			Multipart emailContent = new MimeMultipart();
			MimeBodyPart textBodyPart = new MimeBodyPart();
			textBodyPart.setText(msg);
			//MimeBodyPart pdfAttachment = new MimeBodyPart();
		//	pdfAttachment.attachFile("E:\\codedoc\\chunkies.pdf");
			//pdfAttachment.attachFile(f);
			
			emailContent.addBodyPart(textBodyPart);
			//emailContent.addBodyPart(pdfAttachment);
			message.setContent(emailContent);
			
			Transport.send(message);
			System.out.println("Sent message...........");
        }
        catch(Exception e) {
    	     e.printStackTrace();
        }
    }  
}