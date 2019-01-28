package com.lw.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lw.entity.User;
import com.lw.mapper.UserMapper;
import com.lw.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserMapper userMapper;
	public Integer addUser(User user) {
		return userMapper.addUser(user);
	}
	public User list(String username) {
		return userMapper.list(username);
	}
	
}
