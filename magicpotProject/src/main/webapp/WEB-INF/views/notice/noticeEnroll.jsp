<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<link rel="preconnect" href="https://fonts.gstatic.com/%22%3E">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<!-- include libraries(jQuery, bootstrap) -->
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
 
<style>
    div, form, input{ box-sizing: border-box;}
    div, p, form, a, input {font-family: 'Noto Sans KR', sans-serif;}
    div{box-sizing: border-box;  }
    .wrap{
        background-color: white;
        margin: auto;
        width: 1000px;
        height: 1300px;
    }

    .wrap>div{width:100%}
    .content_1{height: 240px; background-color: rgb(225, 212, 169);}
    .content_2{
        height: 1000px;
    }

    #textArea{
        margin-top: 50px;
    }

    #textArea_1>p{
        color: hsl(51, 89%, 50%);
        font-size: 30px;
        padding: 70px 60px;
        
    }

    #textArea_1>p>b{
        color: white;
        font-size: 30px;
    }
    #textArea_2>p{
        color: white;
        font-size: 18px;
        margin-top: -90px;
        margin-left: 62px;
    }

    #guideLogo{
        margin-left: 450px;
        margin-top: -130px;
    }

    .content_2>div{
        float: left;
    }
    .mainContent{
        border: 1px solid lightgray;
        height: 1000px;
        width: 1000px;
        margin-top: 20px;
        box-shadow: 10px 10px 5px grey;
    }

    #cloud, #enroll{
        width: 650px;
        margin-left: 20px;
    }

    #common, #customer, #creator, #etc{
        width: 220px;
        margin-left: 10px;
    }

    #cloudTitle, #enrollTitle, #commonTitle, #customerTitle, #creatorTitle{
        padding: 30px 0px;
    }

    #cloudContent{
        border-top: 3px solid lightgray;
        margin-top: -20px;
    }
    
	 /*버튼영역*/
	#buttonArea{padding-left:50%;}
    #noButton{
        background-color:rgb(116, 152, 107); 
        border:none;
        margin-left:10px;
    }
	#enrollForm{margin-left:15%;}
	
</style>
</head>
<body>


	<!-- 헤더 포함 -->
	<jsp:include page="../common/header.jsp"/>


    <div class="wrap">
        <div class="content_1">
            <div id="textArea_1">
                <p>
                    <b>공지사항</b> Notice
                </p>
            </div>
            <div id="textArea_2">
                <p>
                    매직팟 공지사항에 대해 안내해드립니다. 
                </p>
            </div>

            <img src="resources/images/common/guideLogo.png" id="guideLogo">
                                       
                
        </div>

		<div class="content_2">
			<div class="mainContent">

				<div id="cloud">
					<div id="cloudTitle">
						<h4><b>공지사항</b></h4>
					</div>

					<div id="cloudContent" style="width:950px;"></div>
					<br><br>

					
					<!-- 글 등록 영역 -->
					<form id="enrollForm" method="post" action="insert.no"
						enctype="multipart/form-data">
						<table align="center">
							<tr>
								<th><label for="noTitle" style="width:60px">제목</label></th>
								<td><input type="text" id="title" class="form-control"
									name="noTitle" placeholder="제목을 입력하세요."required
									style="width:700px"></td>
							</tr>
							<tr>
								<th><label for="memId">작성자</label></th>
								<td><input type="text" id="memId" class="form-control"
									value="${ loginUser.memId }" name="memId" readonly></td>
							</tr>
							<tr>
								<th><label for="upfile">첨부파일</label></th>
								<td><input type="file" id="upfile"
									class="form-control-file border" name="upfile"></td>
							</tr>
							<tr>
								<th colspan="2"><label for="content">내용</label></th>
							</tr>
							<tr>
								<th colspan="2"><textarea class="form-control" required
										name="noContent" id="content" rows="10"
										style="resize: none; height:500px;" placeholder="내용을 입력하세요."></textarea></th>
							</tr>
						</table>
						<br>

						<div id="buttonArea">
							<button type="submit" class="btn btn-primary" id="noButton">등록하기</button>
							<button type="reset" onClick="history.back()" class="btn btn-danger" id="noButton">취소하기</button>
						</div>
					</form>



				</div>
			</div>
			</div>
		</div>


		<!-- 푸터 포함 -->
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>