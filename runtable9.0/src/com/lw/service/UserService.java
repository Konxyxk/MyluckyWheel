package com.lw.service;

import org.springframework.stereotype.Service;

import com.lw.entity.User;

@Service
public interface UserService {
	
	public Integer addUser(User user);
	
	public User list(String username);
	
}
