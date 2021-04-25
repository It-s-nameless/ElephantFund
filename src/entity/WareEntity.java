package entity;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Random;

import jdbc.FundService;

public class WareEntity {
	private int wid;
	private String uname;
	private String fnum;
	private BigDecimal wprice;
	int two = 2;
	int one = 1;
	
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getFnum() {
		return fnum;
	}
	public void setFnum(String fnum) {
		this.fnum = fnum;
	}
	public BigDecimal getWprice() {
		return wprice;
	}
	public void setWprice(BigDecimal wprice) {
		this.wprice = wprice;
	}
	
	public String getFname()
	{
		FundEntity fund = FundService.findFundByFnum(this.fnum);
		if(fund != null)
			return fund.getFname();
		else return "";
	}
	
	public String getProfitDay() {
		Random r = new Random();
		
		BigDecimal orate = FundService.findFundByFnum(this.fnum).getFbuyrate();
		
		orate = new BigDecimal("1").subtract(orate);
		
		double fpro = r.nextDouble() * 0.05;
		
		String sprofit = String.valueOf(fpro);	
		
		BigDecimal bdsp = new BigDecimal(sprofit).multiply(orate);

		bdsp = bdsp.multiply(this.wprice).setScale(2, RoundingMode.HALF_UP);
		
		final double d = Math.random();
		final int i = (int)(d*100);
		
		if(i % 2 != 0){
			sprofit="-"+bdsp.toString();
		}
		else{
			sprofit="+"+bdsp.toString();
		}
		
		return sprofit;
	}
	
	public String getProfit() {
		Random r = new Random();
		
		BigDecimal orate = FundService.findFundByFnum(this.fnum).getFbuyrate();
		
		orate = new BigDecimal("1").subtract(orate);
		
		double fpro = r.nextFloat() * 0.1;
		
		String sprofit = String.valueOf(fpro);
		
		BigDecimal bdsp = new BigDecimal(sprofit).multiply(orate);
		
		bdsp = bdsp.multiply(this.wprice).setScale(2, RoundingMode.HALF_UP);

		final double d = Math.random();
		final int i = (int)(d*100);
		
		if(i%two != one){
			sprofit="+"+bdsp.toString();
		}
		else{
			sprofit="-"+bdsp.toString();
		}
		
		return sprofit;
	}
}
