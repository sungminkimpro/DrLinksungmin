package kr.co.Dr_Link.mvc.dao;

import kr.co.Dr_Link.mvc.dto.PatientDTO;

public interface PatientDaoInter {
	
	/* 김성민 */
	//환자 회원가입
	public void insertPatient(PatientDTO dto);
	
	public PatientDTO loginCheckPatient(PatientDTO dto);	
	
	//아이디 중복체크(비번발급용)
	public int idCheck(String p_id) throws Exception;

	//아이디 중복검사(회원가입용)
	public int check_id(String p_id) throws Exception;

	// 아이디 찾기
	public String find_id(String email) throws Exception;

	// 비밀번호 변경
	public int update_pw(PatientDTO dto) throws Exception;

	// 이메일 검사
	public PatientDTO emailCheck(String id) throws Exception;
	
//	public void addTvo(PatientDTO dto);
	
//	// 비밀번호 변경
//	public int updatePw(PatientDTO dto) throws Exception;

}
