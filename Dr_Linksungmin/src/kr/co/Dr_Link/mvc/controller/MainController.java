package kr.co.Dr_Link.mvc.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.Dr_Link.mvc.dao.DoctorDaoInter;
import kr.co.Dr_Link.mvc.dao.PatientDaoInter;
import kr.co.Dr_Link.mvc.dto.DoctorDTO;
import kr.co.Dr_Link.mvc.dto.PatientDTO;
import kr.co.Dr_Link.mvc.service.DoctorServiceImpl;
import kr.co.Dr_Link.mvc.service.PatientServiceImpl;

@Controller
public class MainController {

	@Autowired
	private PatientDaoInter PDaoInter;
	
	@Autowired
	private DoctorDaoInter DDaoInter;

	@Autowired
	private PatientServiceImpl service;
	
	@Autowired
	private DoctorServiceImpl Dservice;
	

	@RequestMapping(value = { "index", "/" })
	public String goMain() {
		return "main";
	}

	@RequestMapping(value = "{step}")
	public String accessAnyFiles(@PathVariable String step) {
		System.out.println("main controller 에서 매핑 요청 url: " + step);
		return step;
	}

	//환자 로그인 체크
	@RequestMapping(value = "loginCheck")
	public String loginCheck(PatientDTO dto, HttpSession session) {
		System.out.println("===> dao로 가자!");
		PDaoInter.loginCheckPatient(dto);
		PatientDTO result = PDaoInter.loginCheckPatient(dto);
		if (result == null) {
			System.out.println("로그인 실패!");
			return "login";
		} else {
			System.out.println("===> Mybatis loginchk() 실행 성공인가?");
			session.setAttribute("login", result.getP_id());
		}
		return "main";
	}
	
	
	// 환자 아이디 찾기
	@RequestMapping(value = "find_id.do", method = RequestMethod.POST)
	public String find_id(HttpServletResponse response, @RequestParam("email") String email, Model md) throws Exception{
		md.addAttribute("id", service.find_id(response, email));
		return "find-id";
	}


	// 환자 아이디 중복 검사(AJAX)
	@RequestMapping(value = "check_id.do", method = RequestMethod.POST)
	public void check_id(@RequestParam("p_id") String p_id, HttpServletResponse response) throws Exception{
		System.out.println("===> Mybatis 아이디 중복 검사(AJAX) 실행 성공인가?");
		service.check_id(p_id, response);
	}
	
	
	// id 중복 체크 컨트롤러 필요없을 듯 하다
//	@RequestMapping(value = "idCheck.do", method = RequestMethod.GET)
//	@ResponseBody
//	public int idCheck(@RequestParam("p_id") String p_id) {
//		System.out.println("===> Mybatis idCheck() 실행 성공인가?");
//		return PDaoInter.idCheck(p_id);
//	}
	
	// 환자 비밀번호 찾기
	@RequestMapping(value = "find_pw.do", method = RequestMethod.POST)
	public void find_pw(@ModelAttribute PatientDTO dto, HttpServletResponse response) throws Exception{
		System.out.println("===> Mybatis 비밀번호 찾기 실행 성공인가?");
		service.find_pw(response, dto);
	}
	

	
//	@RequestMapping(value = "userInsert")
//	public String userInsert(PatientDTO dto) {
//		System.out.println("===> dao로 가자!");
//		PDaoInter.insertPatient(dto);
//		System.out.println("===> Mybatis add() 실행 성공인가?");
//		return "login";
//	}

	//환자 회원가입
	@RequestMapping(value = "userInsert", method = RequestMethod.POST)
	public ModelAndView userInsert(PatientDTO dto, HttpServletRequest request) {
		System.out.println("userinsert 요청");
		ModelAndView mav = new ModelAndView("redirect:login");
		
		HttpSession session = request.getSession();
		String r_path = session.getServletContext().getRealPath("/");
		System.out.println("r_path :"+r_path);
		String img_path ="C:\\SungminKim\\GoogleDrive\\spring\\basic\\Dr_Link\\webapp\\resources\\img\\profileImage\\";
		System.out.println("img_path :"+img_path);
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path);
		MultipartFile p_photo =dto.getP_photo();
		String oriFn = dto.getP_id() + p_photo.getOriginalFilename(); // 여기에 회원 아이디와 동일 파일 이름으로 저장하자
		
		path.append(oriFn);
		dto.setP_imgfile(oriFn);
		System.out.println("path = r_path + img_path:"+path);
		
		//위에 3줄 이상해서 내가 추가해본다.

		StringBuffer newpath = new StringBuffer();
		newpath.append(img_path);
		newpath.append(oriFn);
		
		File f = new File(newpath.toString()); // ���� �̹����� ����� ���
		try {
			p_photo.transferTo(f); // �������� transferTo�� ȣ���ؼ� �̹����� ������ҿ� ���� 
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mav.addObject("imgName",oriFn);
		
//		File f = new File(path.toString()); // ���� �̹����� ����� ���
//		try {
//			p_photo.transferTo(f); // �������� transferTo�� ȣ���ؼ� �̹����� ������ҿ� ���� 
//		} catch (IllegalStateException | IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		mav.addObject("imgName",oriFn);
		
//		PDaoInter.addTvo(dto);

		System.out.println("===> dao로 가자!");
		PDaoInter.insertPatient(dto);
		System.out.println("===> Mybatis add() 실행 성공인가?");
		return mav;
		
//		return "login";
	}
	
	//관리자 FAQ
	@RequestMapping(value = "adminquestion")
	public String aq() {
		return "admin/question";
	}
	
	//의사 로그인 체크 drloginCheck
	@RequestMapping(value = "drloginCheck")
	public String drloginCheck(DoctorDTO dto, HttpSession session) {
		System.out.println("===> dao로 가자!");
		DDaoInter.dr_loginCheck(dto);
		DoctorDTO result = DDaoInter.dr_loginCheck(dto);
		if (result == null) {
			System.out.println("로그인 실패!");
			return "login";
		} else {
			System.out.println("===> Mybatis loginchk() 실행 성공인가?");
			session.setAttribute("login", result.getD_id());
		}
		return "main";
	}
	
	//의사 회원가입 doctor_profileImage
	@RequestMapping(value = "doctorInsert", method = RequestMethod.POST)
	public ModelAndView doctorInsert(DoctorDTO dto, HttpServletRequest request) {
		System.out.println("doctorInsert 요청");
		ModelAndView mav = new ModelAndView("redirect:login");
		
		HttpSession session = request.getSession();
		String r_path = session.getServletContext().getRealPath("/");
		System.out.println("r_path :"+r_path);
		String img_path ="C:\\SungminKim\\GoogleDrive\\spring\\basic\\Dr_Link\\webapp\\resources\\img\\doctorProfileImage\\";
		System.out.println("img_path :"+img_path);
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path);
		MultipartFile d_photo =dto.getD_photo();
		String oriFn = dto.getD_id() + d_photo.getOriginalFilename(); // 여기에 회원 아이디와 동일 파일 이름으로 저장하자
		
		path.append(oriFn);
		dto.setD_imgfile(oriFn);
		System.out.println("path = r_path + img_path:"+path);
		
		//위에 3줄 이상해서 내가 추가해본다.

		StringBuffer newpath = new StringBuffer();
		newpath.append(img_path);
		newpath.append(oriFn);
		
		File f = new File(newpath.toString()); // ���� �̹����� ����� ���
		try {
			d_photo.transferTo(f); // �������� transferTo�� ȣ���ؼ� �̹����� ������ҿ� ���� 
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mav.addObject("imgName",oriFn);

		System.out.println("===> dao로 가자!");
		DDaoInter.insertDoctor(dto);
		System.out.println("===> Mybatis add() 실행 성공인가?");
		return mav;
		
//		return "login";
	}
	
	
	// 의사 아이디 찾기
	@RequestMapping(value = "doctor_find_id.do", method = RequestMethod.POST)
	public String doctor_find_id(HttpServletResponse response, @RequestParam("email") String email, Model md) throws Exception{
		md.addAttribute("id", Dservice.doctor_find_id(response, email));
		return "doctor_find-id";
	}


	// 의사 아이디 중복 검사(AJAX)
	@RequestMapping(value = "doctor_check_id.do", method = RequestMethod.POST)
	public void doctor_check_id(@RequestParam("d_id") String d_id, HttpServletResponse response) throws Exception{
		System.out.println("===> Mybatis 아이디 중복 검사(AJAX) 실행 성공인가?");
		Dservice.doctor_check_id(d_id, response);
	}
	
	// 의사 비밀번호 찾기
	@RequestMapping(value = "doctor_find_pw.do", method = RequestMethod.POST)
	public void doctor_find_pw(@ModelAttribute DoctorDTO dto, HttpServletResponse response) throws Exception{
		System.out.println("===> Mybatis 비밀번호 찾기 실행 성공인가?");
		Dservice.doctor_find_pw(response, dto);
	}

} 

