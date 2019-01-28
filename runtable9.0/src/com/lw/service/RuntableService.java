package com.lw.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lw.entity.RuntableDomain;

@Service
public interface RuntableService {
	
	
	List<RuntableDomain> list();
	
	public RuntableDomain getAward();
	
	
	public Integer add(RuntableDomain runtabledomain);
	
	public Integer status(int awardValue);
	
	public void truncateTable();
	
	public void updateStatus();
		
	public void updatePhone();
	
	public Integer addPhone(String phone);
	
	public String getlist();

	public Integer addAward(RuntableDomain rd);
}
