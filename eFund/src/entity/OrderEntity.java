package entity;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Random;

public class OrderEntity {
	private int oid;
	private String ofnum;
	private BigDecimal oprice;
	private float orate;
	private String ofname;
	private String otime;
	private String otype;
	private String uname;
	
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getOfnum() {
		return ofnum;
	}
	public void setOfnum(String ofnum) {
		this.ofnum = ofnum;
	}
	public BigDecimal getOprice() {
		return oprice;
	}
	public void setOprice(BigDecimal oprice) {
		this.oprice = oprice;
	}
	public float getOrate() {
		return orate;
	}
	public void setOrate(float orate) {
		this.orate = orate;
	}
	public String getOfname() {
		return ofname;
	}
	public void setOfname(String ofname) {
		this.ofname = ofname;
	}
	public String getOtime() {
		return otime;
	}
	public void setOtime(String otime) {
		this.otime = otime;
	}
	public String getOtype() {
		return otype;
	}
	public void setOtype(String otype) {
		this.otype = otype;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}	
}
