package com.example.spring01.model.iuser.dto;

public class IuserDTO {
	private int u_no;
	private String u_mail;
	private String u_password;
	private String u_namefirst;
	private String u_namelast;
	private String u_katafirst;
	private String u_katalast;
	private String u_gender;

	public int getU_no() {
		return u_no;
	}

	public void setU_no(int u_no) {
		this.u_no = u_no;
	}

	public String getU_mail() {
		return u_mail;
	}

	public void setU_mail(String u_mail) {
		this.u_mail = u_mail;
	}

	public String getU_password() {
		return u_password;
	}

	public void setU_password(String u_password) {
		this.u_password = u_password;
	}

	public String getU_namefirst() {
		return u_namefirst;
	}

	public void setU_namefirst(String u_namefirst) {
		this.u_namefirst = u_namefirst;
	}

	public String getU_namelast() {
		return u_namelast;
	}

	public void setU_namelast(String u_namelast) {
		this.u_namelast = u_namelast;
	}

	public String getU_katafirst() {
		return u_katafirst;
	}

	public void setU_katafirst(String u_katafirst) {
		this.u_katafirst = u_katafirst;
	}

	public String getU_katalast() {
		return u_katalast;
	}

	public void setU_katalast(String u_katalast) {
		this.u_katalast = u_katalast;
	}

	public String getU_gender() {
		return u_gender;
	}

	public void setU_gender(String u_gender) {
		this.u_gender = u_gender;
	}

	@Override
	public String toString() {
		return "IuserDTO [u_no=" + u_no + ", u_mail=" + u_mail + ", u_password=" + u_password + ", u_namefirst="
				+ u_namefirst + ", u_namelast=" + u_namelast + ", u_katafirst=" + u_katafirst + ", u_katalast="
				+ u_katalast + ", u_gender=" + u_gender + "]";
	}
}
