package com.kh.magicpot.coupon.controller;


import java.util.ArrayList;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.magicpot.coupon.model.service.CouponService;
import com.kh.magicpot.coupon.model.vo.Coupon;

@Controller
public class CouponController {
	
	
	@Autowired
	private CouponService cService;
	
	
	@RequestMapping("adminInsert.me")
	public String adminCoupon(Coupon c, HttpSession session, Model model) {
		
		int result = cService.insertCoupon(c);

		if(result > 0) {
			return "redirect:adminCoupon.me";
		}else { 
			return "common/errorPage";
		}
			
	}

	
	@RequestMapping("adminCoupon.me")
	public ModelAndView selectCoupon(ModelAndView mv) {
		
		ArrayList<Coupon> list = cService.selectCoupon();
		
		mv.addObject("list", list)
		  .setViewName("coupon/adminCoupon");
		
		return mv;
		
	}
	
	@RequestMapping(value="admindelete.me", method=RequestMethod.POST)
	public String deleteCoupon(int cpNumber, HttpSession session, Model model) {
		
		int result = cService.deleteCoupon(cpNumber);
		
		if(result > 0) {
			session.removeAttribute("cpNumber");
			session.setAttribute("alertMsg", "성공적으로 삭제 되었습니다.");
		
			return "redirect:adminCoupon.me";
		}else {
			return "common/errorPage";
		}
	
		
		
	}
	
}
	

