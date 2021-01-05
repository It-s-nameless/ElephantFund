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
				href="AdmIndex">大盘指数 <span class="sr-only">(current)</span></a></li>
			<li class="nav-item ${nav_item == 'AdmFund'?'active':''}"><a class="nav-link" href="AdmFund">基金管理</a>
			</li>
			<li class="nav-item ${nav_item == 'AdmUser'?'active':''}"><a class="nav-link" href="AdmUser">用户管理</a>
			</li>
			<li class="nav-item ${nav_item == 'AdmOrder'?'active':''}"><a class="nav-link" href="AdmOrder">订单总览</a>
			</li>
			<li class="nav-item">
				<a class="nav-link ${admin==null?'': 'disabled'}" href="${admin==null?'AdmLogin': '#'}">${admin==null?"您好，请登录": admin.aname}</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="LogoutServlet">
					${admin==null?"": "退出登录"}
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
