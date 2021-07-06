package com.kh.magicpot.community.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.kh.magicpot.common.model.vo.PageInfo;
import com.kh.magicpot.common.template.Pagination;
import com.kh.magicpot.community.model.service.CommunityService;
import com.kh.magicpot.community.model.vo.Community;
import com.kh.magicpot.community.model.vo.CommunityNotice;

@Controller
public class CommunityController {

	/**
	 * 전역변수
	 */
	@Autowired
	private CommunityService cService;
	
	/**
	 * 커뮤니티 리스트 조회
	 * @param currentPage
	 * @param model
	 * @return
	 */
	@RequestMapping("list.cm")
	public String selectCommunityList(@RequestParam(value="currentPage", defaultValue="1") int currentPage,
									  @RequestParam(value="ctg", defaultValue="0") int ctg,
									  Model model) {
		
		// 카테고리 값 잘 넘어오는지 확인
		// System.out.println(ctg); 잘 넘어옴
		
		
		
		// 커뮤니티 공지사항 리스트 조회
		ArrayList<CommunityNotice> cnList = cService.selectCmNoticeList();
		
		// 커뮤니티 글 리스트 조회(페이징)
		int listCount = cService.selectCmListCount(ctg);
		// 카테고리별 글 카운트 잘 넘어오는지 확인
		//System.out.println(listCount); 잘 넘어옴
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 12);
		
		ArrayList<Community> cList = cService.selectCmList(pi, ctg);
		
		model.addAttribute("cnList", cnList);
		model.addAttribute("pi", pi);
		model.addAttribute("cList", cList);
		model.addAttribute("ctg", ctg);
		
		return "community/communityListView";
				
	}
	
	/**
	 * 커뮤니티 검색
	 * @param currentPage
	 * @param ctg
	 * @param condition
	 * @param cmKeyword
	 * @param model
	 * @param map
	 * @return
	 */
	@RequestMapping("search.cm")
	public String searchCommunity(@RequestParam(value="currentPage", defaultValue="1") int currentPage,
			  					  @RequestParam(value="ctg", defaultValue="0") int ctg,
			  					  String condition,
			  					  String cmKeyword,
			  					  Model model,
			  					  HashMap<String, Object> map
			  					  ) {
		// HashMap에 담아서 요청
		map.put("currentPage",currentPage);
		map.put("ctg", ctg);
		map.put("condition", condition);
		map.put("cmKeyword", cmKeyword);
		
		// 커뮤니티 공지사항 리스트 조회
		ArrayList<CommunityNotice> cnList = cService.selectCmNoticeList();
		
		// 검색 조건에 만족하는 게시글 총 갯수 조회 , 검색 조건에 만족하는 페이징 처리
		int searchCount = cService.selectSearchListCount(map);
		
		PageInfo pi = Pagination.getPageInfo(searchCount, currentPage, 5, 12);
		ArrayList<Community> cList = cService.selectSearchList(pi, map);
		
		// Model 객체에 응답데이터 담기
		model.addAttribute("cnList", cnList);
		model.addAttribute("pi", pi);
		model.addAttribute("cList", cList);
		model.addAttribute("ctg", ctg);
		model.addAttribute("condition", condition);
		model.addAttribute("cmKeyword", cmKeyword);

		return "community/communityListView";
		
	}
	
	/**
	 * 커뮤니티 공지사항 등록폼 요청
	 * @return
	 */
	@RequestMapping("enrollForm.cn")
	public String cmNoticeEnrollForm() {
		return "community/communityNoticeEnrollForm";
	}
	
	/**
	 * 커뮤니티 공지사항 등록
	 * @param cn
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("insert.cn")
	public String insertCmNotice(CommunityNotice cn, HttpSession session, Model model) {
		int result = cService.insertCmNotice(cn);
		
		if(result > 0) { // 공지사항 등록 성공 => communityListView.jsp 재요청
			session.setAttribute("alertMsg", "공지사항이 등록되었습니다.");
			return "redirect:list.cm";
		}else { // 공지사항 등록 실패
//			model.addAttribute("errorMsg", "게시글 삭제 실패");
			return "common/errorPage";
		}
	}
	
	/**
	 * 커뮤니티 공지사항 상세조회
	 * @param cnno
	 * @return
	 */
	@RequestMapping("detail.cn")
	public String cmNotiveDetailView(int cnno, Model model) {
		// 조회수 증가
		int result = cService.increaseCmNoticeCount(cnno);
		
		if(result > 0) { // 조회수 증가 성공 => 상세보기 요청
			CommunityNotice cn = cService.selectCmNotice(cnno);
			model.addAttribute("cn", cn);
			return "community/communityNoticeDetailView";
		}else { // 조회수 증가 실패 => 에러페이지 포워딩
			return "common/errorPage";
		}
	}
	
	/**
	 * 커뮤니티 공지사항 업데이트 폼 요청
	 * @param cnno
	 * @return
	 */
	@RequestMapping("updateForm.cn")
	public String cmNoticeUpdateForm(int cnno, Model model) {
//		CommunityNotice cn = cService.selectCmNotice(cnno);
//		model.addAttribute("cn", cn);
		model.addAttribute("cn", cService.selectCmNotice(cnno));
		return "community/communityNoticeUpdateForm";
	}
	
	/**
	 * 커뮤니티 공지사항 업데이트
	 * @param cnno
	 * @param model
	 * @return
	 */
	@RequestMapping("update.cn")
	public String cmNoticeUpdate(CommunityNotice cn, HttpSession session, Model model) {
		int result = cService.updateCmNotice(cn);
		
		if(result > 0) { // 수정 성공
			session.setAttribute("alertMsg", "커뮤니티 공지사항이 수정되었습니다.");
			return "redirect:detail.cn?cnno=" + cn.getCmNoticeNo();
		}else { // 수정 실패
			return "common/errorPage";
		}
	}
	
	/**
	 * 커뮤니티 공지사항 삭제
	 * @param cnno
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("delete.cn")
	public String cmNoticeDelete(int cnno, HttpSession session, Model model) {
		int result = cService.deleteCmNotice(cnno);
		
		if(result > 0) { // 삭제 성공
			session.setAttribute("alertMsg", "커뮤니티 공지사항이 삭제되었습니다.");
			return "redirect:list.cm";
		}else { // 삭제 실패
			return "common/errorPage";
		}
	}
	
	/**
	 * 커뮤니티 게시글 등록 폼
	 * @return
	 */
	@RequestMapping("enrollForm.cm")
	public String communityEnrollForm() {
		return "community/communityEnrollForm";
	}
	
	//
	//사진 경로 변경 및 이름 가져오기
	@RequestMapping(value="/uploadSummernoteImageFile", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpSession session)  {
		JsonObject jsonObject = new JsonObject();
		
        /*
		 * String fileRoot = "C:\\summernote_image\\"; // 외부경로로 저장을 희망할때.
		 */
		
		
		
		// 내부경로로 저장
		/*
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot = contextRoot+"resources/community_uploadFiles/";
		
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		System.out.println(originalFileName);
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);	
		
		try {
			//InputStream fileStream = multipartFile.getInputStream();
			//FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			multipartFile.transferTo(targetFile);
			System.out.println(fileRoot + savedFileName);
			
			jsonObject.addProperty("url", "resources/community_uploadFiles/"+savedFileName); // contextroot + resources + 저장할 내부 폴더명
			jsonObject.addProperty("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		*/
		
		String savedFileName = saveFile(session, multipartFile);
		jsonObject.addProperty("url", "resources/community_uploadFiles/"+savedFileName); // contextroot + resources + 저장할 내부 폴더명
		//jsonObject.addProperty("responseCode", "success");
		
		String a = jsonObject.toString();
		return a;
	}
	
	//
	
	/**
	 * 커뮤니티 게시글 등록
	 * @param cm
	 * @return
	 */
	@RequestMapping("enroll.cm")
	public String insertCommunity(Community cm, MultipartFile upfile, HttpSession session) {
		//System.out.println(cm); 잘 넘어옴
		//System.out.println(upfile.getOriginalFilename()); 잘 넘어옴
		
		// 전달된 파일이 있을 경우(upfile의 원본명이 빈 문자열이 아닌 경우)
		if(!upfile.getOriginalFilename().equals("")) {
			String changeName = saveFile(session, upfile);
			cm.setCmImage("resources/community_uploadFiles/" + changeName); // 경로담기
		}
		
		//System.out.println(cm); //cmImage 잘 담김
		
		int result = cService.insertCommunity(cm);
		
		if(result > 0) { // 게시글 등록 성공
			session.setAttribute("alertMsg", "게시글이 등록되었습니다.");
			return "redirect:list.cm";
			
		}else {
			return "common/errorPage";
		}
	}
	
	/**
	 * 첨부파일 수정명 작업 메소드
	 * @param session
	 * @param upfile
	 * @return
	 */
	public String saveFile(HttpSession session, MultipartFile upfile) {
		String savePath = session.getServletContext().getRealPath("/resources/community_uploadFiles/");
		String originName = upfile.getOriginalFilename();
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		int ranNum = (int)(Math.random() * 90000 + 10000);
		String ext = originName.substring(originName.lastIndexOf("."));
		String changeName = "MagigPot_" + currentTime + ranNum + ext;
		try {
			upfile.transferTo(new File(savePath + changeName));
			//System.out.println(savePath + changeName);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return changeName;
		
		
	}
	
}
