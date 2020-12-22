package kr.co.Dr_Link.mvc.dto;

public class PrescriptionDTO {
	private int dep_num;
	private int medicine_num;
	private int treatment_num;
	private String [] dosage;
	private String [] quantity;
	private String [] days;
	private String payment_check;
	
	public int getDep_num() {
		return dep_num;
	}
	public void setQuantity(String [] quantity) {
		if(quantity[0].contains(",")) {
			System.out.println("PrescriptionDTO에서 뽑은 값 if문 안1" + quantity[0]);
			System.out.println("PrescriptionDTO에서 뽑은 값 split if문 안2" + quantity[0].split(","));
		} else {
			System.out.println("else문 안의 : " + quantity[0]);
		}
		this.quantity = quantity;
	}
	public String [] getQuantity() {
		return quantity;
	}
	
	public void setDep_num(int dep_num) {
		this.dep_num = dep_num;
	}
	public int getMedicine_num() {
		return medicine_num;
	}
	public void setMedicine_num(int medicine_num) {
		this.medicine_num = medicine_num;
	}
	public int getTreatment_num() {
		return treatment_num;
	}
	public void setTreatment_num(int treatment_num) {
		this.treatment_num = treatment_num;
	}
	public String[] getDosage() {
		return dosage;
	}
	public void setDosage(String[] dosage) {
		if(dosage[0].contains(",")) {
			System.out.println("PrescriptionDTO에서 뽑은 값 if문 안1" + dosage[0]);
			System.out.println("PrescriptionDTO에서 뽑은 값 split if문 안2" + dosage[0].split(","));
		} else {
			System.out.println("else문 안의 : " + dosage[0]);
		}
		this.dosage = dosage;
	}
	public String[] getDays() {
		return days;
	}
	public void setDays(String[] days) {
		if(days[0].contains(",")) {
			System.out.println("PrescriptionDTO에서 뽑은 값 if문 안1" + days[0]);
			System.out.println("PrescriptionDTO에서 뽑은 값 split if문 안2" + days[0].split(","));
		} else {
			System.out.println("else문 안의 : " + days[0]);
		}
		this.days = days;
	}
	public String getPayment_check() {
		return payment_check;
	}
	public void setPayment_check(String payment_check) {
		this.payment_check = payment_check;
	}
	
	

}
