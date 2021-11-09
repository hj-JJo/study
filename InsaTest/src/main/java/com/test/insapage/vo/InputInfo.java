package com.test.insapage.vo;

import java.sql.Date;

public class InputInfo {
	private int sabun, seq, sugMoney, curSal;
	private Date wpd;
	private String pgc, eqmYn, workArea;
	
	public InputInfo() {}

	public int getSabun() {
		return sabun;
	}

	public void setSabun(int sabun) {
		this.sabun = sabun;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getSugMoney() {
		return sugMoney;
	}

	public void setSugMoney(int sugMoney) {
		this.sugMoney = sugMoney;
	}

	public int getCurSal() {
		return curSal;
	}

	public void setCurSal(int curSal) {
		this.curSal = curSal;
	}

	public Date getWpd() {
		return wpd;
	}

	public void setWpd(Date wpd) {
		this.wpd = wpd;
	}

	public String getPgc() {
		return pgc;
	}

	public void setPgc(String pgc) {
		this.pgc = pgc;
	}

	public String getEqmYn() {
		return eqmYn;
	}

	public void setEqmYn(String eqmYn) {
		this.eqmYn = eqmYn;
	}

	public String getWorkArea() {
		return workArea;
	}

	public void setWorkArea(String workArea) {
		this.workArea = workArea;
	};
	
	
	}
