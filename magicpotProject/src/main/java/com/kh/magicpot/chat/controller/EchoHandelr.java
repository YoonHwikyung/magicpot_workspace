package com.kh.magicpot.chat.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;
import com.kh.magicpot.chat.model.vo.ChatMessage;


public class EchoHandelr extends TextWebSocketHandler{

	
	private static Logger logger = LoggerFactory.getLogger(EchoHandelr.class);
	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
	
	/**
	 * 연결
	 */
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception{
		String chatMember = (String)session.getAttributes().get("user");	// 현재 로그인한 멤버
		sessionList.add(session);
		logger.info("{} 연결되었습니다.", session.getId() + ":" + chatMember);
	}
	
	/**
	 * 메세지 전송
	 */
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		String chatMember = (String) session.getAttributes().get("user"); 			// 현재 로그인한 멤버
		logger.info("{}로 부터 {}를 전달 받았습니다.", chatMember, message.getPayload());
		Gson gson = new Gson();
		ChatMessage msg = gson.fromJson(message.getPayload(), ChatMessage.class);
		TextMessage sendMsg = new TextMessage(gson.toJson(msg)); 					// 전달 메세지
		for (WebSocketSession webSocketSession : sessionList) {
		webSocketSession.sendMessage(sendMsg); 										// 상대방에게 메세지 전달
		}
	}
	
	/**
	 * 연결 끊김
	 */
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		String chatMember = (String) session.getAttributes().get("user");	// 현재 로그인한 멤버
		sessionList.remove(session);
		logger.info("{} 연결이 끊김", session.getId()+chatMember);
	}
	
}
