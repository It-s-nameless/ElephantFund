<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<style>
html, body {
	height: 100%;
}

body {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-align: center;
	align-items: center;
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.form-signin {
	width: 100%;
	max-width: 25%;
	padding: 15px;
	margin: auto;
}

.form-signin .checkbox {
	font-weight: 400;
}

.form-signin .form-control {
	position: relative;
	box-sizing: border-box;
	height: auto;
	padding: 10px;
	font-size: 16px;
}

.form-signin .form-control:focus {
	z-index: 2;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.regp {
	float: left;
	margin: 0.5rem 0rem;
}
</style>

<title>大象基金_注册</title>
</head>
<body class="text-center">

	<form class="form-signin" action="RegisterServlet" method="post">
		<img class="mb-4" src="img/elephant.png" alt="" width="72" height="72">
		<h1 class="h3 mb-3 font-weight-normal">大象基金放心购</h1>
		<div>
			<p class="regp">
				<span>用户名</span>
			</p>
			<input type="text" class="form-control" name="uname"
				placeholder="6位至16位，建议大小写字母、数字" required autofocus>
		</div>
		<div>
			<p class="regp">
				<span>密码</span>
			</p>
			<input type="password" class="form-control" name="upass"
				placeholder="密码" required>
		</div>
		
		
		<div>
			<p class="regp">
				<span>性别</span>
			</p>
				<select class="custom-select" name="usex">
					<option value="男" selected>男</option>
					<option value="女">女</option>
				</select>
		</div>						
		
		<div>
			<p class="regp">
				<span>生日</span>
			</p>
			<input type="date" name="birth" class="form-control" value="2000-01-01">
		</div>
		
		
		<div>
			<p class="regp" style="width: 100%; text-align: left;">
				<span>验证信息</span>
			</p>
			<input type="text" class="form-control" name="phone"
				style="display: inline-block; width: 70%;" placeholder="手机号码" required
				autofocus>
			<button class="btn"
				style="background-color: #f2c566; width: 30%; float: right; padding: 10px;">发送验证信息</button>
		</div>

		<p style="color:red;font-size:small;text-align:right;">${info}</p>	
		
		<div>
			<p style="float: right;">
				已有账号？<span><a href="Login">登录</a></span>
			</p>
		</div>
		<div class="checkbox mb-3">
			<label style="float: left;"> <input type="checkbox"
				value="remember-me" checked> 同意<a href="#">《大象基金用户协议》</a>
			</label>
		</div>
		
		<button class="btn btn-lg btn-block" type="submit"
			style="background-color: #f2c566;">注册并登录</button>
		<p class="mt-5 mb-3 text-muted">
			&copy; <a href="https://github.com/ZUFEcsc">GitHub</a> | <a
				href="https://blog.csdn.net/qq_44702847">CSDN</a>
		</p>
	</form>

</body>
</html>