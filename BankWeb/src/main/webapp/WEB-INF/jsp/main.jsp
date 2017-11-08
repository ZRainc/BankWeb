<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>上海银行</title>
	<link rel="shortcut icon" href="http://s01.mifile.cn/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/main.css">
<link media="screen" rel="stylesheet" href="css/demo.css"/>
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
<script type="text/javascript">

jQuery(document).ready(function(){

	var qcloud={};

	$('[_t_nav]').hover(function(){

		var _nav = $(this).attr('_t_nav');

		clearTimeout( qcloud[ _nav + '_timer' ] );

		qcloud[ _nav + '_timer' ] = setTimeout(function(){

		$('[_t_nav]').each(function(){

		$(this)[ _nav == $(this).attr('_t_nav') ? 'addClass':'removeClass' ]('nav-up-selected');

		});

		$('#'+_nav).stop(true,true).slideDown(200);

		}, 150);

	},function(){

		var _nav = $(this).attr('_t_nav');

		clearTimeout( qcloud[ _nav + '_timer' ] );

		qcloud[ _nav + '_timer' ] = setTimeout(function(){

		$('[_t_nav]').removeClass('nav-up-selected');

		$('#'+_nav).stop(true,true).slideUp(200);

		}, 150);

	});

});

</script>




</head>
<body>
	<!-- 顶部导航条 -->
	<div class="container">
	<div class="topbar">
		
			<div class="col-md-4">
				<a href="loginForm" class="link">登录</a>
					<span class="ver">|</span>
				<a href="register" class="link">注册</a>
					<span class="ver">|</span>
				<a href="#" class="link">消息通知</a>
			</div>
			<div class="col-md-8 ">
					<a href="#">立即申请信用卡</a>
					<span class="ver">|</span>
					<a href="#">个人安全信息提示</a>
					<span class="ver">|</span>
					<a href="#">金融产品及服务条款</a>
					<span class="ver">|</span>
					<a href="#">金融知识课堂</a>
					<span class="ver">|</span>
					<a href="#">产品服务意见反馈</a>
					<span class="ver">|</span>
					<a href="#">联系我们</a>
					<span class="ver">|</span>
			</div>	
		</div>
	</div>
	<!-- header区 -->
	<div class="header">
		<div class="container">
			

	<div class="navigation-up">
		<div class="navigation-inner">
			<div class="navigation-v3">
				<ul>
				<li>
					<div class="" style="padding:-100px 100px 0px 50px">
						<img src="images/上海银行.png" width="200" height="90">
					</div>
				</li>
					<li class="nav-up-selected-inpage" _t_nav="home">
						<h2>
							<a href="main.jsp">首页</a>
						</h2>
					</li>
					<li class="" _t_nav="product">
						<h2>
							<a href="#">个人业务</a>
						</h2>
					</li>
					<li class="" _t_nav="wechat">
						<h2>
							<a href="#">企业业务</a>
						</h2>
					</li>
					<li class="" _t_nav="solution">
						<h2>
							<a href="#">关于银行</a>
						</h2>
					</li>
					<li class="" _t_nav="cooperate">
						<h2>
							<a href="#">客户服务</a>
						</h2>
					</li>
					<li _t_nav="support">
					<h2>
							<a href="#">帮助与支持</a>
						</h2>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="navigation-down">

		<div id="product" class="nav-down-menu menu-1" style="display: none;" _t_nav="product">

			<div class="navigation-down-inner">

				<dl style="margin-left: 100px;">

					<dt>个人贷款</dt>

					<dd>

						<a hotrep="hp.header.product.compute1" href="#">个人留学贷款</a>

					</dd>

					<dd>

						<a hotrep="hp.header.product.compute2" href="#">个人消费贷款</a>

					</dd>

					<dd>

						<a hotrep="hp.header.product.compute3" href="#">个人住房贷款</a>

					</dd>

				</dl>

				<dl>

					<dt>投资理财</dt>

					<dd>

						<a hotrep="hp.header.product.storage1" href="#">账户能源</a>

					</dd>

					<dd>

						<a hotrep="hp.header.product.storage2" href="#">开放式基金</a>

					</dd>
						<dd>

						<a hotrep="hp.header.product.storage2" href="#">凭证式国债</a>

					</dd>

				</dl>

				<dl>

					<dt>便利金融</dt>

					<dd>

						<a hotrep="hp.header.product.monitoring1" href="#">汇款直通车</a>

					</dd>

					<dd>

						<a hotrep="hp.header.product.monitoring2" href="#">个人联名账户</a>

					</dd>

					<dd>

						<a hotrep="hp.header.product.monitoring3" href="#">自助缴费</a>

					</dd>
					<dd>

						<a hotrep="hp.header.product.monitoring3" href="#">银医服务</a>

					</dd>

				</dl>

				<dl>

					<dt>个人存款</dt>

					<dd>

						<a hotrep="hp.header.product.analysis1" href="#">整存整取</a>

					</dd>

					<dd>

						<a hotrep="hp.header.product.analysis2" href="#">教育储蓄</a>

					</dd>

				</dl>

				<dl>

					<dt>银行卡服务</dt>

					<dd>

						<a hotrep="hp.header.product.devtool1" href="#">单芯片借记卡</a>

					</dd>

					<dd>

						<a hotrep="hp.header.product.devtool2" href="#">商友卡</a>

					</dd>

					<dd>

						<a hotrep="hp.header.product.devtool3" href="#">宝贝成长卡</a>

					</dd>

				</dl>

				<dl>

					<dt>跨境金融</dt>

					<dd>

						<a hotrep="hp.header.product.service1" href="#">个人购汇</a>

					</dd>

					<dd>

						<a hotrep="hp.header.product.service2" href="#">个人结汇</a>

					</dd>

				</dl>

			</div>

		</div>

<div id="wechat" class="nav-down-menu menu-3 menu-1" style="display: none;" _t_nav="wechat">

			<div class="navigation-down-inner">

				<dl style="margin-left: 380px;">
					<dt>公司业务</dt>

					<dd>

						<a hotrep="hp.header.product.analysis1" href="#">融资业务</a>

					</dd>

					<dd>

						<a hotrep="hp.header.product.analysis2" href="#">网络融资</a>

					</dd>
				</dl>
				<dl>

					<dt>电子银行</dt>

					<dd>

						<a hotrep="hp.header.product.analysis1" href="#">收款业务</a>

					</dd>

					<dd>

						<a hotrep="hp.header.product.analysis2" href="#">付款业务</a>

					</dd>

				</dl>

				<dl>

					
					<dt>资产托管</dt>

					<dd>

						<a hotrep="hp.header.product.analysis1" href="#">业务综述</a>

					</dd>

					<dd>

						<a hotrep="hp.header.product.analysis2" href="#">托管产品</a>

					</dd>

				</dl>
				
				<dl>

					
					<dt>资产托管</dt>

					<dd>

						<a hotrep="hp.header.product.analysis1" href="#">业务综述</a>

					</dd>

					<dd>

						<a hotrep="hp.header.product.analysis2" href="#">托管产品</a>

					</dd>

				</dl>
				
				<dl>

					
					<dt>资产托管</dt>

					<dd>

						<a hotrep="hp.header.product.analysis1" href="#">业务综述</a>

					</dd>

					<dd>

						<a hotrep="hp.header.product.analysis2" href="#">托管产品</a>

					</dd>

				</dl>

			</div>

		</div>
		<div id="solution" class="nav-down-menu menu-3 menu-1" style="display: none;" _t_nav="solution">

			<div class="navigation-down-inner">

				<dl style="margin-left: 380px;">

					<dd>

						<a class="link" hotrep="hp.header.solution.1" href="#">银行风貌</a>

					</dd>

				</dl>

				<dl>

					<dd>

						<a class="link" hotrep="hp.header.solution.2" href="#">人才招聘</a>

					</dd>

				</dl>

				<dl>

					<dd>

						<a class="link" hotrep="hp.header.solution.3" href="#">企业文化</a>

					</dd>

				</dl>

			</div>

		</div>

		<div id="support" class="nav-down-menu menu-3 menu-1" style="display: none;" _t_nav="support">

			<div class="navigation-down-inner">

				<dl style="margin-left: 610px;">

					<dd>

						<a class="link" hotrep="hp.header.support.1" href="#">常见问题</a>

					</dd>

				</dl>

				<dl>

					<dd>

						<a class="link" hotrep="hp.header.support.2" href="#">小银聊天</a>

					</dd>

				</dl>

				<dl>

					<dd>

						<a class="link" hotrep="hp.header.support.3" href="#">视频专区</a>

					</dd>

				</dl>

			</div>

		</div>

		<div id="cooperate" class="nav-down-menu menu-3 menu-1" style="display: none;" _t_nav="cooperate">

			<div class="navigation-down-inner">

				<dl style="margin-left: 480px;">

					<dd>

						<a hotrep="hp.header.partner.1" href="#">代理商</a>

					</dd>

				</dl>

				<dl>

					<dd>

						<a hotrep="hp.header.partner.2" href="#">微信服务商</a>

					</dd>

				</dl>

				<dl>

					<dd>

						<a hotrep="hp.header.partner.3" href="#">创投机构</a>

					</dd>

				</dl>

			</div>

		</div>

	</div>

		</div>
		<div class="main-nav">
			<div class="container">
				<ul class="mainnav-list clearfix">
					<li class="mainnav-item">
						<div class="product-thumb">
							<a href="#"><img src="https://c1.mifile.cn/f/i/g/2015/cn-index/xm6-320.png" width="160px"></a>
						</div>
						<div class="title">
							<a href="#">大米6</a>
						</div>
						<p class="price">2499元</p>
						<div class="product-label">
							<div class="goods-label">新品</div>
						</div>
					</li>
					<li class="mainnav-item">
						<div class="product-thumb">
							<a href="#"><img src="https://c1.mifile.cn/f/i/g/2015/cn-index/xm6-320.png" width="160px"></a>
						</div>
						<div class="title">
							<a href="#">大米6</a>
						</div>
						<p class="price">2499元</p>
						<div class="product-label">
							<div class="goods-label">新品</div>
						</div>
					</li>
					<li class="mainnav-item">
						<div class="product-thumb">
							<a href="#"><img src="https://c1.mifile.cn/f/i/g/2015/cn-index/xm6-320.png" width="160px"></a>
						</div>
						<div class="title">
							<a href="#">大米6</a>
						</div>
						<p class="price">2499元</p>
						<div class="product-label">
							<div class="goods-label">新品</div>
						</div>
					</li>
					<li class="mainnav-item">
						<div class="product-thumb">
							<a href="#"><img src="https://c1.mifile.cn/f/i/g/2015/cn-index/xm6-320.png" width="160px"></a>
						</div>
						<div class="title">
							<a href="#">大米6</a>
						</div>
						<p class="price">2499元</p>
						<div class="product-label">
							<div class="goods-label">新品</div>
						</div>
					</li>
					<li class="mainnav-item">
						<div class="product-thumb">
							<a href="#"><img src="https://c1.mifile.cn/f/i/g/2015/cn-index/xm6-320.png" width="160px"></a>
						</div>
						<div class="title">
							<a href="#">大米6</a>
						</div>
						<p class="price">2499元</p>
						<div class="product-label">
							<div class="goods-label">新品</div>
						</div>
					</li>
					<li class="mainnav-item">
						<div class="product-thumb">
							<a href="#"><img src="https://c1.mifile.cn/f/i/g/2015/cn-index/xm6-320.png" width="160px"></a>
						</div>
						<div class="title">
							<a href="#">大米6</a>
						</div>
						<p class="price">2499元</p>
						<div class="product-label">
							<div class="goods-label">新品</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 幻灯片区 -->
	
		<div class="carousel">
		<div class="carousel-inner ">
			<div class="ad" style="background:#d0d0d0">
		 		<h1 style="font-size: 20px">欢迎来到上海银行网上银行</h1>
		 		<div>
		 	 <c:choose>
		   <c:when test="${ sessionScope.user !=null }">
					<button style="width: 200px; height: 30px;text-align: left;font-size: 15px;margin-top: 10px">${sessionScope.user.name}</button>	
			</c:when>
	       <c:otherwise>
					   	<a type="button" href="loginForm" style="width: 200px; height: 30px;text-align: left;font-size: 15px;margin-top: 10px">即刻登录</a>
			</c:otherwise>
	  	</c:choose>
</div>
				 <a href="register" class="ac">
          			<span class="glyphicon glyphicon-arrow-right">注册</span>
      			 </a>
      		    <a href="#" class="ac">
          			<span class="glyphicon glyphicon-arrow-right">网银在线演示</span>
      			 </a>
      			 <br>
      			  <a href="#" class="ac">
          			<span class="glyphicon glyphicon-arrow-right">掌上银行</span>
      			 </a>
      		    <a href="#" class="ac">
          			<span class="glyphicon glyphicon-arrow-right">分行/ATM网络</span>
				</a>
				<hr>
				<select style="width: 200px;height: 30px;text-align: left;font-size: 15px;margin-top: 10px">
					  <option>产品推荐</option>
					  <option>产品购买</option>
					  <option>产品记录</option>
					  <option>产品比较</option>
				</select>
				<ul style="font-size: 15px;text-align: left;margin-left: 25px">
					<li>网络支付</li>
					<li>花费充值</li>
					<li>学生贷款</li>
					<li>旅游基金</li>
					<li>更多产品</li>
				</ul>
				
				<hr>
				<select style="width: 200px;height: 30px;text-align: left;font-size: 15px;margin-top: 10px">
					  <option>重要公告</option>
				</select>
				<p>	<a style="font-size: 15px;margin-left: 15px"><strong style="color: red">重要通知:</strong>用卡额度提升</a></p>
				<p>	<a style="font-size: 15px;margin-left: 15px"><strong style="color: red">重要通知:</strong>新理财产品即将登陆</a></p>
				<p>	<a style="font-size: 15px;margin-left: 15px"><strong style="color: red">重要通知:</strong>学生短期贷款无利息</a></p>
					
				
				
			</div>
		</div>
		<div class="carousel-inner">
			<img src="images/101.jpg" style="width:1226px;height:430px" class="item first">
			<img src="images/102.jpg" style="width:1226px;height:430px" class="item">
			<img src="images/101.jpg" style="width:1226px;height:430px" class="item">
			<img src="images/102.jpg" style="width:1226px;height:430px" class="item">
			<img src="images/101.jpg" style="width:1226px;height:430px" class="item">
			<img src="images/102.jpg" style="width:1226px;height:430px" class="item">
		</div>
		<div class="carousel-btn">
			<a href="javascript:" class="btn active"></a>
			<a href="javascript:" class="btn"></a>
			<a href="javascript:" class="btn"></a>
			<a href="javascript:" class="btn"></a>
			<a href="javascript:" class="btn"></a>
			<a href="javascript:" class="btn"></a>
		</div>
		<a href="javascript:" class="prev"><i class="iconfont">&#xe697;</i></a>
		<a href="javascript:" class="next"><i class="iconfont">&#xe6a7;</i></a>
	</div>
	<!-- 大米功能区  -->
	<div class="home clearfix">
		<div class="container">
			<div class="features">
				<ul class="features-list clearfix">
					<li class="features-item"><a href="#"><i class="iconfont">&#xe6fd;</i>手机银行</a></li>
					<li class="features-item"><a href="#"><i class="iconfont">&#xe6fa;</i>理财礼包</a></li>
					<li class="features-item"><a href="#"><i class="iconfont">&#xe6f7;</i>一元活动</a></li>
					<li class="features-item"><a href="#"><i class="iconfont">&#xe77c;</i>银行卡</a></li>
					<li class="features-item"><a href="#"><i class="iconfont">&#xe6f2;</i>投资理财</a></li>
					<li class="features-item"><a href="#"><i class="iconfont">&#xe6f5;</i>投资理财</a></li>
				</ul>
			</div>
			<div class="hot-promo">
				<ul class="promo-list clearfix">
					<li class="promo-item"><a href="#"><img src="images/1.jpg" alt=""></a></li>
					<li class="promo-item"><a href="#"><img src="images/6.png" alt=""></a></li>
					<li class="promo-item"><a href="#"><img src="images/5.png" alt=""></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--公告-->
	


	<!-- 推荐产品-->
	
	<!-- 页脚 -->
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
	
</body>
<script src="js/main.js"></script>
<script src="js/holder.min.js"></script>
<script>

</script>
</html>