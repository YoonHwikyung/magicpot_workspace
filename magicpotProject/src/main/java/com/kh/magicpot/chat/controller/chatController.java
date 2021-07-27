package com.kh.magicpot.chat.controller;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.magicpot.member.model.vo.Member;

@Controller
public class chatController {

	/**
	 * 매직팟 실시간 상담 채팅창 요청
	 * @return
	 */
	//@RequestMapping(value="startChat.do", method = RequestMethod.GET)
	//public String chat(ModelAndView mv) {
		// 일반적인 RequestMapping을 이용해서 구성한다.
		// 위의 코드 키준으로 시큐리티가 적용되어 세션의 값을 Member를 이용해 불러온다.
		// 즉 웹 소켓에서 사용하는 세션의 값은 Member의 값과 동일하다.
		// 스프링 환경에서는 시큐리티를 통한 세션관리를 권장한다.
		
		//mv.setViewName("chat/chatRoom");
		
		// 사용자 정보 출력(세션)
		//User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		//System.out.println("user name : " + user.getUsername());
		
		//System.out.println("normal chat page");
		
		//mv.addObject("userid", user.getUsername());
		
		//return mv;
		//return "chat/chatRoom";
	//}

	@RequestMapping("startChat.do")
		public ModelAndView chat(
		ModelAndView mv,
		@RequestParam("memId") String uid,
		HttpSession session
		) {
		mv.setViewName("chat/chatRoom2");
		mv.addObject("user", uid);
		session.setAttribute("user", uid);
		return mv;
	}
	
	
	
	
}
