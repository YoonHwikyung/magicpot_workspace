<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		.outer {
			/* height: 700px; */
			/* border: 1px solid red; */
			width: 900px;
			margin: 30px;
			float: left;
		}
		
		/* 컨텐트 카테고리 타이틀 영역 */
		#contentTitleArea {
			font-family: 'Noto Sans KR', sans-serif;
			width: 900px;
			border-bottom: 2px solid lightgray;
			padding: 10px;
			margin: 20px;
			margin-top: 0;
		}
		
		#title1 {
			font-size: 25px;
			font-weight: bold;
		}
		
		#title2 {
			font-size: 16px;
			background-color: gray;
			color: white;
			margin-left: 10px;
			border: 1px solid gray;
			border-radius: 5px;
			padding: 3px;
		}
		
		/* 커뮤니티 검색+버튼 영역 */
		#searchBtnArea div {
			float: left;
		}
		
		/* 커뮤니티 검색 영역 */
		#cm_SearchCtg, #cm_keyword {
			padding: 5px;
			border: 1px solid gray;
			border-radius: 4px;
		}
		
		#cm_SearchCtg {
			margin-left: 85px;
			width: 120px;
		}
		
		#cm_keyword {
			width: 350px;
			padding-left: 15px;
			margin-left: 3px;
		}
		
		#cm_searchArea select {
			text-align-last: center;
			text-align: center;
			-ms-text-align-last: center;
			-moz-text-align-last: center;
		}
		
		/* 버튼 영역 */
		.modal-content {
			margin-left: 40px;
			margin-top: 300px;
		}
		
		.btn-primary {
			width: 80px;
		}
		
		#btn {
			margin-left: 8%;
		}
		
		#delete {
			margin-left: 10px;
			background-color: red;
			border: none;
		}
		
		.btn-success {
			width: 70px;
			background-color: rgb(116, 152, 107);
		}
		
		/* 모달 */
		#myModal1, #myModal {
			margin-left: 500px;
		}
		
		/* 리스트 영역  */
		#cmNoticeListArea {
			margin-top: 14px;
			text-align: center;
			margin-left: 50px;
		}
		
		#cmNoticeList {
			width: 800px;
		}
		
		#cmNoticeList>tbody a {
			color: black;
			text-decoration: none;
		}
		
		#cmNoticeList>tbody>tr:hover {
			background-color: rgb(215, 231, 212);
		}
		
		/* 페이징 영역 */
		#cm_pagingArea {
			padding: 30px;
			margin-left: 25%;
		}
		
		.pagination>li>a {
			color: rgb(116, 152, 107);
		}
		
		.pagination>li>a:hover {
			color: rgb(225, 212, 169);
		}
		
		#cm_paging {
			width: fit-content;
		}
</style>
</head>
<body>

	<!-- adminPageTemplate -->
	<jsp:include page="../common/adminPageTemplate.jsp"/>

	<div id="content">
		<div class="outer">

			<div id="contentTitleArea">
				<span id="title1">회원 관리</span> <span id="title2">크리에이터 전환 관리</span>
			</div>

			<br>
			<br>
			<br>
			<br>
			<br>

			<!-- 검색바 + 버튼 영역 (오븐에서 한 줄에 있길래 하나의 div안에 넣었어요!) -->
			<div id="searchBtnArea">
				<!-- 커뮤니티 검색바 -->
				<div id="cm_searchArea">
					<select name="" id="cm_SearchCtg">
						<option value="">회원 ID</option>
						<option value="">이름</option>
						<option value="">이메일</option>
					</select> <input id="cm_keyword" type="text" placeholder=" Search">
				</div>

				<!-- 버튼 영역 -->
				<!-- Button to Open the Modal -->
				<div id="btn">
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#myModal1"
						style="background-color: rgb(116, 152, 107); border: none;">
						승인</button>
					<button type="button" id="delete" class="btn btn-primary"
						data-toggle="modal" data-target="#myModal">취소</button>
				</div>

				<!-- 승인 모달 -->
				<div class="modal" id="myModal1">
					<div class="modal-dialog">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">크리에이터 승인</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<!-- Modal body -->
							<div class="modal-body">크리에이터로 승인하시겠습니까?</div>

							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="button" class="btn btn-success"
									data-dismiss="modal">네</button>
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">아니요</button>
							</div>

						</div>
					</div>
				</div>

				<!-- 취소 모달 -->
				<!-- The Modal -->
				<div class="modal" id="myModal">
					<div class="modal-dialog">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">크리에이터 취소</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<!-- Modal body -->
							<div class="modal-body">크리에이터 승인을 취소 하겠습니까?</div>

							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">네</button>
							</div>

						</div>
					</div>
				</div>


				<!-- 리스트 영역 -->
				<!-- 
                            mybatis 수업시간에 제목에 a태그 달아서 제목만 클릭 시 상세보기로 넘어갔는데 일단 그렇게 적용했어요!
                            이 부분은 기능구현 부분이니 tr 클릭 시 요청하고 싶으신 분들은 그렇게 수정해주셔도 될 것 같아요~!
                         -->
				<div id="cmNoticeListArea">
					<table class="table" id="cmNoticeList" align="center">
						<thead class="thead-light">
							<tr>
								<th width="40"><input type="checkbox"></th>
								<th width="90">번호</th>
								<th width="100">아이디</th>
								<th width="90">이름</th>
								<th width="220">연락처</th>
								<th width="200">이메일</th>
								<th width="200">승인현황</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox"></td>
								<td>50</td>
								<td><a href="">user01</a></td>
								<td>김개똥</td>
								<td>010-1234-5678</td>
								<td>user01@gmail.com</td>
								<td>심사</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>49</td>
								<td><a href="">user01</a></td>
								<td>김개똥</td>
								<td>010-1234-5678</td>
								<td>user01@gmail.com</td>
								<td>심사</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>48</td>
								<td><a href="">user01</a></td>
								<td>김개똥</td>
								<td>010-1234-5678</td>
								<td>user01@gmail.com</td>
								<td>심사</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>47</td>
								<td><a href="">user01</a></td>
								<td>김개똥</td>
								<td>010-1234-5678</td>
								<td>user01@gmail.com</td>
								<td>심사</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>46</td>
								<td><a href="">user01</a></td>
								<td>김개똥</td>
								<td>010-1234-5678</td>
								<td>user01@gmail.com</td>
								<td>심사</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>45</td>
								<td><a href="">user01</a></td>
								<td>김개똥</td>
								<td>010-1234-5678</td>
								<td>user01@gmail.com</td>
								<td>심사</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>43</td>
								<td><a href="">user01</a></td>
								<td>김개똥</td>
								<td>010-1234-5678</td>
								<td>user01@gmail.com</td>
								<td>심사</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>43</td>
								<td><a href="">user01</a></td>
								<td>김개똥</td>
								<td>010-1234-5678</td>
								<td>user01@gmail.com</td>
								<td>심사</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>42</td>
								<td><a href="">user01</a></td>
								<td>김개똥</td>
								<td>010-1234-5678</td>
								<td>user01@gmail.com</td>
								<td>심사</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>41</td>
								<td><a href="">user01</a></td>
								<td>김개똥</td>
								<td>010-1234-5678</td>
								<td>user01@gmail.com</td>
								<td>심사</td>
							</tr>
						</tbody>
					</table>
				</div>

				<!-- 페이징 영역 -->

				<div id="cm_pagingArea" align="center">

					<div id="cm_paging">
						<ul class="pagination pagination">
							<li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
							<li class="page-item"><a class="page-link" href="#">&lt;</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item"><a class="page-link" href="#">&gt;</a></li>
							<li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
						</ul>
					</div>

				</div>

			</div>
		</div>
</body>
</html>