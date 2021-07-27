<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MagicPot 헬프센터</title>
<style>
	.text_right {text-align: right;}
	.text_left {text-align: left;}
	.chattingBox {
		padding : 15px;
		/*border : 1px solid #AAA;*/
		margin: 10px 0;
	}
	
body {
font-family: 'Noto Sans KR', sans-serif;
background-color: white;
}
#titleLine{
    width:100%;
    height: 40px;
    background-color: rgb(116, 152, 107);
}
#titleLine>div{
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 22px;
    font-weight: bold;
    color:white;
}
#chat-form {
background: #eee;
padding: 3px;
position:
fixed;
bottom: 0; 
width: 100%; 
}
#chat-form input {
border: 0; 
/* border-radius: 5px; */
padding: 10px; 
width: 89%; 
margin-right:0.5%; 
}
#chat-form button {
width: 9%; 
/* border-radius: 5px; */
background: white;
border: none; 
padding: 10px; 
}
#messages { 
list-style-type: none; 
margin: 0; 
padding: 0; 
}
input:focus {
    outline: none;
}

#chattingBox-1{
width: 100%; 
height:500px;
overflow: auto;
}
</style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com/%22%3E">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
<script
src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
</head>
<body>
    
    <div id="titleLine">
        <div align="center"><i class="fas fa-headset"></i>&nbsp&nbspMagicPot 헬프센터 </div>
    </div>
    <form>
	    <div class="well" id="chatdata">
	    	<input type="hidden" value='${user}' id="sessionuserid">
	   			<div class='well text_left'>
				  	<div class='alert alert-warning' style='background-color:rgba(231, 221, 187, 0.247); border:none;'>
				  		 <small>
				  		 안녕하세요. 매직팟 헬프센터 입니다. <br>
				  		 펀딩 상품에 상세 정보는 크리에이터에게 문의해주세요!<br>
				  		 </small>
				  	</div>
			  	</div>
	   	</div>
	    
	    <div id="chat-form">
	    <input type="text" id="message" autocomplete="off" placeholder="메세지를 입력해주세요"/>
	    <button id="sendBtn" value="submit"><i class="fas fa-paper-plane"></i></button>
	    </div>
    </form>
    <script>
	  	//websocket을 지정한 URL로 연결
	    var sock = new SockJS("<c:url value="/echo"/>");
  		
	  	//websocket 서버에서 메시지를 보내면 자동으로 실행된다.
	    sock.onmessage = onMessage;
	  	
	  	//websocket 과 연결을 끊고 싶을때 실행하는 메소드
	    sock.onclose = onClose;
	  	
	  	//websocket 과 연결되었을 때 실행할 메소드
	  	sock.onopen = onOpen;
	  	$(function(){
	  		$("form").submit(function(){
	  			console.log('send message...');
	  			sendMessage();
	  			$("#message").val('');
	  			$("#message").focus();
	  			return false;
	  		});
	  	});
	  	
	  	
	  	function sendMessage(){
	  		var msg = {
	  				user : '${user}',
	  				to : '매직팟 고객센터', // 현재 페이지 작성자의 id를 작성
	  				message : $("#message").val()
	  				};
	  				sock.send(JSON.stringify(msg));
	  	}
	  	
	  	//evt 파라미터는 websocket이 보내준 데이터다.
	  	function onMessage(evt) { //변수 안에 function자체를 넣음.
		  	var data = evt.data; // 전달 받은 데이터
		  	//alert(data);
		  	msgData = JSON.parse(data);
		  	var sessionid = null;
		  	var message = null;
		  	//current session id//
		  	var currentuser_session = $('#sessionuserid').val();
		  	console.log('current session id: ' + currentuser_session);
		  	var target = $('#chattingBox-1');
		  	if(target.length==0){
			  	$('<div id=\"chattingBox-1\" class=\"chattingBox\"></div>').appendTo('body');
			  	//$('#chattingBox-1').append('<hr>')
		  	}
		  	// 나와 상대방이 보낸 메세지를 구분하여 출력
		  	if (msgData.user == currentuser_session) { // 내가 보낸 메세지
			  	var printHTML = "<div class='well text_right'>";
			  	printHTML += "<div class='alert alert-info' style='background-color:rgb(165, 202, 156, 0.473); border:none;'>";
			  	//printHTML += "<strong>[" + msgData.user + "] -> " + msgData.message
			  	printHTML += "<p>";
			  	 if(msgData.user != ""){
			  		 if(msgData.user == "admin"){
			  			printHTML += "<small style='color:rgb(165, 202, 156); font-weight: bolder;'>" + "매직팟 고객센터" + " </small>"
			  		 }else{
				  		printHTML += "<small style='color:rgb(165, 202, 156); font-weight: bolder;'>" + msgData.user + " </small>"
			  		 }
			  	 }
			  	printHTML +=  msgData.message;
			  	+ "</p>";
			  	printHTML += "</div>";
			  	printHTML += "</div>";
			  	$('#chattingBox-1').append(printHTML);
		  	} else { // 상대방이 보낸 메세지
			  	var printHTML = "<div class='well text_left'>";
			  	printHTML += "<div class='alert alert-warning' style='background-color:rgba(231, 221, 187, 0.247); border:none;'>";
			  	//printHTML += "<strong>[" + msgData.user + "] -> " + msgData.message
			  	printHTML += "<p>";
			  	 if(msgData.user != ""){
			  		if(msgData.user == "admin"){
			  			printHTML += "<small style='color:rgb(165, 202, 156); font-weight: bolder;'>" + "매직팟 고객센터" + " </small>"
			  		 }else{
				  		printHTML += "<small style='color:rgb(165, 202, 156); font-weight: bolder;'>" + msgData.user + " </small>"
			  		 }
			  	 }
			  	printHTML +=  msgData.message;
			  	+ "</p>";
			  	printHTML += "</div>";
			  	printHTML += "</div>";
			  	$('#chattingBox-1').append(printHTML);
		  	}
	  		console.log('chatting data: ' + data);
	  		/* sock.close(); */
	  	}
	  	
	  	// 채팅방에서 나갔을 때
	  	function onClose(evt) {
	  		
	  		var user = '${user}';
	  		var str = "<div style='text-align:center;'>" + user + "님이 상담을 종료하였습니다. </div>";
  			//$("#data").append("연결 끊김");
	  		//$('#chatdata').append(str);
	  		//onMessage(str);
	  		sendMessage2(str);
  		}
	  	
	  	// 채팅창에 들어왔을 떄
	  	function onOpen(evt){
	  		var user = '${user}';
		  		var str = "<div style='text-align:center;'><small>" + user + "님이 입장하셨습니다. </small></div>";
		  		$('#chatdata').append(str);
	  	}
	  	
</script>

</body>
</html>