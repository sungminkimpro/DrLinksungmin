package kr.co.Dr_Link.mvc.service;

import javax.servlet.http.HttpServletResponse;

import kr.co.Dr_Link.mvc.dto.PatientDTO;

public interface PatientServiceInter {
	
	/* 김성민 */
	public void check_id(String p_id, HttpServletResponse response) throws Exception;
	
	public String find_id(HttpServletResponse response, String email) throws Exception;
	
	public void send_mail(PatientDTO dto, String div) throws Exception;
	
	public void find_pw(HttpServletResponse response, PatientDTO dto) throws Exception;
	
//	//이메일발송
//	public void sendEmail(PatientDTO dto, String div) throws Exception;
//
//	//비밀번호찾기
//	public void findPw(HttpServletResponse resp, PatientDTO dto) throws Exception;

}
