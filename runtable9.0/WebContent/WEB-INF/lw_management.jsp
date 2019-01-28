<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/datepicker3.css" rel="stylesheet">
    <link href="css/styles1.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<!-- 顶部设计 -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><span>讯酷</span>指北针</a>
            <ul class="user-menu">
                <li class="dropdown pull-right">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>${sessionScope.username}<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>帮助</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-cog"></span>设置</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span>退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div><!-- /.container-fluid -->
</nav>
<!--设置左边项目栏  -->
<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
    <form role="search">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="搜索">
        </div>
    </form>
    <ul class="nav menu">
        <li class="active"><a href="#"><span class="glyphicon glyphicon-dashboard"></span>项目</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-th"></span> 猎户座</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-stats"></span> 蛇夫座</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-list-alt"></span> 大熊座</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-pencil"></span> 仙女座</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span> 牧夫座</a></li>
        <li role="presentation" class="divider"></li>
        <li><a href="lw_login.jsp"><span class="glyphicon glyphicon-user"></span>登录页面</a></li>
    </ul>
</div><!--/.sidebar-->
<!--  展开页面效果-->
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
            <li class="active">您的项目</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">您的项目</h1>
        </div>
    </div><!--/.row-->
<!--设置 奖品相关信息  -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">个性化</div>
                <div class="panel-body">
                    <div class="col-md-6">
                        <form role="form">
                        <!-- 主体部分 -->
                            <li class="parent ">
                                <a href="#">
                                    <span class="glyphicon glyphicon-list"></span> 幸运转盘 <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span>
                                </a>
                                <div class="editContent">
                                    <div class="optionBox" id="sub-item-1">
                                        <h3>请设置转盘基本信息</h3>
                                        <ol class="options">
                                        	<h4>设置规则： 各元素不能为空，且中奖概率不能有重复</h4>
                                        	<!-- <p>设置奖项  </p><p>设置中奖概率</p> -->
                                            <li><input type="text" placeholder="请设置奖项" class="award"/>&nbsp;&nbsp;&nbsp;<input type="number" placeholder="请设置奖项概率" class="awardV"/></li>&nbsp;&nbsp;&nbsp;
                                            <li><input type="text" placeholder="请设置奖项" class="award"/>&nbsp;&nbsp;&nbsp;<input type="number" placeholder="请设置奖项概率" class="awardV"/></li>&nbsp;&nbsp;&nbsp;
                                            <li><input type="text" placeholder="请设置奖项" class="award"/>&nbsp;&nbsp;&nbsp;<input type="number" placeholder="请设置奖项概率" class="awardV"/></li>&nbsp;&nbsp;&nbsp;
                                            <li><input type="text" placeholder="请设置奖项" class="award"/>&nbsp;&nbsp;&nbsp;<input type="number" placeholder="请设置奖项概率" class="awardV"/></li>&nbsp;&nbsp;&nbsp;
                                            <li><input type="text" placeholder="请设置奖项" class="award"/>&nbsp;&nbsp;&nbsp;<input type="number" placeholder="请设置奖项概率" class="awardV"/></li>&nbsp;&nbsp;&nbsp;
                                            <li><input type="text" placeholder="请设置奖项" class="award"/>&nbsp;&nbsp;&nbsp;<input type="number" placeholder="请设置奖项概率" class="awardV"/></li>&nbsp;&nbsp;&nbsp;
                                        </ol>
										<!--  设置 完成 演示以及确定-->
                                        <div class="btns">
                                            <a href="setRecord" target="_blank" class="Demonstration" id="transform">演示</a>
                                            <a href="javascript:" class="done" id="confirm">确定</a>
                                        </div>
                                    </div>

                                </div> 

                            </li>
                            <!--后续在此添加内容  -->
                            <li class="parent ">
                                <a href="#">
                                    <span class="glyphicon glyphicon-list"></span> 太白星 <span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span>
                                </a>
                                <ul class="children collapse" id="sub-item-2">
                                    <li>
                                        <a class="" href="#">
                                           设置元素
                                        </a>
                                    </li>
                                    <li>
                                        <a class="" href="#">
                                            设置元素
                                        </a>
                                    </li>
                                    <li>
                                        <a class="" href="#">
                                            设置元素
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <!--后续在此添加内容 -->
                            <li class="parent ">
                                <a href="#">
                                    <span class="glyphicon glyphicon-list"></span> 北极星 <span data-toggle="collapse" href="#sub-item-3" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span>
                                </a>
                                <ul class="children collapse" id="sub-item-3">
                                    <li>
                                        <a class="" href="#">
                                            设置元素
                                        </a>
                                    </li>
                                    <li>
                                        <a class="" href="#">
                                            设置元素
                                        </a>
                                    </li>
                                    <li>
                                        <a class="" href="#">
                                            设置元素
                                        </a>
                                    </li>
                                </ul>
                            </li>
                    </form>
                </div>
                </div>
            </div>
        </div><!-- /.col-->
    </div><!-- /.row -->
</div>	<!--/.main-->


<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script>

    !function ($) {
        $(document).on("click","ul.nav li.parent > a > span.icon", function(){
            $(this).find('em:first').toggleClass("glyphicon-minus");
        });
        $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
    }(window.jQuery);

    $(window).on('resize', function () {
        if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
    })
    $(window).on('resize', function () {
        if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
    })
	//判断数组是否有重复
    function isRepeat(arr){
    	var hash = {};
        for (var i in arr) {
            if (hash[arr[i]]){
                return true; 
            }
            hash[arr[i]] = true;
        }
        return false;
    	
    }
    
    /* 确认按钮的点击函数 */
   /* $(".glyphicon glyphicon-log-out".click(function(){
	   session.removeAttribute(username);
   }); */
   $("#confirm").click(function () {
	   var record=[];/*  点击 获取list 列表信息*/
       var recordValue=[];
       var recordS=[];/*点击 获取list 列表信息冰作为输入的判断   */
       var recordValueS=[];
       var award=$("#sub-item-1").find("input[type=text]");
       var awardValue =$("#sub-item-1").find("input[type=number]");
        for (var i=0;i<award.length;i++){
    	   
           recordS.push(award.eq(i).val());
           recordValueS.push(awardValue.eq(i).val());
       } 
      var bool = !(recordS.indexOf("")!=-1)&&!(recordValueS.indexOf("")!=-1)&&(!isRepeat(recordValueS));/* 输入不能为空 且概率输入不能有重复  */
      if(bool){
    	  for (var i=0;i<award.length;i++){
       	   
              record.push(award.eq(i).val());
              recordValue.push(awardValue.eq(i).val());
          }
    	  alert("设置成功");
          $.ajax({
              url:'http://localhost:8080/runtable9.0/getRecord',
              type:'POST', 
              data:{
                  record:record,
                  recordValue:recordValue
              },
              dataType:'json',
              traditional:true,
              success:function () {
                 console.log("success");
              }
          });  
      }else{
    	  if((recordS.indexOf("")!=-1)||(recordValueS.indexOf("")!=-1)){
    	  	  alert("输入不能为空");
    	  }else if(isRepeat(recordValueS)){
          	  alert("奖项概率不能重复");
    	  }
      }
   });
    /* 演示按钮的点击函数 */
     /* $("#transform").click(function(){
    	$.ajax({
    		url:'http://localhost:8080/runtable6.0/setRecord',
    		type:'Post',
    		data:{
    		
    		},
    		dataType:'json',
    		success:function(res){
			  	
    		}
    	});
    });  */
    
</script>
</body>

</html>
