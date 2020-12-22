package kr.co.Dr_Link.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kr.co.Dr_Link.mvc.dto.DoctorDTO;

@Repository("DoctorDaoInter")
public class DoctorDaoImp implements DoctorDaoInter {
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public DoctorDTO doctor_profile(DoctorDTO vo) {
		System.out.println("===> ss doctor_profile() 실행");
		return ss.selectOne("doctor.doctor_profile",vo);
	}
	

	//의사 로그인
	@Override
	public DoctorDTO dr_loginCheck(DoctorDTO dto) {
		System.out.println("===> imple에서 Mybatis mapper loginchk()로 실행");
		return ss.selectOne("doctor.loginchk",dto);
	}
	
	//의사 회원가입
	@Override
	public void insertDoctor(DoctorDTO dto) {
		System.out.println("===> imple에서 Mybatis mapper add()로 실행");
		System.out.println(dto.getDoctor_num()+","+dto.getD_name());
		ss.insert("doctor.add",dto);
	}

	//아이디 중복검사(비번발급용)
	@Override
	public int idCheck(String d_id) throws Exception{
		return ss.selectOne("doctor.idCheck",d_id);
	}

	//아이디 중복검사(회원가입용)
	@Override
	public int check_id(String d_id) throws Exception{
		return ss.selectOne("doctor.idCheck",d_id);
	}
	
	// 아이디 찾기
	public String find_id(String email) throws Exception{
		System.out.println("find_id 다오 임플까지옴");
		return ss.selectOne("doctor.find_id", email);
	}
	
	// 비밀번호 변경
	@Transactional
	public int update_pw(DoctorDTO dto) throws Exception{
		System.out.println("update_pw 다오 임플까지옴");
		return ss.update("doctor.update_pw", dto);
	}
	
	// 이메일 검사
	public DoctorDTO emailCheck(String id) throws Exception{
		System.out.println("emailCheck 다오 임플까지옴");
		return ss.selectOne("doctor.emailCheck", id);
	}



}
