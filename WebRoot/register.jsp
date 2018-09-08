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
			<li>
				<i class="step-icon">2</i>
				填写账户信息
			</li>
			<li>
				<i class="iconfont step-icon">&#xe658;</i>
				注册成功
			</li>
		</ol>
		<div id="step-con" class="container">
			
			<form id="set-username" action="#" method="post">
				
				<div class="form-item clear">
					
					<label>手机号</label>
					<div class="select">
						<p id="selected"><span class="text">中国大陆</span><span class="code">+86</span></p>
						<ul class="select-list">
							<li class="active"><span class="text">中国大陆</span><span class="code">+86</span></li>
							<li><span class="text">台湾</span><span class="code">+886</span></li>
							<li><span class="text">香港</span><span class="code">+852</span></li>
							<li><span class="text">马来西亚</span><span class="code">+60</span></li>
							<li><span class="text">新加坡</span><span class="code">+65</span></li>
							<li><span class="text">日本</span><span class="code">+81</span></li>
							<li><span class="text">韩国</span><span class="code">+82</span></li>
						</ul>
						<i class="iconfont arrow">&#xe657;</i>
					</div>
					<input type="text" name="tel" placeholder="请输入你的手机号">
					<p class="pass">
						<i class="iconfont pass-icon">&#xe655;</i>
					</p>
					<p class="error">
						<i class="iconfont error-icon">&#xe65b;</i>
						<span class="err-text"></span>
					</p>
				</div>
				<div class="form-item clear">
					<label>验证</label>
					<div id="verify" class="haslight">
						请按住滑块，拖动到最右边
						<span class="iconfont verify-icon">&#xe662;</span>
						<p id="process"><span>验证通过</span></p>
					</div>
					<p class="pass">
						<i class="iconfont pass-icon">&#xe655;</i>
					</p>
					
					<button class="rg-btn">下一步</button>
				</div>
			</form> 
			<s:form id="set-account" action="Register_register" namespace="/" method="post" align="center">

					<s:textfield  type="text" name="user.login" label="登陆名"  placeholder="请输入您的登录名"/>

					<s:password type="password" name="user.password" label="登录密码"  placeholder="请输入您的密码"/>
		
					<s:password type="password" name="repassword" label="密码确认"  placeholder="请再次输入您的密码"/>
					
					<s:textfield type="text" name="user.name" label="真实姓名"   placeholder="请输入您的真实姓名"/>
					
					<s:radio name="user.sex" label="性别" list="#{'男':'男','女':'女'}" value='男' /> 

					<s:textfield type="text" name="user.phone" label="手机"  placeholder="请输入您的手机" onkeydown="value=value.replace(/[^\d]/g,'');" />
					
					<s:textfield type="text" name="user.email" label="邮箱"  placeholder="请输入您的邮箱"/>
					
					<s:submit id="submit" value="提交" />

			</s:form>
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
	<div id="rg-tip">
		<h4>注册协议</h4>
		<p><strong>【审慎阅读】</strong>您在申请注册流程中点击同意前，应当认真阅读以下协议。<em>请您务必审慎阅读、充分理解协议中相关条款内容，其中包括：</em></p>
		<p>1、<em>与您约定免除或限制责任的条款；</em></p>
		<p>2、<em>与您约定法律适用和管辖的条款；</em></p>
		<p>3、<em>其他以粗体下划线标识的重要条款。</em></p>
		<p>如您对协议有任何疑问，可向平台客服咨询。</p>
		<p><strong>【特别提示】</strong>当您按照注册页面提示填写信息、阅读并同意协议且完成全部注册程序后，即表示您已充分阅读、理解并接受协议的全部内容。如您因平台服务与淘宝发生争议的，适用《淘宝平台服务协议》处理。如您在使用平台服务过程中与其他用户发生争议的，依您与其他用户达成的协议处理。</p>
		<p><em>阅读协议的过程中，如果您不同意相关协议或其中任何条款约定，您应立即停止注册程序。</em></p>
		<p><a href="http://www.taobao.com/go/chn/member/agreement.php">《淘宝服务协议》</a></p>
		<p><a href="http://www.taobao.com/go/chn/tb-fp/2014/law.php">《法律声明及隐私权政策》</a></p>
		<p><a href="http://ab.alipay.com/agreement/contract.htm">《支付宝服务协议》</a></p>
		<p>
			<button class="rg-btn">同意协议</button>
		</p>
		<i class="iconfont close-icon">&#xe663;</i>
	</div>
</body>
<script type="text/javascript" src="js/SHA1.js" id="cb"></script>
<script type="text/javascript" src="js/form.js" id="cb"></script>
</html>