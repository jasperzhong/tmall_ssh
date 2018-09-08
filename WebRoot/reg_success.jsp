<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx"  uri="/struts-dojo-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>天猫注册</title>
	<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<s:head />
	<sx:head />
</head>
<body id="register">
	<!-- site-nav -->
	<div id="site-nav">
		<div class="container sn-container">
			<p class="login-info">
				<i class="iconfont sn-icon">&#xe659;</i>
				<a href="index.jsp">天猫首页</a>
				<em>喵，欢迎来到天猫</em>
				<a href="login.jsp" target="_top">请登录</a>
				<a href="register.jsp" target="_top">免费注册</a>
			</p>
			<ul class="sn-quick-menu">
				<li class="sn-mytaobao menu-item">
					<a href="#">我的淘宝 <b class="triangle "></b> </a>
					<ul class="sub-menu">
						<li>
							<a href="#" target="_top">已买到的宝贝</a>
						</li>
						<li>
							<a href="#" target="_top">已卖出的宝贝</a>
						</li>
					</ul>
				</li>
				<li class="sn-mybrand">
					<i class="iconfont sn-icon">&#xe60f;</i>
					<a href="#" target="_top">我关注的品牌</a>
				</li>
				<li class="sn-cart">
					<i class="iconfont sn-icon">&#xe628;</i>
					<a href="#" target="_top">购物车</a>
				</li>
				<li class="sn-favorite menu-item">
					<a href="#">收藏夹 <b class="triangle"></b> </a>
					<ul class="sub-menu">
						<li>
							<a href="#" target="_top">收藏的宝贝</a>
						</li>
						<li>
							<a href="#" target="_top">收藏的店铺</a>
						</li>
					</ul>
				</li>
				<li class="sn-separator">|</li>
				<li>
					<a href="#">淘宝网</a>
				</li>
				<li class="sn-sitemap menu-item">
					<i class="iconfont sn-icon">&#xe613;</i>
					<a href="#" target="_top">网站导航 <b class="triangle"></b></a>
					<div class="sub-menu">
						<div class="site-hot">
							<h2>热点推荐 <span>Hot</span></h2>
							<ul class="site-list">
								<li><a href="#">天猫超市</a></li>
								<li><a href="#">喵鲜生</a></li>
								<li><a href="#">科技新品<i class="sn-sitemap-icon sn-sitemap-icon-new"></i></a></li>
								<li><a href="#">女装新品<i class="sn-sitemap-icon sn-sitemap-icon-hot"></i></a></li>
								<li><a href="#">玩街</a></li>
								<li><a href="#">内衣新品<i class="sn-sitemap-icon sn-sitemap-icon-hot"></i></a></li>
								<li><a href="#">试美妆</a></li>
								<li><a href="#">运动新品</a></li>
								<li><a href="#">时尚先生<i class="sn-sitemap-icon sn-sitemap-icon-hot"></i></a></li>
								<li><a href="#">精明妈咪</a></li>
								<li><a href="#">吃乐会<i class="sn-sitemap-icon sn-sitemap-icon-new"></i></a></li>
								<li><a href="#">企业采购</a></li>
								<li><a href="#">会员积分</a></li>
								<li><a href="#">天猫国际</a></li>

							</ul>
						</div>
						<div class="site-brand">
							<h2>品牌风尚 <span>Brand</span></h2>
							<ul class="site-list">
								<li><a href="#">尚天猫</a></li>
								<li><a href="#">大牌街</a></li>
								<li><a href="#">潮牌街</a></li>
								<li><a href="#">天猫原创</a></li>
								<li><a href="#">什么牌子好</a></li>
							</ul>
						</div>
						<div class="site-help">
							<h2>服务指南 <span>Help</span></h2>
							<ul class="site-list">
								<li><a href="#">帮助中心</a></li>
								<li><a href="#">品质保障</a></li>
								<li><a href="#">特色服务</a></li>
								<li><a href="#">七天退换货</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div><!-- end site-nav -->
	<!-- header -->
	<div id="header">
		<div class="container hd-container">
			<h1 class="hd-logo">
				<a href="index.jsp"><i class="iconfont logo-icon">&#xe632;</i></a>
			</h1>
			<div class="hd-extra form">
				<form method="post" action="#" id="search">
					<fieldset>
						<legend>天猫搜索</legend>
						<input type="text" name="search-box" value="精选单品 惊艳一夏" title="请输入搜索内容">
						<input type="submit" name="search-btn" value="搜索">
					</fieldset>
				</form>
				<ul class="search-tip">
				</ul>
			</div>
		</div>
	</div>
	<!-- end header -->
	<!-- register-con -->
	<div id="register-con">
		<ol id="step">
			<li class="active">
				<i class="step-icon">1</i>
				设置用户名
			</li>
			<li class="active">
				<i class="step-icon">2</i>
				填写账户信息
			</li>
			<li class="active">
				<i class="iconfont step-icon">&#xe658;</i>
				注册成功
			</li>
		</ol>
		<div class="reg_success">
			<divalign="center">
				<p>
					恭喜你，已经注册成功！3s后跳转到登录页面。手动跳转请点击下列链接：<br>
					<a  href="login.jsp">跳转到登录页面</a>
				</p>
			</div>
		</div>
	</div>
	<!-- end register-con -->
	<!-- footer -->
	<div id="footer">
		<div class="tmall-ensure ft-container">
			<a href="#"></a>
			<a href="#"></a>
			<a href="#"></a>
			<a href="#"></a>
		</div>
		<div class="tmall-desc ft-container"></div>
		<div class="tmall-copyright ft-container"></div>
		<div class="server-number">wormholesource010178013222.n.et2.production</div>
	</div><!-- end footer -->
	
</body>
<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
<script type="text/javascript">  
    $(document).ready(function() {    
    function jump(count) {    
        window.setTimeout(function(){    
            count--;    
            if(count > 0) {    
                $('#num').attr('innerHTML', count);    
                jump(count);    
            } else {    
                location.href="login.jsp";    
            }    
        }, 1000);    
    }    
    jump(3);    
});    
</script>  
</html>