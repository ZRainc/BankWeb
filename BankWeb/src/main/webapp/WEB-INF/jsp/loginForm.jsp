<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>

	<head lang="en">s
		<meta charset="UTF-8">
		<title>登录</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
	<link rel="stylesheet" href="css/main.css">
<link media="screen" rel="stylesheet" href="css/demo.css"/>
		<link rel="stylesheet" href="css/amazeui.css" />
		<link href="css/dlstyle.css" rel="stylesheet" type="text/css">
	</head>

	<body>

		<div class="login-boxtitle">
			<a href="main"><img alt="logo" src="images/0.png" /></a>
		</div>

		<div class="login-banner">
			<div class="login-main">
				<div class="login-banner-bg"><span></span><img src="images/2.jpg" style="margin-top:20px;width:630px;height:430px" /></div>
				<div class="login-box">

							<h3 class="title">登录银行</h3>

							<div class="clear"></div>
						 <form id="loginForm" action="login" method="post">
						<div class="login-form">
						  
							   <div class="user-name">
								    <label for="user"><i class="am-icon-user"></i></label>
								    <input type="text" name="name" id="name" placeholder="邮箱/手机/用户名">
                 </div>
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input type="password" name="password" id="password" placeholder="请输入密码">
                 </div>
            
           </div>
            
            <div class="login-links">
            
								<a href="#" class="am-fr">忘记密码</a>
								<a href="register" class="zcnext am-fr am-btn-default">注册</a>
								<br />
            </div>
								<div class="am-cf">
									<button type="submit" name="" class="am-btn am-btn-primary am-btn-sm">登录</button>
								</div>
								     </form>
						<div class="partner">		
								<h3>合作账号</h3>
							<div class="am-btn-group">
								<li><a href="#"><i class="am-icon-qq am-icon-sm"></i><span>QQ登录</span></a></li>
								<li><a href="#"><i class="am-icon-weibo am-icon-sm"></i><span>微博登录</span> </a></li>
								<li><a href="#"><i class="am-icon-weixin am-icon-sm"></i><span>微信登录</span> </a></li>
							</div>
						</div>	

				</div>
			</div>
		</div>


					
						<div class="footer">
		<div class="container">
			<div class="footer-servise">
				<ul class="servise-list clearfix">
					<li class="servise-item">
						<a href=""><i class="iconfont">&#xe712;</i>网站声明</a>
					</li>
					<li class="servise-item">
						<a href=""><i class="iconfont">&#xe70d;</i>服务网点</a>
					</li>
					<li class="servise-item">
						<a href=""><i class="iconfont">&#xe706;</i>网站地图</a>
					</li>
					<li class="servise-item">
						<a href=""><i class="iconfont">&#xe6f1;</i>联系我行</a>
					</li>
					<li class="servise-item">
						<a href=""><i class="iconfont">&#xe709;</i>服务热线9999</a>
					</li>
				</ul>
			</div>
			
		</div>
	</div>
				

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="jquery/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script>
  window.onload = function(){
    var oForm = document.getElementById('loginForm');
    var oUser = document.getElementById('loginname');
    var oPswd = document.getElementById('password');
    var oRemember = document.getElementById('remember');
    //页面初始化时，如果帐号密码cookie存在则填充
    if(getCookie('loginname') && getCookie('password')){
      oUser.value = getCookie('loginname');
      oPswd.value = getCookie('password');
      oRemember.checked = true;
    }
    //复选框勾选状态发生改变时，如果未勾选则清除cookie
    oRemember.onchange = function(){
      if(!this.checked){
        delCookie('loginname');
        delCookie('password');
      }
    };
    //表单提交事件触发时，如果复选框是勾选状态则保存cookie
    oForm.onsubmit = function(){
      if(remember.checked){ 
        setCookie('loginname',oUser.value,7); //保存帐号到cookie，有效期7天
        setCookie('password',oPswd.value,7); //保存密码到cookie，有效期7天
      }
    };
  };
  //设置cookie
  function setCookie(name,value,day){
    var date = new Date();
    date.setDate(date.getDate() + day);
    document.cookie = name + '=' + value + ';expires='+ date;
  };
  //获取cookie
  function getCookie(name){
    var reg = RegExp(name+'=([^;]+)');
    var arr = document.cookie.match(reg);
    if(arr){
      return arr[1];
    }else{
      return '';
    }
  };
  //删除cookie
  function delCookie(name){
    setCookie(name,null,-1);
  };
</script>
</body>
</html>
