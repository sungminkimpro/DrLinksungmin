package kr.co.Dr_Link.mvc.dto;

import org.springframework.web.multipart.MultipartFile;

public class PatientDTO {	
	
    private int patient_num;
    private String p_id, p_pwd, p_name, p_birth, p_gender, p_jumin_num, p_phone_num, p_email, bloodtype, height, weight, allergy, p_imgfile;
    private MultipartFile p_photo;
    private String p_zipcode ,p_address1 ,p_address2;
	private String p_regdate;

	public String getP_imgfile() {
		return p_imgfile;
	}
	public void setP_imgfile(String p_imgfile) {
		this.p_imgfile = p_imgfile;
	}
	public MultipartFile getP_photo() {
		return p_photo;
	}
	public void setP_photo(MultipartFile p_photo) {
		this.p_photo = p_photo;
	}
	public int getPatient_num() {
		return patient_num;
	}
	public void setPatient_num(int patient_num) {
		this.patient_num = patient_num;
	}
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public String getP_pwd() {
		return p_pwd;
	}
	public void setP_pwd(String p_pwd) {
		this.p_pwd = p_pwd;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_birth() {
		return p_birth;
	}
	public void setP_birth(String p_birth) {
		this.p_birth = p_birth;
	}
	public String getP_gender() {
		return p_gender;
	}
	public void setP_gender(String p_gender) {
		this.p_gender = p_gender;
	}
	public String getP_jumin_num() {
		return p_jumin_num;
	}
	public void setP_jumin_num(String p_jumin_num) {
		this.p_jumin_num = p_jumin_num;
	}
	public String getP_phone_num() {
		return p_phone_num;
	}
	public void setP_phone_num(String p_phone_num) {
	      StringBuffer str = new StringBuffer(p_phone_num);
	      str = str.insert(3, "-");
	      str = str.insert(8, "-");
	      p_phone_num = str.toString();
		this.p_phone_num = p_phone_num;
	}
	public String getP_email() {
		return p_email;
	}
	public void setP_email(String p_email) {
		this.p_email = p_email;
	}
	public String getBloodtype() {
		return bloodtype;
	}
	public void setBloodtype(String bloodtype) {
		this.bloodtype = bloodtype;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getAllergy() {
		return allergy;
	}
	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}
	public String getP_zipcode() {
		return p_zipcode;
	}
	public void setP_zipcode(String p_zipcode) {
		this.p_zipcode = p_zipcode;
	}
	public String getP_address1() {
		return p_address1;
	}
	public void setP_address1(String p_address1) {
		this.p_address1 = p_address1;
	}
	public String getP_address2() {
		return p_address2;
	}
	public void setP_address2(String p_address2) {
		this.p_address2 = p_address2;
	}
	public String getP_regdate() {
		return p_regdate;
	}
	public void setP_regdate(String p_regdate) {
		this.p_regdate = p_regdate;
	}
	
}
