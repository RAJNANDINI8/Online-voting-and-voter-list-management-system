package candidateverification;

import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class sendemail {
  
	public String getRandom() {
		Random r=new Random();
		int number=r.nextInt(999999);
		
		return String.format("%06d", number);
	}
	
	public boolean sendEmail(userinfo user) {
		boolean test=false;
		
		String toemail=userinfo.getEmail();
		String fromEmail="**************";
		String password="********";
		
		try {
			Properties pr=new Properties();
			
		
		  
			pr.setProperty("mail.smtp.host","smtp.gmail.com");
			
			pr.setProperty("mail.smtp.port","587");

			pr.setProperty("mail.smtp.auth","true");
			pr.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
			pr.setProperty("mail.smtp.starttls.enable","true");
			
//			pr.put("mail.smtp.socketFactory.port","587");
//			pr.put("mail.smtp.socketFactory.class","javax.net,ssl.SSLSocketFactory");
//			
			
			Session session=Session.getInstance(pr,new Authenticator() {
				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					
					return new PasswordAuthentication(fromEmail,password);
				}
				
			});
			
			Message m=new MimeMessage(session);
			m.setFrom(new InternetAddress(fromEmail));

			m.setRecipient(Message.RecipientType.TO,new InternetAddress(toemail));
			
			m.setSubject("Email Verification For Evote");
			m.setText("This is your Email Verification Mail.Please verify your account using this code : "+userinfo.getCode());
			
			Transport.send(m);
			test =true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return test;
	}
}