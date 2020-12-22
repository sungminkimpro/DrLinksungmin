package kr.co.Dr_Link.mvc.dto;

import java.util.List;

public class NewsReplDTO {

	private int news_board_num, news_reply_num, patient_num, doctor_num;
	private String [] news_repl_comment;
	private String n_repl_date;
	
	
	private List<PatientDTO> patients;
	private List<DoctorDTO> doctors;
	
	public List<PatientDTO> getPatients() {
		return patients;
	}
	public void setPatients(List<PatientDTO> patients) {
		this.patients = patients;
	}
	public List<DoctorDTO> getDoctors() {
		return doctors;
	}
	public void setDoctors(List<DoctorDTO> doctors) {
		this.doctors = doctors;
	}
	/*
	private PatientDTO patients;
	private DoctorDTO doctors;
	
	public PatientDTO getPatients() {
		return patients;
	}
	public void setPatients(PatientDTO patients) {
		this.patients = patients;
	}
	public DoctorDTO getDoctors() {
		return doctors;
	}
	public void setDoctors(DoctorDTO doctors) {
		this.doctors = doctors;
	}
	*/
	public int getNews_board_num() {
		return news_board_num;
	}
	public void setNews_board_num(int news_board_num) {
		this.news_board_num = news_board_num;
	}
	public int getNews_reply_num() {
		return news_reply_num;
	}
	public void setNews_reply_num(int news_reply_num) {
		this.news_reply_num = news_reply_num;
	}
	public int getPatient_num() {
		return patient_num;
	}
	public void setPatient_num(int patient_num) {
		this.patient_num = patient_num;
	}
	public int getDoctor_num() {
		return doctor_num;
	}
	public void setDoctor_num(int doctor_num) {
		this.doctor_num = doctor_num;
	}
	public String[] getNews_repl_comment() {
		return news_repl_comment;
	}
	public void setNews_repl_comment(String news_repl_comment) {
		this.news_repl_comment = news_repl_comment.split("\n");
	}
	public String getN_repl_date() {
		return n_repl_date;
	}
	public void setN_repl_date(String n_repl_date) {
		this.n_repl_date = n_repl_date;
	}
    
}
