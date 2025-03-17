package controller.basic;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.util.ByteArrayDataSource;

//import com.sun.xml.internal.ws.util.ByteArrayDataSource;
public class Mailer 
{
//	private static final String SMTP_HOST_NAME = "email-smtp.us-east-1.amazonaws.com";
//    private static final String SMTP_AUTH_USER = "AKIAII76MLXGLL4Z6WVA";
//    private static final String SMTP_AUTH_PWD  = "Ak+xsua1H85i1UglS2kKk9dHPe7dvBztu9clU2GPHQkR";
//    private static final String FROM  = "internetshifu@techdivinity.in";
  
/* ---------------------------Send Mail Through Domain Start------------------------*/
    private static final String SMTP_HOST_NAME = "email-smtp.us-east-1.amazonaws.com";
    private static final String SMTP_AUTH_USER = "AKIAXPM5S5QLHCSYNWI4";
    private static final String SMTP_AUTH_PWD  = "BK68mEqrkiKHNzl6G8P+gi0BKR+ZuJxZmxtDMXPCUHDw";
    private static final String FROM  = "noreply@iwzoo.awsapps.com";
	
	    
    public static void sendMailTo(String To,String title)
    {  
    	
    	
    	
    	//Get properties object    
          Properties props = new Properties();    
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", SMTP_HOST_NAME);
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "2587");  
          //get Session   
          Session session = Session.getDefaultInstance(props,    
           new javax.mail.Authenticator() {    
           protected PasswordAuthentication getPasswordAuthentication() {    
           return new PasswordAuthentication(SMTP_AUTH_USER,SMTP_AUTH_PWD);
           }    
          });    
          //compose message    
          try {  
        	  System.out.println("Email Id=="+To);
        	  
        	  Message message = new MimeMessage(session);
	  			message.setFrom(new InternetAddress(FROM));
	  			
           message.addRecipient(Message.RecipientType.TO,new InternetAddress(To));    
           message.setSubject("Invitation link of the National Level Webinar....");    
           message.setContent("<p style='font-weight:bold;font-size:large'>Dear All,</p><p style='margin-left:3%;' ><b>It gives us pleasure to welcome you to the,Pune District Education Association's, Annasaheb Magar Mahavidyalaya , Hadapsar Pune- India organized ' Webinar on Post COVID Scenario,Challanges and Oppurtunities in Higher Education & Indian Economy 19-May-2020 11:00 AM Mumbai, Kolkata, New Delhi Every day, until 20-May-2020, 2 occurrence(s) ' , through Zoom webinar system powered by Tech Divinity,Pune.</b></p><br> <a href='https://zoom.us/j/94752728110?pwd=cVBTRkVDQWZDdXhPOE9DN2hqckkxQT09'  target='_blank'><button  type='button' style='background: green;padding: 10px;color: white;font-weight: bold;'>Join webinar</button></a><br><br><p><b>OR</b></p><br><p><b>Join by given below id and pwd on zoom app through your mobile and laptop</b></p><p><b>Webinar ID:-  947 5272 8110</b></p><p><b>Password:- 598398</b></p><br><p> Stay Safe ,<br>Thank You... <br>Annasaheb Magar Mahavidyalaya , Hadapsar Pune.<br>Prin. Dr. Shelke P. N.<br>Convener </p>","text/html");
        
           Transport.send(message);    
           System.out.println("message sent successfully");    
          } catch (MessagingException e) {throw new RuntimeException(e);}   
    	
    	}
    
    
    
    //Two days webinar certificate
    public static void send(String to,InputStream sign)
    {  
    	
    	//Get properties object    
		
		Properties props = new Properties();
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.host", SMTP_HOST_NAME);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "2587");
		
          //get Session   
          Session session = Session.getDefaultInstance(props,    
           new javax.mail.Authenticator() {    
           protected PasswordAuthentication getPasswordAuthentication() {    
           return new PasswordAuthentication(SMTP_AUTH_USER,SMTP_AUTH_PWD);  
           }    
          });    
          
          
          try {
  			
        	  //code for send mail
        	  Message message = new MimeMessage(session);
  			message.setFrom(new InternetAddress(FROM));
  			message.setRecipients(Message.RecipientType.TO,
  					InternetAddress.parse(to));
  			message.setSubject("Certificate of the National Webinar ");
              
              
            //code for convert input stream into bye array  
       		byte[] bytearray; 
      		BufferedInputStream bis = new BufferedInputStream(sign); 
      		ByteArrayOutputStream bao = new ByteArrayOutputStream(); 
      		byte[] buffer = new byte[4096]; 
      		int length = 0; 
      		while ((length = bis.read(buffer)) != -1) { 
      		bao.write(buffer, 0, length);
      		} 
      		bao.close(); 
      		bis.close(); 
      		bytearray = bao.toByteArray(); 
      		
      		
      		
      		Multipart multipart = new MimeMultipart();
          //compose message    
           
            // creates body part for the attachment 
      		//code for multipart for messege
            MimeBodyPart messageBodyPart = new MimeBodyPart();
            
            //code for multipart for attachemnt file
            MimeBodyPart attachPart = new MimeBodyPart();
            
            messageBodyPart.setContent("National Webinar on <b>'GRIIPP  THE RESEARCH PILLARS'</b> Organized by Internal Quality Assurance Cell (IQAC) of PDEAs Baburaoji  Gholap College ,Sangvi , Pune 411027.","text/html");
            
            String attachFile = "National_Webinar_Certificate.pdf";       

            
            DataHandler dataHandler = new DataHandler(new ByteArrayDataSource(bytearray, "application/pdf"));
            attachPart.setDataHandler(dataHandler);
            attachPart.setFileName(attachFile); 

            // adds parts to the multipart
            multipart.addBodyPart(messageBodyPart);
            multipart.addBodyPart(attachPart);

            message.setContent(multipart);

           
           //send message  
           Transport.send(message);    
           System.out.println("message sent successfully");    
          } 
          catch (MessagingException | IOException e ) 
          {
        	  throw new RuntimeException(e);
        	  }  
    	
    }
    
  //One days webinar certificate
    public static void sendEconomicsCertificate(String to,InputStream sign)
    {  
    	
    	//Get properties object    
		
		Properties props = new Properties();
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.host", SMTP_HOST_NAME);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "2587");
		
          //get Session   
          Session session = Session.getDefaultInstance(props,    
           new javax.mail.Authenticator() {    
           protected PasswordAuthentication getPasswordAuthentication() {    
           return new PasswordAuthentication(SMTP_AUTH_USER,SMTP_AUTH_PWD);  
           }    
          });    
          
          
          try {
  			
        	  //code for send mail
        	  Message message = new MimeMessage(session);
  			message.setFrom(new InternetAddress(FROM));
  			message.setRecipients(Message.RecipientType.TO,
  					InternetAddress.parse(to));
  			message.setSubject("Certificate of the National Level Webinar");
              
              
            //code for convert input stream into bye array  
       		byte[] bytearray; 
      		BufferedInputStream bis = new BufferedInputStream(sign); 
      		ByteArrayOutputStream bao = new ByteArrayOutputStream(); 
      		byte[] buffer = new byte[4096]; 
      		int length = 0; 
      		while ((length = bis.read(buffer)) != -1) { 
      		bao.write(buffer, 0, length);
      		} 
      		bao.close(); 
      		bis.close(); 
      		bytearray = bao.toByteArray(); 
      		
      		
      		
      		Multipart multipart = new MimeMultipart();
          //compose message    
           
            // creates body part for the attachment 
      		//code for multipart for messege
            MimeBodyPart messageBodyPart = new MimeBodyPart();
            
            //code for multipart for attachemnt file
            MimeBodyPart attachPart = new MimeBodyPart();
            
            messageBodyPart.setContent("One Days National Level Webinar on Impact Of Covid-19 Pandemic on Indian Economy on 25th May 2020 Organized by Department of Economics.","text/html");
            
            String attachFile = "National_Level_Webinar_Certificate.pdf";       

            
            DataHandler dataHandler = new DataHandler(new ByteArrayDataSource(bytearray, "application/pdf"));
            attachPart.setDataHandler(dataHandler);
            attachPart.setFileName(attachFile); 

            // adds parts to the multipart
            multipart.addBodyPart(messageBodyPart);
            multipart.addBodyPart(attachPart);

            message.setContent(multipart);

           
           //send message  
           Transport.send(message);    
           System.out.println("message sent successfully");    
          } 
          catch (MessagingException | IOException e ) 
          {
        	  throw new RuntimeException(e);
        	  }  
    	
    }
  //One days Marthi webinar certificate
    public static void sendMarathiCertificate(String to,InputStream sign)
    {  
    	
    	//Get properties object    
		
		Properties props = new Properties();
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.host", SMTP_HOST_NAME);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "2587");
		
          //get Session   
          Session session = Session.getDefaultInstance(props,    
           new javax.mail.Authenticator() {    
           protected PasswordAuthentication getPasswordAuthentication() {    
           return new PasswordAuthentication(SMTP_AUTH_USER,SMTP_AUTH_PWD);  
           }    
          });    
          
          
          try {
  			
        	  //code for send mail
        	  Message message = new MimeMessage(session);
  			message.setFrom(new InternetAddress(FROM));
  			message.setRecipients(Message.RecipientType.TO,
  					InternetAddress.parse(to));
  			message.setSubject("Certificate of the National Level Webinar");
              
              
            //code for convert input stream into bye array  
       		byte[] bytearray; 
      		BufferedInputStream bis = new BufferedInputStream(sign); 
      		ByteArrayOutputStream bao = new ByteArrayOutputStream(); 
      		byte[] buffer = new byte[4096]; 
      		int length = 0; 
      		while ((length = bis.read(buffer)) != -1) { 
      		bao.write(buffer, 0, length);
      		} 
      		bao.close(); 
      		bis.close(); 
      		bytearray = bao.toByteArray(); 
      		
      		
      		
      		Multipart multipart = new MimeMultipart();
          //compose message    
           
            // creates body part for the attachment 
      		//code for multipart for messege
            MimeBodyPart messageBodyPart = new MimeBodyPart();
            
            //code for multipart for attachemnt file
            MimeBodyPart attachPart = new MimeBodyPart();
            
            messageBodyPart.setContent("&#2319;&#2325; &#2342;&#2367;&#2357;&#2360;&#2368;&#2351; &#2352;&#2366;&#2359;&#2381;&#2335;&#2381;&#2352;&#2368;&#2351; &#2357;&#2375;&#2348;&#2368;&#2344;&#2366;&#2352;  &#2325;&#2379;&#2352;&#2379;&#2344;&#2379;&#2340;&#2381;&#2340;&#2352;  &#2350;&#2352;&#2366;&#2336;&#2368; &#2357;&#2367;&#2359;&#2351;&#2366;&#2330;&#2381;&#2351;&#2366; &#2313;&#2330;&#2381;&#2330;&#2358;&#2367;&#2325;&#2381;&#2359;&#2339; &#2346;&#2342;&#2381;&#2343;&#2340;&#2368;&#2340; &#2344;&#2357;&#2340;&#2306;&#2340;&#2381;&#2352;&#2332;&#2381;&#2334;&#2366;&#2344;&#2366;&#2330;&#2366; &#2357;&#2366;&#2346;&#2352;.","text/html");
            
            String attachFile = "National_Level_Webinar_Certificate.pdf";       

            
            DataHandler dataHandler = new DataHandler(new ByteArrayDataSource(bytearray, "application/pdf"));
            attachPart.setDataHandler(dataHandler);
            attachPart.setFileName(attachFile); 

            // adds parts to the multipart
            multipart.addBodyPart(messageBodyPart);
            multipart.addBodyPart(attachPart);

            message.setContent(multipart);

           
           //send message  
           Transport.send(message);    
           System.out.println("message sent successfully");    
          } 
          catch (MessagingException | IOException e ) 
          {
        	  throw new RuntimeException(e);
        	  }  
    	
    }
    
    /* ---------------------------Send Mail Through Domain End------------------------*/  
    
    
    
   
	    	
	    
	 
}
