package com.lw.mapper;

import java.util.List;
import org.springframework.stereotype.Repository;

import com.lw.entity.RuntableDomain;

@Repository
public interface RuntableMapper {
	public Integer add(RuntableDomain runtabledomain);
	
	public RuntableDomain getAward();
	
	public List<RuntableDomain> list();

	public Integer status(int awardValue);
	
	public void truncateTable();
	

	public void updateStatus();
	
	public void updatePhone();
	
	public Integer addPhone(String phone);
	
	public String getlist();

	public Integer addAward(RuntableDomain rd);

}
