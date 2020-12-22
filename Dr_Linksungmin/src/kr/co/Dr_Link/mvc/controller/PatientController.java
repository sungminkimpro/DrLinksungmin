package kr.co.Dr_Link.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/patients")
public class PatientController {
	
	@RequestMapping(value = "/test")
	public String test() {
		System.out.println("매핑 test");
		return "/patient/test";
	}
	
	@RequestMapping(value = "/{step}")
	public String accessAnyFiles(@PathVariable String step) {
		System.out.println("patients 안에서 url 요청: " + step);
		return "/patients/" + step;
	}
}
