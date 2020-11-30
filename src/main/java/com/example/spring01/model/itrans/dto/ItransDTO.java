package com.example.spring01.model.itrans.dto;

import java.sql.Date;

public class ItransDTO {

	private int u_no;
	private int t_no;
	private Date t_date;
	private String t_way;
	private String t_start;
	private String t_end;
	private String t_rosen1;
	private String t_rosen2;
	private String t_rosen3;
	private String t_visit;
	private String t_goback;
	private String t_memo;
	private int t_money;
	private int t_check;

	public int getU_no() {
		return u_no;
	}

	public void setU_no(int u_no) {
		this.u_no = u_no;
	}

	public int getT_no() {
		return t_no;
	}

	public void setT_no(int t_no) {
		this.t_no = t_no;
	}

	public Date getT_date() {
		return t_date;
	}

	public void setT_date(Date t_date) {
		this.t_date = t_date;
	}

	public String getT_way() {
		return t_way;
	}

	public void setT_way(String t_way) {
		this.t_way = t_way;
	}

	public String getT_start() {
		return t_start;
	}

	public void setT_start(String t_start) {
		this.t_start = t_start;
	}

	public String getT_end() {
		return t_end;
	}

	public void setT_end(String t_end) {
		this.t_end = t_end;
	}

	public String getT_rosen1() {
		return t_rosen1;
	}

	public void setT_rosen1(String t_rosen1) {
		this.t_rosen1 = t_rosen1;
	}

	public String getT_rosen2() {
		return t_rosen2;
	}

	public void setT_rosen2(String t_rosen2) {
		this.t_rosen2 = t_rosen2;
	}

	public String getT_rosen3() {
		return t_rosen3;
	}

	public void setT_rosen3(String t_rosen3) {
		this.t_rosen3 = t_rosen3;
	}

	public String getT_visit() {
		return t_visit;
	}

	public void setT_visit(String t_visit) {
		this.t_visit = t_visit;
	}

	public String getT_goback() {
		return t_goback;
	}

	public void setT_goback(String t_goback) {
		this.t_goback = t_goback;
	}

	public String getT_memo() {
		return t_memo;
	}

	public void setT_memo(String t_memo) {
		this.t_memo = t_memo;
	}

	public int getT_money() {
		return t_money;
	}

	public void setT_money(int t_money) {
		this.t_money = t_money;
	}

	public int getT_check() {
		return t_check;
	}

	public void setT_check(int t_check) {
		this.t_check = t_check;
	}

	@Override
	public String toString() {
		return "ItransDTO [u_no=" + u_no + ", t_no=" + t_no + ", t_date=" + t_date + ", t_way=" + t_way + ", t_start="
				+ t_start + ", t_end=" + t_end + ", t_rosen1=" + t_rosen1 + ", t_rosen2=" + t_rosen2 + ", t_rosen3="
				+ t_rosen3 + ", t_visit=" + t_visit + ", t_goback=" + t_goback + ", t_memo=" + t_memo + ", t_money="
				+ t_money + ", t_check=" + t_check + "]";
	}

}
