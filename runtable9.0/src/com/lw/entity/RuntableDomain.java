package com.lw.entity;

import java.io.Serializable;

public class RuntableDomain implements Serializable {
    private static final long serialVersionUID = -5180352195981366719L;
    private Integer id;
    private String prize;
    private Integer v;
 
    private String userphone;
    
    private String awardDate;
     
   

	public String getAwardDate() {
		return awardDate;
	}

	public void setAwardDate(String awardDate) {
		this.awardDate = awardDate;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}





	@Override
	public String toString() {
		return "RuntableDomain [id=" + id + ", prize=" + prize + ", v=" + v + ", userphone=" + userphone
				+ ", awardDate=" + awardDate + "]";
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPrize() {
        return prize;
    }

    public void setPrize(String prize) {
        this.prize = prize;
    }

    public Integer getV() {
        return v;
    }

    public void setV(Integer v) {
        this.v = v;
    }
}
