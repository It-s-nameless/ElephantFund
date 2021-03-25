package entity;

import java.math.BigDecimal;

public class FundEntity {
	private int fid;
	private String fnum;
	private String fname;
	private String fstart;
	private String ftype;
	private String fmanager;
	private BigDecimal fval;
	private BigDecimal frate;
	private BigDecimal fday;
	private BigDecimal fmonth1;
	private BigDecimal fmonth3;
	private BigDecimal fmonth6;
	private BigDecimal fmonth12;
	private BigDecimal fbuyrate;
	private int fbuy;
	private String ftext;
	private int fflag;
	public int getFflag() {
		return fflag;
	}
	public void setFflag(int fflag) {
		this.fflag = fflag;
	}
	public String getFtext() {
		return ftext;
	}
	public void setFtext(String ftext) {
		this.ftext = ftext;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getFnum() {
		return fnum;
	}
	public void setFnum(String fnum) {
		this.fnum = fnum;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFstart() {
		return fstart;
	}
	public void setFstart(String fstart) {
		this.fstart = fstart;
	}
	public String getFtype() {
		if(this.ftype.equals("1"))	return "股票型";
		else if(this.ftype.equals("2"))	return "混合型";
		else return "债券型";
	}
	
	public String getFxtype() {
		if(this.ftype.equals("1"))	return "高风险";
		else if(this.ftype.equals("2"))	return "中高风险";
		else return "低风险";
	}
	
	public void setFtype(String ftype) {
		this.ftype = ftype;
	}
	public String getFmanager() {
		return fmanager;
	}
	public void setFmanager(String fmanager) {
		this.fmanager = fmanager;
	}
	public BigDecimal getFrate() {
		return frate;
	}
	public BigDecimal getFval() {
		return fval;
	}
	public void setFval(BigDecimal fval) {
		this.fval = fval;
	}
	public void setFrate(BigDecimal frate) {
		this.frate = frate;
	}
	public BigDecimal getFday() {
		return fday;
	}
	public void setFday(BigDecimal fday) {
		this.fday = fday;
	}
	public BigDecimal getFmonth1() {
		return fmonth1;
	}
	public void setFmonth1(BigDecimal fmonth1) {
		this.fmonth1 = fmonth1;
	}
	public BigDecimal getFmonth3() {
		return fmonth3;
	}
	public void setFmonth3(BigDecimal fmonth3) {
		this.fmonth3 = fmonth3;
	}
	public BigDecimal getFmonth6() {
		return fmonth6;
	}
	public void setFmonth6(BigDecimal fmonth6) {
		this.fmonth6 = fmonth6;
	}
	public BigDecimal getFmonth12() {
		return fmonth12;
	}
	public void setFmonth12(BigDecimal fmonth12) {
		this.fmonth12 = fmonth12;
	}
	public BigDecimal getFbuyrate() {
		return fbuyrate;
	}
	public void setFbuyrate(BigDecimal fbuyrate) {
		this.fbuyrate = fbuyrate;
	}
	public int getFbuy() {
		return fbuy;
	}
	public void setFbuy(int fbuy) {
		this.fbuy = fbuy;
	}
	public BigDecimal getFbuyrate10() {
		return this.fbuyrate.multiply(new BigDecimal("10"));
	}
	public int getFbuy10() {
		return this.fbuy*10;
	}
	
}