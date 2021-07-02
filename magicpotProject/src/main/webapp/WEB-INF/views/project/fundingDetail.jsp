<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!--부트스트랩-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!--폰트-->
<link rel="preconnect" href="https://fonts.gstatic.com/%22%3E">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- 부트스트랩에서 제공하고 있는 스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js%22%3E"></script>
<script src="https://kit.fontawesome.com/dd18300701.js" crossorigin="anonymous"></script>

<!-- 다인 추가 - 카카오 공유용 js파일 -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>    


<!-- 다인 추가 - 페이스북 공유용 코드 -->
<meta property="og:type"          content="website" />
<meta property="og:url"           content="http://172.30.1.48:8883/magicpot/detail.fd" />
<meta property="og:title"         content="Magicpot 제로웨이스트" />
<meta property="og:description"   content="제로웨이스트의 시작, Magicpot과 환경을 지켜나가요." />
<meta property="og:image"         content="resources/images/common/shareImage.jpg" />

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    *{font-family:'Noto Sans KR', sans-serif;}
    div{border:1px solid white;}
    #outer{width:1000px; height:px; text-align:center; margin:auto;}
    
    #category{
        width:100px; 
        height:30px; 
        background-color:rgb(225, 212, 169); 
        display:inline-block;
    }
    #category>p{font-weight:500; color:white; margin-top:5px;}

    #content1{height:410px;}
    #content1_1>img{
        float:left; 
        width:480px; 
        height:330px; 
        margin-left:50px;
    }
    
    /*content1_2*/
    #content1_2{float:left; margin-left:40px;}
    #content1_2_1,#content1_2_2,#content1_2_3,#content1_2_4{float:left;}

    .progress{
        height:10px; 
        margin-bottom: 0;
    }
    .progress-bar{
        background-color: rgb(116, 152, 107); 
        border-radius:5px;
    }

    .btn-success{
        width:360px;
        height:45px;
        background-color:rgb(116, 152, 107);
        font-size:19px;
    }
    .btn-outline-secondary{
        width:110px;
        height:50px;
        border-color:lightgray;
        
    }
    .btn-outline-secondary>img{
        width:35px; 
        height:35px; 
        margin-top:-2px; 
        float:left;
    }
    .btn-outline-secondary>p{margin-top:5px;}

    /*content2*/
    #content2>ul{list-style-type:none;}
    #content2>ul>li{float:left; margin-left:50px; margin-top:-5px;}
    #content2>ul>li>a{text-decoration:none; color:lightslategray;}
    
    /*content3*/
    #content3_1,#content3_2{float:left;}
    #content3_1{width:480px; margin-left:50px; text-align:left;}
    #content3_1>img{width:480px; height:330px;}

    /*reward*/
    #reward{
        width:360px; 
        margin-left:50px; 
        text-align:left; 
        float:left;
    }
    #reward>div{
        background-color:rgb(250, 250, 250); 
        box-shadow:4px 4px 4px rgb(206, 204, 204);
    }
    #reward a{
        list-style:none;
		text-decoration:none;
		color:black;	
    }
    
    /* 다인 추가 - 공유하기 */
    #shareListButton{width:95%;}
    
    
</style>
</head>
<body>

	<!-- header --> 
	<jsp:include page="../common/header.jsp"/>
	
    <div id="outer">
        <div id="category">
            <p>LIVING</p>
        </div>

        <div id="content1">
            <h2><b>유기농 면으로 만든 끈조절 가능한 다회용 마스크</b></h2>
            <br>

            <div id="content1_1">
                <img src="../common/img/마스크.png">
            </div>
            
            <div id="content1_2">
                <div id="content1_2_1">
                    <span style="font-size:25px;">11</span>일 남음
                </div>
                <br><br>
                <div class="progress">
                    <div class="progress-bar" style="width:80%;"></div>
                </div>

                <div id="content1_2_2">
                    <span style="font-size:25px;">82</span>%달성
                </div><br><br>

                <div id="content1_2_3">
                    <span style="font-size:25px;">2,029,000</span>원 펀딩
                </div><br><br>

                <div id="content1_2_4">
                    <span style="font-size:25px;">102</span>명의 서포터
                </div><br><br>

                <button type="button" class="btn btn-success">펀딩하기</button>
                <br><br>
                
                <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#messageModal"><i class="far fa-envelope fa-2x" style="float: left; margin-left:7px; margin-top:2px;"></i><p>문의</p></button>&nbsp;&nbsp;&nbsp;
                <button type="button" class="btn btn-outline-secondary"><i class="far fa-heart fa-2x" style="float: left; margin-left:7px; margin-top:2px;"></i><p>238</p></button>&nbsp;&nbsp;&nbsp;
                <button type="button" id="share" class="btn btn-outline-secondary"><i class="fas fa-share-alt fa-2x" style="float: left; margin-left:7px; margin-top:2px;"></i><p>공유</p></button>
            </div>
        </div>
        
        <!-- 다인 추가 - 문의용 모달 -->
        <div class="modal" id="messageModal">
            <div class="modal-dialog">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header" style="background-color: rgb(116, 152, 107); color:white;">
                    <h4 class="modal-title">창작자에게 문의하기</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
        
                <!-- Modal body -->
                <div class="modal-body">
                      <div class="form-group">
                        <label for="comment">문의 내용</label>
                        <textarea class="form-control" rows="10" id="comment" name="reportContent" placeholder="크리에이터에게 문의하고 싶은 내용을 입력해주세요." style="resize:none"></textarea>
                      </div>
                </div>
        
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="submit" class="btn btn-outline-success">메세지 보내기</button>
                    <button type="button" class="btn btn-outline-danger" data-dismiss="modal">취소</button>
                </div>
        
            </div>
            </div>
        </div>
        
        <!-- 다인 추가 - 공유하기 기능 -->
        <div id="shareListButton" align="right" style="display:none">        
        	<a href="javascript:shareFacebook();"><img src="resources/images/project/icon-facebook.png"></a>
        	<a href="javascript:shareTwitter();"><img src="resources/images/project/icon-twitter.png"></a>
        	<a id="btnKakao" href="javascript:shareKakao();"><img src="resources/images/project/icon-kakao.png"></a>
        </div>
        
        <script>
        	// 공유 버튼 클릭시 공유 가능한 sns띄워주기
        	$(function(){
        		
        		$("#share").on("click", function(){
        			$("#shareListButton").toggle();
        		});
        	});
        	
        	
        	function shareFacebook(){	// 페이스북 공유
        		var url = 'http://172.30.1.48:8883/magicpot/detail.fd';
        		var encodeUrl = encodeURIComponent(url);
        		var facebook = 'http://www.facebook.com/sharer/sharer.php?u=';
        		var link = facebook + encodeUrl;
        		window.open(link);
        	}

			/*
        	function shareFacebook(){
        		window.open("http://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(window.locaion.href), "_blank", "width=600, height=400" );
        	}
			*/
   
        	function shareTwitter(){	// 트위터 공유
        		var sendText ="magicpot 제로웨이스트"; 	// 공유시 전달할 text
        		var sendUrl ="http://localhost:8883/magicpot/detail.fd"; // 공유할 url 주소
        		window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
        	}
        	
        	
        	function shareKakao() { // 카카오 공유
                Kakao.init('727f2dc1bc85980ca9ab5f26bd2b0c02');
                Kakao.Link.sendCustom({
                    templateId: [56192]
                });
            }
        	
       		try {
    			  function shareKakao() { // 카카오 공유
    			    Kakao.init('727f2dc1bc85980ca9ab5f26bd2b0c02')
    			    Kakao.Link.sendDefault({
    			      objectType: 'feed',
    			      content: {
    			        title: 'Magicpot',
    			        imageUrl:
    			          'http://k.kakaocdn.net/dn/TcTlF/btq8ytBsVeI/UfCtLRGF9NqYZk6WSHhfPK/kakaolink40_original.jpg',
    			        link: {
    			          mobileWebUrl: 'http://localhost:8883/magicpot/detail.fd',
    			          webUrl: 'http://localhost:8883/magicpot/detail.fd',
    			        },
    			      },
    			      buttons: [
    			        {
    			          title: '웹으로 보기',
    			          link: {
    			            mobileWebUrl: 'http://localhost:8883/magicpot/detail.fd',
    			            webUrl: 'http://localhost:8883/magicpot/detail.fd',
    			          },
    			        },
    			        {
    			          title: '앱으로 보기',
    			          link: {
    			            mobileWebUrl: 'http://localhost:8883/magicpot/detail.fd',
    			            webUrl: 'http://localhost:8883/magicpot/detail.fd',
    			          },
    			        },
    			      ],
    			    })
    			  }
    			; window.kakaoDemoCallback && window.kakaoDemoCallback() }
    			catch(e) { window.kakaoDemoException && window.kakaoDemoException(e) }
        </script>

        <hr>
        <div id="content2">
                <ul>
                    <li><a href="story.fd">스토리</a></li>
                    <li><a href="author.fd">작가의 말</a></li>
                    <li><a href="review.fd">체험리뷰</a></li>
                </ul>
        </div>
        <hr>
          
        <div id="content3">
            <div id="content3_1">
                <h5><b>안녕하세요, 건강한 지구를 위한 아름다운 습관, 컨티뉴어스! 입니다.</b></h5>
                <p>제가 아이 둘 엄마가 되면서부터, 그 전에는 생각해 본 적 없던 환경문제가 신경쓰이기 시작했습니다. '앞으로 우리 아이들이 커서 어떤 직업을 갖고 어떤 모습으로 살아가게 될까?' 가 아니라, '우리 아이들이 깨끗한 공기, 안전한 물을 마시기나 할 수 있을까? 장래희망을 꿈꾸기보다, 생존을 더 걱정하는 삶을 살게 되진 않을까?' 라는 생각이 들었습니다.
                                           아이들이 마음껏 꿈을 펼칠 수 있길 바라며 시작한 컨티뉴어스는 지구에 해를 덜 끼치는 친환경 소재와 사용자의 편의성을 고려한 생활필수품을 연구, 개발하고 있습니다. 다양한 정보와 소식은 인스타그램을 통해 공유하며 많은 사람들과 소통하고 있습니다.
                </p>

                <h5><b>프로젝트 소개</b></h5>
                <img src="">
                <br><br>
                
                <h5><b>리워드 구성상품 안내</b></h5>
                <img src="">
                <br><br>

                <h5><b>프로젝트 예산</b></h5>
                <p> 
                   	 컨티뉴어스의 첫 펀딩 프로젝트는 최소 오십만원 (500,000원)의 예산을 목표로, 제작비와 친환경 포장비, 인쇄비 및 배송비를 포함합니다.
                </p>

                <h5><b>제작 일정</b></h5>
                <p>- 여름부터 시작된 이 프로젝트는 현재, 지구에 덜 해를 끼치는 시설을 갖춘 곳이면서 동시에 바느질할 노동자들을 알맞게 대우해주는 믿을 수 있는 시설을 갖춘 업체를 찾았습니다. 현재 샘플 제작 및 제품 테스트까지 완료되었고, 실제 제품 제작과 패키지 디자인 수정만 남겨두고 있습니다.
                    - 결제가 완료되고 7일 후인 2021년 1월 24일부터 택배 배송이 시작됩니다.
                    - 제주 및 도서산간 지방으로 받아보실 분은 밀어주기 금액에 3,000원을 추가 부탁드립니다.
                </p>

                <h5><b>후원자 안내</b></h5>
                
                
                    <b>포장</b>
                    <span>
                        - 컨티뉴어스는 배송/포장도 지구를 생각합니다. 비닐, 뽁뽁이, 택배봉투, 일반 박스테이프는 일절 사용하지 않고  종이테이프, 종이뽁뽁이, 종이택배상자, 한지 포장을 선호합니다.
                    </span>
                    <br>

                    <b>배송관련</b>
                    <span>
                        - 모든 리워드(구성)에는 배송비 3,000원이 포함되어 있습니다. 
                    </span>
                    <br>

                    <b>펀딩 이후 구매 방법</b><br>
                    <span>
                        - 펀딩 종료 후 구매를 원하실 경우, 잔여 재고에 한해 컨티뉴어스 공식 스토어에서 구매 가능합니다. (공식 스토어 : smartstore.naver.com/continuearth)
                        - 현재 인스타그램 @continuearth 에서 지구에 무해한 생활을 위한 정보나 다양한 다른 생활필수품들에 관한 이야기들을 서로 공유하고 소통 중입니다. 많은 관심 부탁드립니다.
                    </span>

            </div>

            <div id="reward">
                <div id="reward_1">
                    <a href="#">
                        <b>1000원 펀딩</b><br>
                        <span>선물을 선택하지 않고 밀어만 줍니다.</span>
                    </a>
                </div><br>

                <div id="reward_2">
                    <a href="#">
                        <b>12000원 펀딩</b><br>
                        <span>제로웨이스트 유기농 마스크 1개<br>배송비 포함</span>
                    </a>
                </div><br>

                <div id="reward_3">
                    <a href="#">
                        <b>25000원 펀딩</b><br> 
                        <span>제로웨이스트 유기농 마스크 2개<br>
					                       환경지키미 배지 1개<br>
					                       배송비포함
                        </span>
                    </a>
                </div>
            </div>

        </div>

    </div>
    
    
	<!-- footer -->
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>