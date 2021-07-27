package com.kh.magicpot.chat.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class ChatMessage {
	
	private String user;
	private String to;
	private String articleId;
	private String articleOwner;
	private String message;
	
}
