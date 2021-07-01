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
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    *{font-family:'Noto Sans KR', sans-serif;}
    div{border:px solid white;}
    #outer{width:1000px; height:1000px; text-align:center; margin:auto;}
    
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
    
    #progress{
        height:10px; 
        margin-bottom: 0;
    }
    #progress-bar{
        background-color: rgb(116, 152, 107); 
        border-radius:5px;
    }
    
    #btn-success1{
        width:360px;
        height:45px;
        background-color:rgb(116, 152, 107);
        font-size:19px;
    }
    
    #btn-outline-secondary{
        width:110px;
        height:50px;
        border-color:lightgray;
    }
    
	.btn-outline-secondary:hover{
		background-color:#fff!important;
    	color:#000!important;	
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
    #content2>ul>li{float:left; margin-left:50px;}
    #content2>ul>li>a{text-decoration:none; color:lightslategray;}
    
    /*content3*/
    #content3,#content3_1,#content3_2{float:left;}
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
			<h2>
				<b>유기농 면으로 만든 끈조절 가능한 다회용 마스크</b>
			</h2>
			<br>

			<div id="content1_1">
				<img src="../common/img/마스크.png">
			</div>

			<div id="content1_2">
				<div id="content1_2_1">
					<span style="font-size: 25px;">11</span>일 남음
				</div>
				<br>
				<br>
				<div class="progress" id="progress">
					<div class="progress-bar" id="progress-bar" style="width: 80%;"></div>
				</div>

				<div id="content1_2_2">
					<span style="font-size: 25px;">82</span>%달성
				</div>
				<br>
				<br>

				<div id="content1_2_3">
					<span style="font-size: 25px;">2,029,000</span>원 펀딩
				</div>
				<br>
				<br>

				<div id="content1_2_4">
					<span style="font-size: 25px;">102</span>명의 서포터
				</div>
				<br>
				<br>

				<button type="button" class="btn btn-success" id="btn-success1">펀딩하기</button>
				<br>
				<br>

				<button type="button" class="btn btn-outline-secondary" id="btn-outline-secondary">
					<img src="../common/문의.png">
					<p>문의</p>
				</button>
				&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn btn-outline-secondary" id="btn-outline-secondary">
					<i class="far fa-heart fa-2x"
						style="float: left; margin-left: 7px; margin-top: 2px;"></i>
					<p>238</p>
				</button>
				&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn btn-outline-secondary" id="btn-outline-secondary">
					<img src="../common/공유.png">
					<p>공유</p>
				</button>
			</div>
		</div>

		<hr>
		<div id="content2">
			<ul>
				<li><a href="story.fd">스토리</a></li>
				<li><a href="author.fd">작가의 말</a></li>
				<li><a href="review.fd">체험리뷰</a></li>
			</ul>
		</div><br>
		<hr>

		<div id="content3">
            <div id="content3_1">
                <h5><b>안녕하세요, 건강한 지구를 위한 아름다운 습관, 컨티뉴어스! 입니다.</b></h5>
                <p>제가 아이 둘 엄마가 되면서부터, 그 전에는 생각해 본 적 없던 환경문제가 신경쓰이기 시작했습니다. '앞으로 우리 아이들이 커서 어떤 직업을 갖고 어떤 모습으로 살아가게 될까?' 가 아니라, '우리 아이들이 깨끗한 공기, 안전한 물을 마시기나 할 수 있을까? 장래희망을 꿈꾸기보다, 생존을 더 걱정하는 삶을 살게 되진 않을까?' 라는 생각이 들었습니다.
                                           아이들이 마음껏 꿈을 펼칠 수 있길 바라며 시작한 컨티뉴어스는 지구에 해를 덜 끼치는 친환경 소재와 사용자의 편의성을 고려한 생활필수품을 연구, 개발하고 있습니다. 다양한 정보와 소식은 인스타그램을 통해 공유하며 많은 사람들과 소통하고 있습니다.
                </p>

            </div>
            
			<div id="reward">
				<div id="reward_1">
					<a href="#"> <b>1000원 펀딩</b><br> <span>선물을 선택하지 않고
							밀어만 줍니다.</span>
					</a>
				</div>
				<br>

				<div id="reward_2">
					<a href="#"> <b>12000원 펀딩</b><br> <span>제로웨이스트 유기농
							마스크 1개<br>배송비 포함
					</span>
					</a>
				</div>
				<br>

				<div id="reward_3">
					<a href="#"> <b>25000원 펀딩</b><br> <span>제로웨이스트 유기농
							마스크 2개<br> 환경지키미 배지 1개<br> 배송비포함
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