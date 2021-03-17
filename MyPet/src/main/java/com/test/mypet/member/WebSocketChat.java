package com.test.mypet.member;

import java.util.ArrayList;
import java.util.List;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.RemoteEndpoint.Basic;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

@Controller
@ServerEndpoint(value="/member/echo.action")
public class WebSocketChat {
	
	private static final List<Session> sessionList=new ArrayList<Session>();
	
    private static final Logger logger = LoggerFactory.getLogger(WebSocketChat.class);
    public WebSocketChat() {

        System.out.println("웹소켓(서버) 객체생성");
    }
    
    @OnOpen
    public void onOpen(Session session) {
        logger.info("Open session id:"+session.getId());
        try {
            final Basic basic=session.getBasicRemote();
            basic.sendText("마이펫 채팅에 연결 되었습니다.");
        }catch (Exception e) {

            System.out.println(e.getMessage());
        }
        sessionList.add(session);
    }
    
    /*
     * 모든 사용자에게 메시지를 전달한다.
     */
    private void sendAllSessionToMessage(Session self, String sender, String message) {
    	
//        try {
//            for(Session session : WebSocketChat.sessionList) {
//                if((!self.getId().equals(session.getId())) && (!self.getId().equals("Administrator1"))) {
//                    session.getBasicRemote().sendText(sender+" : "+message);
//                } else if ((!self.getId().equals(session.getId())) && (self.getId().equals("Administrator1"))) {
//                	session.getBasicRemote().sendText("마이펫 : "+message);
//                }
//                
//                
//                
//            }
//        }catch (Exception e) {
//
//            System.out.println(e.getMessage());
//        }
    	
        try {
        	for(Session session : WebSocketChat.sessionList) {
        		if((!self.getId().equals(session.getId())) && (!(self.getId().equals("Administrator1")))) {
        			//session.getBasicRemote().sendText(sender+" : "+message);
        			session.getBasicRemote().sendText("마이펫 : "+message);
        		} else if ((!self.getId().equals(session.getId())) && (self.getId().equals("Administrator1"))) {
        			session.getBasicRemote().sendText("마이펫 : "+message);
        		}
        		
        		
        		
        	}
        }catch (Exception e) {
        	
        	System.out.println(e.getMessage());
        }
    }
    
    /*
     * 내가 입력하는 메세지
     */
    @OnMessage
    public void onMessage(String message,Session session) {
    	
    	String sender = message.split(",")[1];
    	message = message.split(",")[0];
    	
        logger.info("Message From "+sender + ": "+message);
        try {
            final Basic basic=session.getBasicRemote();
//            basic.sendText("<나> : "+message);
            basic.sendText(sender + "님 : " + message);
        }catch (Exception e) {

            System.out.println(e.getMessage());
        }
        sendAllSessionToMessage(session, sender, message);
    }
    
    @OnError
    public void onError(Throwable e,Session session) {
        
    }
    
    @OnClose
    public void onClose(Session session) {
        logger.info("Session "+session.getId()+" has ended");
        sessionList.remove(session);
    }

}
