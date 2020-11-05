<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_基金产品</title>
</head>
<body>

	<%@ include file="nav.jsp"%>

	<div class="col-sm-10" style="margin:1rem auto;">
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item"><a class="nav-link active" id="home-tab"
			data-toggle="tab" href="#home" role="tab" aria-controls="home"
			aria-selected="true"><span class="text-secondary">首页</span></a></li>
		<li class="nav-item"><a class="nav-link" id="gp-tab"
			data-toggle="tab" href="#gp" role="tab" aria-controls="gp"
			aria-selected="false"><span class="text-secondary">股票型</span></a></li>
		<li class="nav-item"><a class="nav-link" id="hh-tab"
			data-toggle="tab" href="#hh" role="tab" aria-controls="hh"
			aria-selected="false"><span class="text-secondary">混合型</span></a></li>
		<li class="nav-item"><a class="nav-link" id="text-tab"
			data-toggle="tab" href="#text" role="tab" aria-controls="text"
			aria-selected="false"><span class="text-secondary">text</span></a></li>
	</ul>
	</div>
	
	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="home" role="tabpanel"
			aria-labelledby="home-tab">
			<%@ include file="gpCard.jsp"%>
			<%@ include file="hhCard.jsp"%>
		</div>
		
		<div class="tab-pane fade" id="gp" role="tabpanel"
			aria-labelledby="gp-tab">
			<%@ include file="gpCard.jsp"%>
		</div>
		
		<div class="tab-pane fade" id="hh" role="tabpanel"
			aria-labelledby="hh-tab">
			<%@ include file="hhCard.jsp"%>
		</div>
		
		<div class="tab-pane fade" id="text" role="tabpanel"
			aria-labelledby="text-tab">
			...
		</div>
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>