<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mainPage</title>
    <!-- 글씨체 -->
<link rel="preconnect" href="https://fonts.gstatic.com/%22%3E">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<!-- jQuery 라이브러리 -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 부트스트랩에서 제공하고 있는 스타일 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- 부트스트랩에서 제공하고 있는 스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/dd18300701.js" crossorigin="anonymous"></script>
<style>
    div, form, input{ box-sizing: border-box;}
    div, p, form, a {font-family: 'Noto Sans KR', sans-serif;}
    div{box-sizing: border-box;  }
    .wrap{
        background-color: white;
        margin: auto;
        width: 1000px;
        height: 2080px;
    }

    .wrap>div{width:100%}
    #content_1{height: 350px;}
    #content_2{height: 450px;}
    #content_3{height: 960px; margin: auto; border-top: 1px solid lightgray;}
    #content_4{height: 350px; border-top: 1px solid lightgray;}

    #content_1>div,  #content_2>div{height: 100%; float: left; font-family: 'Noto Sans KR', sans-serif;}
     #mainImg1, #mainImg2, #mainImg3{width: 650px; height: 350px;}
    .textArea1 {
        width: 350px;
        height: 350px;
        background-color: rgb(225, 212, 169);
        color: white;
        text-align: center;
     }
     
     .textArea2{
        width: 350px;
        height: 350px;
        background-color: rgb(175, 159, 146);
        color: white;
        text-align: center;
     }
     
     .textArea3{
        width: 350px;
        height: 350px;
        background-color: rgb(170, 175, 146);
        color: white;
        text-align: center;
     }
     
     .carousel-item>div {
        float: left;
    }
   
    #content_1{position: relative;}
    #img{width: 100%;
        height: 100%;
    }
    #textTitle1, #textTitle2, #textTitle3{
        margin-top: 80px;
        margin-left:10px
    }
    
    
    #text1, #text2, #text3{
        width: 250px;
        margin-left: 50px;
        text-align: center;
    }
    #sign a{
        float: left;
        color: white;  
        }
    #direction_1{
        margin-left: 50px;
    }
    #direction_2{
        margin-left: 30px;
    }

    #recommend{width: 60%;}
    #ranking{width: 40%; border-left: 1px solid lightgray; }
    .reImg1, .reImg2, .reImg3{
        width: 180px;
        height: 120px;

    }




    .thumbnail1, .thumbnail2, .thumbnail3{
        float: left;
        width: 180px;
        height: 100px;
        padding-left: 5px;
        margin: 10px;
       
    }

    .thumbnail1:hover, .thumbnail2:hover, .thumbnail3:hover{
        cursor: pointer;
        opacity:0.7;
        transition: .6s;
        transform: scale( 1.03 )
    }
    .projectCtg1, .projectCtg2, .projectCtg3, .projectCtg4, .projectCtg5, .projectCtg6{
        color: lightgray;
    }
    
    .reTitle1, .reTitle2, .reTitle3{
    	height:70px
    }
    .percent1, .percent2, .percent3{
        color: rgb(116, 152, 107);
        margin-top: -10px;
    }

    .raContent>div{
        float: left;
        

       
    }
    .raContent{
        height: 65px;
        width: 100%; 
        margin-left: 15px;
        
}
    .raContent_1{
         width: 200px;
         height: 85px;
         margin-left: 10px;
         margin-right: 10px;
    }
    

    .newThumbnail{
        font-family: 'Noto Sans KR', sans-serif;
        background-color: white;
        width:250px;
        display:inline-block;
        margin: 40px;
        text-align: left;
        box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        
    }
    

    .newThumbnail img{
        width: 100%;
        height:200px;
    }

    #background{
       
        width: 800px;
        height: 250px;
        margin: auto;
        
    }

    #baContent{
        
        margin-left: 170px;
    }

    #baTitle{
        
        color: white;
    }

    a{
        text-decoration: none;
        color: black;
    }

    #raTitle{margin-left: 10px;}
    #reTitle, #raTitle, #newTitle{
        color:  rgb(116, 152, 107);
    }

    .newThumbnail p,.progress,small{
        margin:10px;
    }
    .newThumbnail:hover{
        cursor: pointer;
        opacity:0.7;
        transition: .6s;
        transform: scale( 1.03 )
    }
    
    
    #btnArea a{
            border:none;
            width:150px;
            height: 35px;
            margin-top: 15px;
            margin-left: 850px;
            background-color: rgb(116, 152, 107);
        }
    #btnArea a:hover{
            background-color: rgb(225, 212, 169);
        }

    #backBtn a{
            border:none;
            width:300px;
            height: 50px;
            margin-top: 15px;
            margin-left: 90px;
            background-color: rgb(116, 152, 107);
        }
    #backBtn a:hover{
            background-color: rgb(225, 212, 169);
        }

    #customerBtn a{
        margin-left: 950px;
    }
   .rankTitle{
    	font-size: x-small;
    }




   

</style>
</head>
<body>
    <jsp:include page="common/header.jsp"/>

    <div class="wrap">
        <div id="content_1">

            <div id="demo" class="carousel slide" data-ride="carousel" >
                <ul class="carousel-indicators">
                  <li data-target="#demo" data-slide-to="0" class="active"></li>
                  <li data-target="#demo" data-slide-to="1"></li>
                  <li data-target="#demo" data-slide-to="2"></li>
                </ul>
                <div class="carousel-inner" >
                 
                  <div class="carousel-item active">
                     <div class="imgArea">
                         <a href="" id="imgUrl1">
                            <img src=""  id="mainImg1">
                        </a>
                     </div> 
                    
                    <div class="textArea1" >
                       <h4 id="textTitle1"><b> </b></h4>
                        <br>
                        <p id="text1">
                       
                        </p>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="imgArea">

                        <a href="" id="imgUrl2">
                            <img src=""  id="mainImg2">
                        </a>
                    </div> 
                   
                   <div class="textArea2" >
                      <h4 id="textTitle2"><b> </b></h4>
                       <br>
                       <p id="text2">
                       
                       </p>
                   </div>
                  </div>
                  <div class="carousel-item">
                    <div class="imgArea">

                        <a href="" id="imgUrl3">
                            <img src=""  id="mainImg3">
                        </a>
                    </div> 
                   
                   <div class="textArea3" >
                      <h4 id="textTitle3"><b> </b></h4>
                       <br>
                       <p id="text3">
                       
                       </p>
                   </div>
                    
                  </div>
                </div>
                
            </div>
        </div>
        
        <script>
	            $(function(){
	        		slide();
	        	})
	        	
	        	function slide(){
					$.ajax({
						url:"slideAjax.pj",
						success:function(list){
							var i="i";
							for(var i=1; i<=3; i++){
								$("#textTitle" + i).text(list[i-1].proTitle);
								$("#text" + i).text(list[i-1].proSummary);
								$("#mainImg" + i).attr("src",list[i-1].proImage);
							}
							
							
							
							
							
							
						},error:function(){
							console.log("ajax통신 실패")
						}
					})
				}
	            	
	            	
            </script>
        
        
        

        <div id="content_2">

            <div id="recommend">
                <br>
                <h3 id="reTitle"><b>추천 프로젝트</b></h3>

                <br>
                
                
	                <div class="thumbnail1" >
	                    <a class="detailUrl1" href="">
	                         <img class="reImg1" src="">
	                    </a>
	                
	                    <br>
	                    <br>
	    
	                    <small class="projectCtg1">리빙</small>
	    
	                    <p class="reTitle1"  style="margin-top: 0;">
	                        
	                    </p>
	
	                    <p class="percent1">
	                        150% 달성
	                    </p>
	                
	                
	                </div>
                

				  
                <div class="thumbnail2" >
                    <a class="detailUrl2" href="">
                         <img class="reImg2" src="">
                    </a>
                
                    <br>
                    <br>
    
                    <small class="projectCtg2">리빙</small>
    
                    <p class="reTitle2" style="margin-top: 0;">
                       
                    </p>

                    <p class="percent2">
                        150% 달성
                    </p>
                
                
                </div>

                
                    <div class="thumbnail3" >
                        <a class="detailUrl3" href="">
                            <img class="reImg3" src="">
                        </a>
                    
                        <br>
                        <br>
        
                        <small class="projectCtg3">리빙</small>
        
                        <p class="reTitle3" style="margin-top: 0;">
                            
                        </p>

                        <p class="percent3">
                            150% 달성
                        </p>
                    
                    
                    </div>
                	
                
            </div>
            
            <script>
	            $(function(){
	        		reList();
	        	})
	        	
	        	function reList(){
					$.ajax({
						url:"reAjax.pj",
						success:function(list){
							
							var i="i";
							for(var i=1; i<=3; i++){
								$(".reTitle" + i).text(list[i-1].proTitle);
								$(".reImg" + i).attr("src",list[i-1].proImage);
							}
							
							
							
							
							
							
						},error:function(){
							console.log("ajax통신 실패")
						}
					})
				}
	            	
	            	
            </script>
                
                

            <div id="ranking">

                <br>
                <h3 id="raTitle" ><b>실시간 랭킹</b></h3>
                
                <br>
                <c:forEach var="i" begin="1" end="3">
	                <a class="raUrl" href="" style="text-decoration: none; color: black;">
	                    <div class="raContent">
	                        <div class="raNo">
	                            <h3 ><b>${i }</b></h3>
	                        </div>
	
	                        <div class="raContent_1">
	                            <p class="rankTitle${i }">
	                                
	                            </p>
	                            <p class="percent${i }">
	                                <small >누적 후원 : <span class="rankPrice${i }"></span>원</small>
	                            </p>
	
	                        </div>
	
	                        <div class="raContent_2">
	                            <img class="raImg${i }" src="" width="150" height="85">
	                        </div>
	                    </div>
	                </a>
                <br><br>
                </c:forEach>
                
                <script>
	                $(function(){
	            		rankList();
	            	})
	            	
	            	function rankList(){
						$.ajax({
							url:"rankAjax.pj",
							success:function(list){
								
								var i="i";
								for(var i=1; i<=3; i++){
									$(".rankTitle" + i).text(list[i-1].proTitle);
									$(".rankPrice" + i).text(list[i-1].proFundPrice);
									$(".raImg" + i).attr("src",list[i-1].proImage);
								}
								
								
								
								
								
								
							},error:function(){
								console.log("ajax통신 실패")
							}
						})
					}
	            	
	            	
                </script>
                
                
                
               

            </div>
            

        </div>

        <div id="content_3">

            <br><br>
            <h2 id="newTitle"><b>신규 펀딩</b></h2>

            <a id="newUrl1" href="" style="text-decoration: none; color: black;">
                <div class="newThumbnail" >
                    
                    <img src="" id="new1">


                    <br><br>
                    <small class="projectCtg1">리빙</small>

                    <p style="margin-top: 0;" id="newText1">
                        
                    </p>

                    <div class="progress" style="height:10px; margin-bottom: 0;">
                        <div class="progress-bar" id="proBar1" style="width:80%; background-color: rgb(116, 152, 107);"></div>
                    </div>

                    <div class="progress_status" style="margin-bottom: 5px; color: rgb(116, 152, 107);">
                        <small id="ach1" style="margin-right: 105px;">80% 달성</small>
                        <small id="limit1" >23일 남음</small>
                    </div>
                
                </div>
             </a>
             <a id="newUrl2" href="" style="text-decoration: none; color: black;">
                <div class="newThumbnail" >
                    
                    <img src="" id="new2">


                    <br><br>
                    <small class="projectCtg2">리빙</small>

                    <p style="margin-top: 0;" id="newText2">
                       
                    </p>

                    <div class="progress" style="height:10px; margin-bottom: 0;">
                        <div class="progress-bar" id="proBar2" style="width:80%; background-color: rgb(116, 152, 107);"></div>
                    </div>

                    <div class="progress_status" style="margin-bottom: 5px; color: rgb(116, 152, 107);">
                        <small id="ach2" style="margin-right: 105px;">80% 달성</small>
                        <small id="limit2" >23일 남음</small>
                    </div>
                
                </div>
             </a>

             <a id="newUrl3" href="" style="text-decoration: none; color: black;">
                <div class="newThumbnail" >
                    
                    <img src="" id="new3">


                    <br><br>
                    <small class="projectCtg3">리빙</small>

                    <p style="margin-top: 0;" id="newText3">
                        
                    </p>

                    <div class="progress" style="height:10px; margin-bottom: 0;">
                        <div class="progress-bar" id="proBar3" style="width:80%; background-color: rgb(116, 152, 107);"></div>
                    </div>

                    <div class="progress_status" style="margin-bottom: 5px; color: rgb(116, 152, 107);">
                        <small id="ach3" style="margin-right: 105px;">80% 달성</small>
                        <small id="limit3" >23일 남음</small>
                    </div>
                
                </div>
             </a>

             <a id="newUrl4" href="" style="text-decoration: none; color: black;">
                <div class="newThumbnail" >
                    
                    <img src="" id="new4">


                    <br><br>
                    <small class="projectCtg4">리빙</small>

                    <p style="margin-top: 0;" id="newText4">
                       
                    </p>

                    <div class="progress" style="height:10px; margin-bottom: 0;">
                        <div class="progress-bar" id="proBar4" style="width:80%; background-color: rgb(116, 152, 107);"></div>
                    </div>

                    <div class="progress_status" style="margin-bottom: 5px; color: rgb(116, 152, 107);">
                        <small id="ach4" style="margin-right: 105px;">80% 달성</small>
                        <small id="limit4" >23일 남음</small>
                    </div>
                
                </div>
             </a>

             <a id="newUrl5" href="" style="text-decoration: none; color: black;">
                <div class="newThumbnail" >
                    
                    <img src="" id="new5">


                    <br><br>
                    <small class="projectCtg5">리빙</small>

                    <p style="margin-top: 0;" id="newText5">
                        
                    </p>

                    <div class="progress" style="height:10px; margin-bottom: 0;">
                        <div class="progress-bar" id="proBar5" style="width:80%; background-color: rgb(116, 152, 107);"></div>
                    </div>

                    <div class="progress_status" style="margin-bottom: 5px; color: rgb(116, 152, 107);">
                        <small id="ach5" style="margin-right: 105px;">80% 달성</small>
                        <small id="limit5" >23일 남음</small>
                    </div>
                
                </div>
             </a>

             <a id="newUrl6" href="" style="text-decoration: none; color: black;">
                <div class="newThumbnail" >
                    
                    <img src="" id="new6">


                    <br><br>
                    <small class="projectCtg6">리빙</small>

                    <p style="margin-top: 0;" id="newText6">
                        
                    </p>

                    <div class="progress" style="height:10px; margin-bottom: 0;">
                        <div class="progress-bar" id="proBar6" style="width:80%; background-color: rgb(116, 152, 107);"></div>
                    </div>

                    <div class="progress_status" style="margin-bottom: 5px; color: rgb(116, 152, 107);">
                        <small id="ach6" style="margin-right: 105px;">80% 달성</small>
                        <small id="limit6" >23일 남음</small>
                    </div>
                
                </div>
             </a>

            <div id="btnArea"> 
                <a href="" class="btn btn-success">신규 펀딩 더보기</a>
            </div>
        </div>
        <br><br>
        
        
        <script>
	                $(function(){
	            		newList();
	            	})
	            	
	            	function newList(){
						$.ajax({
							url:"newAjax.pj",
							success:function(list){
								
								var i="i";
								for(var i=1; i<=6; i++){
									$("#newText" + i).text(list[i-1].proTitle);
									
									$("#new" + i).attr("src",list[i-1].proImage);
								}
								
								
								
								
								
								
							},error:function(){
								console.log("ajax통신 실패")
							}
						})
					}
	            	
	            	
         </script>
        

        

        <div id="content_4">
            <br>
            <div id="background">
                <div id="baContent">
                    <p>
                        <br>
                        <h1 id="baTitle"><b>매직팟에서 펀딩을 오픈하세요</b></h1>
                        
                    </p>
                    <div id="backBtn"> 
	                    <c:choose>
	                    	<c:when test="${ empty loginUser }">
	                    		<a href="" id="fnBtn" class="btn btn-success" onclick="alertFn();"><h3>펀딩 올리기</h3></a>
	                        	<script>
									function alertFn(){
										alert("로그인이 필요합니다.");
										// sweetalert 창 바로 닫히는 에러(timer안먹힘 차후 수정할지)
									}		  
									/*
									var alert = function(){
	                        			swal({
    		                        		title : "Sweet Alert",
    		                        	    icon  : "error",
    		                        	    timer : 2000,
    		                        	    closeOnClickOutside : false
    		                        	}).then(function(){
    		                        		swal('', "로그인이 필요합니다.", "error");
    		                        	});
	                        		}
									
		                        	$(function(){
	                        			$("#fnBtn").on("click", function(){
	                        				swal({
	    		                        		title : "Sweet Alert",
	    		                        	    icon  : "error",
	    		                        	    timer : 2000,
	    		                        	    closeOnClickOutside : false
	    		                        	}).then(function(){
	    		                        		swal('', "로그인이 필요합니다.", "error");
	    		                        	});
											
	                        			})
	                        		});
									*/
	                  	        </script>
	                        </c:when>
	                        <c:when test="${ loginUser.status eq 'C' }">
	                        	<!-- 내가 만든 프로젝트로 이동 추가 필요 -->
	                        	<a href="" class="btn btn-success"><h3>펀딩 올리기</h3></a>
	                        </c:when>
	                        <c:otherwise>
	                        	<a href="enrollPage.cre" class="btn btn-success"><h3>펀딩 올리기</h3></a>
	                        </c:otherwise>
	                    </c:choose>
                    </div>
                </div>
            </div>

            
            <div id="customerBtn">
                
                
                <a id="upBtn" href="">
                    <img src="resources/images/common/upBtn.png" >
                </a>
                <br>
                <a id="requestBtn" href="">
                    <img src="resources/images/common/requestBtn.png" >
                </a>
            </div>
            
        </div>

        



        <script>
            window.onload = function(){
            //반복제거
            document.getElementById("background").style.backgroundRepeat = "no-repeat";
            //이미지 등록
            document.getElementById("background").style.backgroundImage = "url('resources/images/common/baImg.png')";
            //이미지 사이즈
            document.getElementById("background").style.backgroundSize = "100%";
            }
        </script>

        
        
        
        
        
      

    </div>
	<jsp:include page="common/footer.jsp"/>

    
</body>
</html>