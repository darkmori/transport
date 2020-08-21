package com.example.spring01.model.iadmin.dto;

public class IadminDTO {

	private int a_no;
	private String a_mail;
	private String a_password;
	private String a_name;

	public int getA_no() {
		return a_no;
	}

	public void setA_no(int a_no) {
		this.a_no = a_no;
	}

	public String getA_mail() {
		return a_mail;
	}

	public void setA_mail(String a_mail) {
		this.a_mail = a_mail;
	}

	public String getA_password() {
		return a_password;
	}

	public void setA_password(String a_password) {
		this.a_password = a_password;
	}

	public String getA_name() {
		return a_name;
	}

	public void setA_name(String a_name) {
		this.a_name = a_name;
	}

	@Override
	public String toString() {
		return "IadminDTO [a_no=" + a_no + ", a_mail=" + a_mail + ", a_password=" + a_password + ", a_name=" + a_name
				+ "]";
	}

}
