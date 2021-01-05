<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<style>
html,
body {
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

.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
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

@media (min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.regp{
	float:left;
	margin:0.5rem 0rem;
}
</style>

<title>大象基金_注册</title>
</head>
<body class="text-center">

	<form class="form-signin">
		<img class="mb-4" src="img/elephant.png"
			alt="" width="72" height="72">
		<h1 class="h3 mb-3 font-weight-normal">大象基金放心购</h1>
		<div>
		<p class="regp"><span>用户名</span></p>
		<input type="text" class="form-control"placeholder="6位至16位，建议大小写字母、数字" required autofocus> 
		</div>	
		<div>
		<p class="regp"><span>密码</span></p>
		<input type="password" id="inputPassword" class="form-control"
			placeholder="密码" required>
		</div>
		<div>
		<p class="regp" style="width:100%;text-align:left;"><span>验证信息</span></p>
		<input type="text" class="form-control" style="display:inline-block;width:70%;" placeholder="邮箱" required autofocus>
		<button class="btn" style="background-color:#f2c566;width:30%;float:right;padding: 10px;">发送验证码</button>
		<input type="number" class="form-control"placeholder="邮箱验证码" required autofocus>
		</div>	
		
		<div>
		<p style="float:right;">已有账号？<span><a href="Login">登录</a></span></p>
		</div>
		<div class="checkbox mb-3">
			<label style="float:left;"> <input type="checkbox" value="remember-me" checked>
				同意<a href="#">《大象基金用户协议》</a>
			</label>
		</div>
		<button class="btn btn-lg btn-block" type="submit" style="background-color:#f2c566;">注册</button>
		<p class="mt-5 mb-3 text-muted">&copy; <a href="https://github.com/ZUFEcsc">GitHub</a>
		| <a href="https://blog.csdn.net/qq_44702847">CSDN</a></p>
	</form>

</body>
</html>