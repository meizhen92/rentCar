package com.mysite.booreung.Mypage.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.mysite.booreung.Mypage.vo.MypageVo;

@Mapper
public interface MypageMapper {
	
	/* 로그인 한 회원정보 */
	public MypageVo selectUser(MypageVo mypageVo);
	
	/* 회원정보 수정 */
	public void updateUser(MypageVo mypageVo);
	
	/* 회원 정보 삭제 'Y' 업데이트 */
	public void deleteUser(String user_id);
}
