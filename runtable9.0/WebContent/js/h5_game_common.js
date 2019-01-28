var $maskRule = $("#mask-rule"),//规则遮罩层
    $mask = $("#mask"),//红包遮罩层
	$mask2 = $("#mask2"),//红包遮罩层
    $winning = $(".winning"),//红包
    $card = $("#card"),
    $close = $("#close");
    //link = false;//判断是否在链接跳转中

var userphone;

//规则

$("#confirm").click(function () {
	  userphone = $("#Phone").val();
	  if(!(/^1[34578]\d{9}$/.test(userphone))){ 
	        alert("手机号码有误，请重填");  
	       
	   }else{
		   $.ajax({
	              url:'http://localhost:8080/runtable9.0/getPhone',
	              type:'POST', 
	              data:{
	                  userphone:userphone
	              },
	              traditional:true,
	              success:function () {
	                 console.log("success");
	          	   	 $maskRule.hide();
	              },
	              error:function(){
	            	  console.log("fail")
	              }
	          });  
	
	   }
   
});

/*中奖信息提示*/
function win(a1) {
    //遮罩层显示
	var text=a1
	if(text.search("谢")!=-1){
		  $mask2.show();
	}else{
	$("#text1").html(text);
    $mask.show();
	}
    $winning.addClass("reback");

	
    setTimeout(function () {
        $card.addClass("pull");
    }, 500);

    //关闭弹出层
    $("#close,.win,.btn").click(function () {
    //$close.click(function () {
        $mask.hide();
		 $mask2.hide();
        $winning.removeClass("reback");
        $card.removeClass("pull");
    });

}

//此处可以在commonjs中合并
function queryString(name) {
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regexS = "[\\?&]" + name + "=([^&#]*)";
    var regex = new RegExp(regexS);
    var results = regex.exec(window.location.search);
    if(results === null) {
        return "";
    }
    else {
        return decodeURIComponent(results[1].replace(/\+/g, " "));
    }
}



