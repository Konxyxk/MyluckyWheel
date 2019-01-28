package com.lw.mapper;

import org.springframework.stereotype.Repository;

import com.lw.entity.User;

@Repository
public interface UserMapper {

	public Integer addUser(User user);
	
	public User list(String username);
}
