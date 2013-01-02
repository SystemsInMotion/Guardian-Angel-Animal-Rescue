package com.systemsinmotion.petrescue.mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.systemsinmotion.petrescue.web.bean.AdoptionApplication;

public class MailManager {
	private String from;
	private String host;
	private String password;
	private String[] recipients;
	private String subject;
	private String username;

	private void addRecipients(MimeMessage message) throws MessagingException, AddressException {
		for (String recipient : recipients) {
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
		}
	}

	private void addSubject(MimeMessage message, AdoptionApplication application) throws MessagingException {
		String subject = this.subject;
		subject = subject.replace("[firstName]", application.getFirstName());
		subject = subject.replace("[lastName]", application.getLastName());
		subject = subject.replace("[petName]", application.getPet().getName());
		message.setSubject(subject);
	}

	private Properties createProperties() {
		Properties props = System.getProperties();
		props.put("mail.smtp.host", this.host);
		props.put("mail.smtp.auth", "true");
		return props;
	}

	private Session createSession(Properties props) {
		return Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
	}

	public void send(AdoptionApplication application) throws AddressException, MessagingException {
		Properties props = createProperties();
		Session session = createSession(props);

		MimeMessage message = new MimeMessage(session);
		addSubject(message, application);
		addRecipients(message);
		message.setFrom(new InternetAddress(this.from));
		message.setText("This is actual message");

		Transport.send(message);
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setRecipients(String[] to) {
		this.recipients = to;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public void setUsername(String username) {
		this.username = username;
	}
}
