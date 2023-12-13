package com.mysite.booreung.Mypage.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysite.booreung.Mypage.mapper.MypageMapper;
import com.mysite.booreung.Mypage.vo.MypageVo;

@Service
public class MypageService {
	
	@Autowired
	MypageMapper mypageMapper;
	
	/* 로그인 한 회원정보 */
	public MypageVo selectUser(MypageVo mypageVo){
		return mypageMapper.selectUser(mypageVo);
	}
	
	/* 회원 정보 수정하기 */
	public void updateUser(MypageVo mypageVo) {
		mypageMapper.updateUser(mypageVo);
	}
	
	/* 회원 정보 삭제 'Y' 업데이트 */
	public void deleteUser(String user_id) {
		mypageMapper.deleteUser(user_id);
	}
}
