package com.mysite.booreung.Mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysite.booreung.Mypage.model.MypageService;
import com.mysite.booreung.Mypage.vo.MypageVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MypageController {
	
	@Autowired
	MypageService mypageService;
	
	/*  */
	@RequestMapping("/mypageInit")
	public String mypageInit( HttpSession session) {
		System.out.println("-------------------mypageInit : start");
		String sessionUser = (String) session.getAttribute("UserID"); // 로그인 여부 검사해서 페이지 판단하고
        if(sessionUser != null) {
        	return "redirect:/mypage";
        }
        session.setAttribute("alertMsg", "로그인이 필요합니다");
        return "redirect:/login";
	}
	
	/* 회원 정보 불러오기 */
    @RequestMapping("/mypage")
    public String mypage(Model model, MypageVo mypageVo, HttpSession session, HttpServletRequest request ) {
		System.out.println("-------------------mypage : start");
    	String user_id = (String) session.getAttribute("UserID");
    	mypageVo.setUser_id(user_id);
        System.out.println("user_id       :       "+user_id);
    	
        if(user_id != null) {
        	MypageVo selectUser = mypageService.selectUser(mypageVo);
            System.out.println("selectUser       :       "+selectUser);
        	model.addAttribute("selectUser", selectUser);
        	return "Mypage/mypage";
        }
        session.setAttribute("alertMsg", "로그인이 필요합니다");
        return "redirect:/login";
    }
    
    /* 회원 정보 수정 */
    @PostMapping("/updateUser")
    public String updateUser(MypageVo mypageVo, HttpSession session) {
		System.out.println("-------------------updateUser : start");
    	String user_id = (String) session.getAttribute("UserID");
    	mypageVo.setUser_id(user_id);
    	mypageService.updateUser(mypageVo);
    	
    	if(user_id != null) {
    		return "redirect:/mypage";
    	}
		
    	return "redirect:/mypage";
    }
    
    /* 회원 정보 삭제 'Y' 업데이트 */
    @PostMapping("/deleteUser")
    public String deleteUser(HttpSession session) {
    	System.out.println("-------------------deleteUser : start");
    	String user_id = (String) session.getAttribute("UserID");
    	mypageService.deleteUser(user_id);
    	
    	if(user_id != null) {
    		session.invalidate();
    		return "redirect:/init";
    	}
    	return "redirect:/init";
    }
	
}
