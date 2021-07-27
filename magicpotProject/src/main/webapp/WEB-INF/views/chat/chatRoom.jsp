<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MagicPot 헬프센터</title>
<!-- css -->
    <link rel="stylesheet" type="text/css" href="resources/css/chat/chatRoom.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com/%22%3E">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
</head>
<body>
    
    <div id="titleLine">
        <div align="center"><i class="fas fa-headset"></i>&nbsp&nbspMagicPot 헬프센터 </div>
    </div>
    
    <div id="messageArea">
   		
   	</div>
    
    <div id="chat-form">
    <input type="text" id="message" autocomplete="off" placeholder="메세지를 입력해주세요"/>
    <button id="sendBtn" value="submit"><i class="fas fa-paper-plane"></i></button>
    </div>
    
    <script type="text/javascript">
		$("#sendBtn").click(function() {
			sendMessage();
			$('#message').val('')
		});
	
		let sock = new SockJS("http://localhost:8883/echo/");
		sock.onmessage = onMessage;
		sock.onclose = onClose;
		// 메시지 전송
		function sendMessage() {
			sock.send($("#message").val());
		}
		// 서버로부터 메시지를 받았을 때
		function onMessage(msg) {
			var data = msg.data;
			$("#messageArea").append(data + "<br/>");
		}
		// 서버와 연결을 끊었을 때
		function onClose(evt) {
			$("#messageArea").append("연결 끊김");
	
		}
</script>
    
</body>
</html>