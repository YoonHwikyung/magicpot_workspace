package com.kh.magicpot.coupon.model.service;

import java.util.ArrayList;

import com.kh.magicpot.coupon.model.vo.Coupon;

public interface CouponService {

	int insertCoupon(Coupon c);

	ArrayList<Coupon> selectCoupon();

	int deleteCoupon(int cpNo);
	
	
}
