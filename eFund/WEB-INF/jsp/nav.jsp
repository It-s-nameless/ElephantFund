<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<nav class="navbar navbar-expand-lg navbar-light">
	<a class="navbar-brand" href="Index"><img src="img/elephant.png"
		alt="" width="22%" height="22%" style="margin-bottom:3px;margin-right:5px">大象基金</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item ${nav_item == 'Index'?'active':''}"><a class="nav-link"
				href="Index">大盘指数 <span class="sr-only">(current)</span></a></li>
			<li class="nav-item ${nav_item == 'Fund'?'active':''}"><a class="nav-link" href="Fund">基金产品</a>
			</li>
			<li class="nav-item ${nav_item == 'FundBuy'?'active':''}"><a class="nav-link" href="FundBuy">基金导购</a>
			</li>
			<li class="nav-item ${nav_item == 'Invest'?'active':''}"><a class="nav-link" href="Invest">投资服务</a>
			</li>
			<li class="nav-item dropdown ${nav_item == 'About'?'active':''}"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> 关于 </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="${user==null?'Login': 'UserCenter'}">个人中心</a> <a
						class="dropdown-item" href="ServiceCenter">帮助中心</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="ContactUs">联系我们</a>
				</div></li>
			<li class="nav-item">
				<a class="nav-link" href="Login">
					${user==null?"您好，请登录": user.uname}
				</a>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="请输入需要查找的内容" aria-label="Search">
			<button class="btn" type="submit">
			<img src="img/search.png"></button>
		</form>
	</div>
</nav>
