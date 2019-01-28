package com.lw.Intercepter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginIntercepter implements HandlerInterceptor{

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//		System.out.println("");
        String requestUri = request.getRequestURI();  
        String username = (String) request.getSession().getAttribute("username"); 
        System.out.println(username);
        if(username!=null) {
//	        if(requestUri.indexOf("login")>0||requestUri.indexOf("register")>0) {
//	        	if(username!=null) {
	            	return true;
//	            }else {
//	            	return false;
//	            }
	        	
	        
//	        }
        }else if(requestUri.indexOf("login")>0||requestUri.indexOf("register")>0||requestUri.indexOf("registerIn")>0) {
        	return true;
        }else {
        	response.sendRedirect(request.getContextPath()+"/login");
        }
		return false;
        
//        if(requestUri.indexOf("login")>0||requestUri.indexOf("register")>0) {
//	        System.out.println( username);
//			if(username!=null) {
//			return true;
//			}
//			else {
//				return false;
//				
//			}
//        }else {
//        	response.sendRedirect(request.getContextPath()+"/login");
//        	return false;
//        }
	}

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		System.out.println("afterHandle...");  
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView modelAndView)
			throws Exception {
		System.out.println("postHandle...");  
//        if(modelAndView != null){  
//            Map<String, String> map = new HashMap<String, String>();  
//            modelAndView.addAllObjects(map);  
//        }  
		
	}
	
}