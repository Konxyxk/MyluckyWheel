<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>抽奖</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/index.css">
    <!-- 移动端适配 -->
    <script>
        var html = document.querySelector('html');
        changeRem();
        window.addEventListener('resize', changeRem);

        function changeRem() {
            var width = html.getBoundingClientRect().width;
            html.style.fontSize = width / 10 + 'px';
        }
    </script>
</head>

<body>

<c:forEach items="${table}" var="a">
	<div class="tips" style="display:none">
		
		                   	 ${a.prize}
		
	</div>
</c:forEach>



<div id="wrap">
    <div class="header clearfix">
        <div class="title"></div>
    </div>

    <!--轮盘-->
    <div class="rotate">
        <div class="lunpai">
            <ul class="prize running">
              
                <li>
                 <div>
                
                    <span></span>
                    <p>
                    	<c:forEach items="${table}" var="a" begin="0" end="0">
                    	 ${a.prize}
                    	 </c:forEach>
                    </p>
                    
                  </div>
                </li>
                <li>
                 <div>
                    <span></span>
                    <p>
                    <c:forEach items="${table}" var="a" begin="1" end="1">
                    	 ${a.prize}
                    	 </c:forEach>
                    </p>
                  </div>
                </li>
                <li>
                   <div>
                    <span></span>
                    <p>
                    <c:forEach items="${table}" var="a" begin="2" end="2">
                    	 ${a.prize}
                    	 </c:forEach>
                    </p>
                    </div>
                </li>
                <li>
                  <div>
                    <span></span>
                    <p>
                    	<c:forEach items="${table}" var="a" begin="3" end="3">
                    	 ${a.prize}
                    	 </c:forEach>
                    </p>
                  </div>  
                </li>
                <li>
                  <div>
                    <span></span>
                    <p>
                    	<c:forEach items="${table}" var="a" begin="4" end="4">
                    	 ${a.prize}
                    	 </c:forEach>
                    
                    </p>
                  </div>
                </li>
                <li>
                   <div>
                    <span></span>
                    <p>
                    	<c:forEach items="${table}" var="a" begin="5" end="5">
                    	 ${a.prize}
                    	 </c:forEach>
                    </p>
                   </div>
                </li>
                
            </ul>
           
        </div>
        <div class="ring"></div>
        <div id="btn"></div>
    </div>
    <div class="border">
        	您今日还有 <span id="change">10</span> 次抽奖机会
    </div>
    <!--滚动信息-->
    <div class="scroll" >
        <p></p>
        <div  class="sideBox">
           <div class="bd" id="txtMarqueeTop">
            <ul>
                <li>
                    恭喜<span class="start-num">180</span>****<span class="end-num">0182</span>
                    获得<span class="info">一等獎</span>
                </li>
                <li>
                    恭喜<span class="start-num">183</span>****<span class="end-num">1143</span>
                    获得<span class="info">二等獎</span>
                </li>
                <li>
                    恭喜<span class="start-num">173</span>****<span class="end-num">2150</span>
                    获得<span class="info">一等獎</span>
                </li>
                 <li>
                    恭喜<span class="start-num">134</span>****<span class="end-num">1950</span>
                    获得<span class="info">三等獎</span>
                </li>
                <li>
                    恭喜<span class="start-num">177</span>****<span class="end-num">2107</span>
                    获得<span class="info">二等獎</span>
                </li>
                 <li>
                    恭喜<span class="start-num">137</span>****<span class="end-num">1059</span>
                    获得<span class="info">二等獎</span>
                </li>
            </ul>
            </div>
        </div>
    </div>
    <!--滚动信息-->
    <div class="rules" >
        <p id="rule-title"></p>
        <div  class="rule-box">
            <div class="text">
                <p>1. 规则1 <br>
                    2. 规则1 <br>
                    3. 规则1 <br>
                    4. 规则1 <br>

                </p>
            </div>
        </div>
    </div>

    <!--个人登录弹窗-->
    <div id="mask-rule">
        <div class="box-rule">
              <input name="userPhone" id="Phone" type="phone" value="请输入您的手机号" onfocus="this.value=''" onblur="if(this.value==''){this.value = '请输入您的手机号';}">
               <a href="javascript:" class="done" id="confirm">确定</a>      
        </div>
    </div>
    <!--中奖提示-->
    <div id="mask">
        <div class="blin"></div> //中奖后的发光效果
        <div class="caidai"></div>
        <div class="winning">
            <p><b>恭喜您</b><br/>抽中了<span id="text1"></span></p>
            <a href="#" target="_self" class="btn">确定</a>
         
        </div>
    </div>
    <!--中奖提示-->
    <div id="mask2">
        <div class="blin"></div>
        <div class="caidai"></div>
        <div class="winning">
            <p><br/><b>谢谢参与</b></p>
            <a href="#" target="_self" class="btn">确定</a>
         
        </div>
    </div>
    
    
</div>

<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/jquery.rotate.js"></script>
<script src="js/h5_game_common.js"></script>
<script src="js/index.js"></script>
<script src="js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">jQuery("#txtMarqueeTop").slide({ mainCell:"ul",autoPlay:true,effect:"topMarquee",interTime:50,vis:6  });</script>
<script type="text/javascript">
</script>
</body>
</html>








