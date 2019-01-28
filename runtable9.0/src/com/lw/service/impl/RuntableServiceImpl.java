package com.lw.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lw.entity.RuntableDomain;
import com.lw.mapper.RuntableMapper;
import com.lw.service.RuntableService;

@Service
public class RuntableServiceImpl implements RuntableService{
	@Autowired
	RuntableMapper runtableMapper;
	
	public List<RuntableDomain> list() {
		return runtableMapper.list();
	}
	
	public RuntableDomain getAward() {
		return runtableMapper.getAward();
	}

	public Integer add(RuntableDomain runtabledomain) {
		
		return runtableMapper.add(runtabledomain);
	}

	public Integer status(int awardValue) {
		return runtableMapper.status(awardValue);
	}

	public void truncateTable() {
		runtableMapper.truncateTable();
		
	}
	public void updateStatus() {
		runtableMapper.updateStatus();
		
	}

	public void updatePhone() {
		runtableMapper.updatePhone();
	}

	@Override
	public Integer addPhone(String phone) {
		// TODO Auto-generated method stub
		return runtableMapper.addPhone(phone);
	}
	
	public String getlist() {
		return runtableMapper.getlist();
	}

	@Override
	public Integer addAward(RuntableDomain rd) {
		// TODO Auto-generated method stub
		return runtableMapper.addAward(rd);
	}
}
