package com.lw.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lw.entity.User;
import com.lw.service.UserService;

@Controller
/*@RequestMapping("/user")*/
public class userController {

@Autowired
UserService userService;
	@RequestMapping("/login")
	public String login() {
		return "lw_login";
	}
	
	
	@RequestMapping("/loginIn")
	@ResponseBody
	public Integer loginIn(@RequestParam(value="username",required=false) String username,
			@RequestParam(value="password",required=false) String password,HttpSession session) {
		System.out.println("登录");
		int res ;
		User userRecord = userService.list(username);
		System.out.println(userRecord);
		if (userRecord==null) {
				res=404;//用户没有注册
				System.out.println(res);
		}else {
			if(!userRecord.getPassword().equals(password)) {
				res=403;//密码错误
			}else {
				session.setAttribute("username", username);
				res=400;//恭喜
			}
		}
		System.out.println(res);
		return res;
	}
	@RequestMapping("/register")
	public String register() {
		return "Register";
	}
	
	@RequestMapping("/registerIn")
	@ResponseBody
	@SuppressWarnings("unused")
	public void registerIn(@RequestParam(value="username",required=false) String username,
			@RequestParam(value="password",required=false) String password) {
		User user = new User();
		
		user.setUsername(username);
		
		user.setPassword(password);
		
	
		int result = userService.addUser(user);
		
		
		
	}
}
