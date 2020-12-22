package kr.co.Dr_Link.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kr.co.Dr_Link.mvc.dto.PatientDTO;

@Repository("PatientDaoInter")
public class PatientDaoImp implements PatientDaoInter{
	
	@Autowired
	private SqlSessionTemplate ss;
	
	/* 김성민 */
	
	//환자 회원가입
	@Override
	public void insertPatient(PatientDTO dto) {
		System.out.println("===> imple에서 Mybatis mapper add()로 실행");
		System.out.println(dto.getPatient_num()+","+dto.getP_name());
		ss.insert("patient.add",dto);
	}
	
	//환자 로그인
	@Override
	public PatientDTO loginCheckPatient(PatientDTO dto) {
		System.out.println("===> imple에서 Mybatis mapper loginchk()로 실행");
		return ss.selectOne("patient.loginchk",dto);
	}

	//아이디 중복검사(비번발급용)
	@Override
	public int idCheck(String p_id) throws Exception{
		return ss.selectOne("patient.idCheck",p_id);
	}

	//아이디 중복검사(회원가입용)
	@Override
	public int check_id(String p_id) throws Exception{
		return ss.selectOne("patient.idCheck",p_id);
	}
	
	// 아이디 찾기
	public String find_id(String email) throws Exception{
		System.out.println("find_id 다오 임플까지옴");
		return ss.selectOne("patient.find_id", email);
	}
	
	// 비밀번호 변경
	@Transactional
	public int update_pw(PatientDTO dto) throws Exception{
		System.out.println("update_pw 다오 임플까지옴");
		return ss.update("patient.update_pw", dto);
	}
	
	// 이메일 검사
	public PatientDTO emailCheck(String id) throws Exception{
		System.out.println("emailCheck 다오 임플까지옴");
		return ss.selectOne("patient.emailCheck", id);
	}
	
	//이미지업로드 및 회원가입
//	public void addTvo(PatientDTO dto) {
//		System.out.println("addTvo요청");
//		ss.insert("patient.adds", dto);
//	}

}
