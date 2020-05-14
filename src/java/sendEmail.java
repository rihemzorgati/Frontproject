/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Rihem
 */
public class sendEmail {
    
    private String sender;
    private String to;
    private String msgBody;

    
    public sendEmail(String sender, String to, String msgBody) {
	this.sender = sender;
	this.to = to;
	this.msgBody = msgBody;
    }

    public String getSender() {
	return sender;
    }

    public void setSender(String sender) {
	this.sender = sender;
    }

    public String getTo() {
	return to;
    }

    public void setTo(String to) {
	this.to = to;
    }

    public String getMsgBody() {
	return msgBody;
    }

    public void setMsgBody(String msgBody) {
	this.msgBody = msgBody;
    }
    
     
    
    
}
