🌱 매직팟 프로젝트 🌱
===
<br><br>
<img src="https://user-images.githubusercontent.com/78246187/127439231-f93669bc-b51c-45f5-8682-22dc265af493.png" width="70%" height="40%" title="50px" alt="Jejuwa_Main"></img>  
---
📢 프로젝트 소개  
---
• 제로웨이스트 기반 크라우드 펀딩 <br>
• 직관적인 UI 설계와 환경 보호를 목표로 하는 크라우드 펀딩 서비스 <br>
• 매직팟은 지속 가능한 지구를 위해 제로웨이스트에 대한 다양한 정보와 활동을 자유롭게 공유하는 커뮤니티 서비스를 제공

🛠 개발 환경
---
- Language  : Java (OpenJDK 8)
- DBMS : Oracle (11g)
- Server : Apache Tomcat (8.5)
- Front : HTML5, CSS3, JavaScript, jQuery, Bootstrap
- Server Programming : JSP/Servlet, AJAX
- Framework : Spring, MyBatis
- Build Tool : Maven
- IDE : Eclipse, Visual Studio Code, sqldeveloper
- Modeling Tool : StarUML, erdcloud, 카카오오븐
- 형상 관리 : Github
- API : Summernote, I'm port, Kakao sendLink, Naver login, Daum map
<br><br>

📅 개발 기간
---
![매직팟_작업일정_리드미](https://user-images.githubusercontent.com/78246187/127444517-1f36fb67-bb15-4dd3-90fe-e82cbb71d2c2.png) <br><br>
📊 E-R Diagram
---
![MagicPot_ERD](https://user-images.githubusercontent.com/78246187/127444877-dda61529-a8ff-40ce-bb8b-bff21db3ea05.png) <br><br>
💻 개발자
---
| <img src="https://avatars.githubusercontent.com/u/82758086?v=4" width="55" height="55"><br>[류길상](https://github.com/mmnn323)| <img src="https://avatars.githubusercontent.com/u/79910342?v=4" width="55" height="55"><br>[오다인](https://github.com/dada411) | <img src="https://avatars.githubusercontent.com/u/78246187?v=4" width="55" height="55"><br>[윤휘경](https://github.com/YoonHwikyung) | <img src="https://avatars.githubusercontent.com/u/82549746?v=4" width="55" height="55"><br>[장아영](https://github.com/jay12355) | <img src="https://avatars.githubusercontent.com/u/81214004?v=4" width="55" height="55"><br>[현시은](https://github.com/tldms0012) | <img src="https://avatars.githubusercontent.com/u/77088467?v=4" width="55" height="55"><br>[홍희나](https://github.com/Heenahong) |
| --- | --- | --- | --- | --- | --- |
- - -
🙋‍♀️ 역할
---
 - 깃 배포자
 - 테이블 및 제약조건 쿼리문 생성
 - 프로젝트 기획, 화면 설계, 데이터베이스 설계 보고서 PPT

👩‍💻 주요 기능
---
- 메인페이지 : header/footer/top button
- 좋아요 : Ajax를 활용한 좋아요 추가/해제, 좋아요 카운트 조회
- 좋아하는 프로젝트 : Ajax를 활용한 좋아요 리스트 조회, 좋아요 해제
- 커뮤니티 : 커뮤니티 공지사항 CRUD, 썸머노트 에디터를 활용한 커뮤니티 게시글 CRUD, 무한 댓글, 키워드 검색, 페이징 처리
- 1:1 채팅 : 웹소켓을 활용한 1:1 상담 서비스

💡 기능 구현
---
- 펀딩 상세 페이지
    - 좋아요
- 마이페이지
    - 좋아하는 프로젝트
- 커뮤니티 페이지
    - 커뮤니티 공지사항, 공지 숨기기(쿠키)
    - 커뮤니티 게시글(썸머노트)
    - 댓글/대댓글(무한댓글)
- 매직팟 헬프센터

📍 펀딩 상세 페이지
---
### 🔸 좋아요
![펀딩상세페이지_좋아요](https://user-images.githubusercontent.com/78246187/127448990-3a5b5f42-492f-4757-b9c2-a23003c54903.gif)

📍 마이 페이지
---
### 🔸 좋아하는 프로젝트
![마이페이지_좋아하는프로젝트](https://user-images.githubusercontent.com/78246187/127449544-c092b8e5-780b-4388-9bc1-0375ccabde92.gif)

📍 커뮤니티 페이지
---
### 🔸 커뮤니티 공지사항
![커뮤니티_공지사항](https://user-images.githubusercontent.com/78246187/127450862-7a7f714a-e42a-44a5-96e7-29889b12d5d7.gif)
### 🔸 커뮤니티 게시글 구성 소개 및 검색
![커뮤니티_구성소개및검색](https://user-images.githubusercontent.com/78246187/127451893-04a9989d-cd86-43a0-a955-4faefa17da2d.gif)
### 🔸 커뮤니티 게시글 CRUD
![커뮤니티_게시글CRUD](https://user-images.githubusercontent.com/78246187/127453903-a5dc2276-be80-4ead-8e1b-0bc4694d6643.gif)
### 🔸 커뮤니티 댓글 등록
![커뮤니티_댓글등록](https://user-images.githubusercontent.com/78246187/127454769-52c3af03-d51c-479f-bb43-ce4fd7c41352.gif)
### 🔸 커뮤니티 대댓글 등록/수정/삭제
![커뮤니티_대댓글등록_수정_삭제](https://user-images.githubusercontent.com/78246187/127455600-79758d3a-7c99-4538-9cb9-8faca4add05f.gif)
### 🔸 커뮤니티 비로그인/관리자에 따른 댓글 권한 부여
![커뮤니티_댓글_권한부여](https://user-images.githubusercontent.com/78246187/127455995-9aa7ecdc-61b7-407c-b660-aeaec383c291.gif)

📍 매직팟 헬프센터
---
![매직팟_헬프센터](https://user-images.githubusercontent.com/78246187/127456386-f233f358-f396-4a5a-93cd-bd7ad6fd4f4a.gif)
