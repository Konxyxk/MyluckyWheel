<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>

    <link rel="stylesheet" href="css/style.css" media="all">
    <script src="js/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/vue/2.2.2/vue.min.js"></script>
</head>
<body>
	<div id="#app">${result}</div> 
    <div class="lw_login">
        <h2>Home</h2>
        <div class="login-top">
            <h1>登录</h1>
            <form>
                <input name="username" id="username" type="text" value="请输入用户名" onfocus="this.value=''" onblur="if(this.value==''){this.value = '请输入用户名';}">
                <input name="password" id="password" type="text" value="请输入密码" onfocus="this.value='',this.type='password'" onblur="if(this.value==''){this.value = '请输入密码',this.type='text';}">
                
            
            
            </form>
            <div class="forgot_pw">
                <a href="#">忘记密码？</a>
                <input id="getin" type="submit" value="登录">
            </div>
        </div>
        <div class="login-bottom">
                <h3>新用户 <a href="register">注册</a>&nbsp点击这里！</h3>

        </div>
    </div>
    <div class="copyright">
        <p>Copyright &copy; 2019.讯酷All rights reserved.
    </div>
</body>


<script type="text/javascript">

 
    $(function () {
    	var username;
    	var password;
    	
    
        $("#getin").click(function () {
        	username=$("#username").val();
        	password=$("#password").val();

        	if(username=="请输入用户名"||password=="请输入密码"){
				alert("用户名或密码不能为空");        		
        	}else{
				$.ajax({
					url:'http://localhost:8080/runtable9.0/loginIn',
					type:'post',
					data:{
						username:username,
						password:password
						},
					success:function(ret){
					
						if (ret==404) {
	        		        	alert('该账户不存在！');
	        		        	 location.href = 'login'; 
	        		    }else if (ret==403){
        		            alert('密码错误！');
        		            location.href = 'login'; 
        				 }else if (ret ==400) {
        		            alert('登录成功！');
        		             location.href = 'management'; 
        		        }
	 					
					},
					errot:function(){
						
					}
					
				});
        	}
            
        })
    })  
</script>
</html>