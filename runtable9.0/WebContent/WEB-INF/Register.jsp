<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>

    <link rel="stylesheet" href="css/style.css" media="all">
    <script src="js/jquery.min.js"></script>

</head>
<body>
    <div class="lw_login">
        <h2>Register</h2>
        <div class="login-top">
            <h1>注册</h1>
            <form>
                <input id="username" type="text" value="请输入用户名" onfocus="this.value=''" onblur="if(this.value==''){this.value = '请输入用户名';}">
                <input id="password" type="text" value="请输入密码" onfocus="this.value='',this.type='password'" onblur="if(this.value==''){this.value = '请输入密码';}">
                <input id="password1" type="text" value="请再次输入密码" onfocus="this.value='',this.type='password'" onblur="if(this.value==''){this.value = '请再次输入密码';}">
            </form>
            <div class="forgot_pw">
                <input id="registerIn" type="submit" value="确定"">
                <input id="backHome" type="submit" value="主页">
            </div>
        </div>
         <div class="login-bottom">
        </div>
    </div>
    <div class="copyright">
        <p>Copyright &copy; 2019.讯酷All rights reserved.
    </div>
</body>
<script type="text/javascript">
    $(function () {
        $("#backHome").click(function () {
            location.href='login'; 
        });
        
        var username;
        var password;
        var password1;
       
        	$("#registerIn").click(function(){
        		username = $("#username").val();
        		password = $("#password").val();
        		password1 = $("#password1").val();
        		  /* alert(username);
        		  alert(password);
        		  alert(password1); */
        		  var bool =(username!="请输入用户名")&&(password!="请输入密码")&&(password1!="请再次输入密码");
        		 /*  alert(bool) */
        		if((password==password1)&&bool){
        		
            	$.ajax({
            		url:'http://localhost:8080/runtable9.0/registerIn',
            		type:'post',
            		data:{
            			username:username,
            			password:password
            		},
            		
            		traditional:true,
            		success:function(){
            			console.log("success");
            			alert("注册成功");
            		},
            		error:function(){
            			alert("用户名已被注册，请重新输入");
            		}
            		
            	})
        		}else if(!bool){
        	        	alert("输入不能为空");
        	    }else if(password!=password1){
        	    		alert("密码输入不一致");
        	    }
            	
            });	
       
        
    })
</script>
</html>
