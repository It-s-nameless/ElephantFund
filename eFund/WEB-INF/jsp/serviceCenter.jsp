<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_帮助中心</title>
</head>
<body>

	<%@ include file="nav.jsp"%>

	<div class="container">
		<div class="row mt-3">
			<div class="col-sm-3 list-group">
				<div class="list-group">
					<button type="button"
						class="list-group-item list-group-item-action active">
						基金基础知识</button>
					<button type="button"
						class="list-group-item list-group-item-action">基金类型</button>
					<button type="button"
						class="list-group-item list-group-item-action">基金投资风险</button>
					<button type="button"
						class="list-group-item list-group-item-action">基金名词解释</button>	
					<button type="button"
						class="list-group-item list-group-item-action">开户相关</button>
					<button type="button"
						class="list-group-item list-group-item-action">账户管理</button>
					
				</div>
			</div>

			<div class="col-sm">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">基金基础知识</h5>
						<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
						<p class="card-text">证券投资基金是指通过发售基金份额，将众多投资者的资金集中起来，形成独立资产，由基金托管人托管，基金管理人管理，以投资组合的方法进行证券投资的一种利益共享、风险共担的集合投资方式。</p>

						<div class="accordion" id="accordionExample">
							<div class="card">
								<div class="card-header" id="headingOne">
									<h5 class="mb-0">
										<button class="btn btn-link" type="button"
											data-toggle="collapse" data-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
											基金参与者</button>
									</h5>
								</div>

								<div id="collapseOne" class="collapse show"
									aria-labelledby="headingOne" data-parent="#accordionExample">
									<div class="card-body">
										<p>投资者：自然人、机构。</p>
										<p>基金管理人：负责基金发起于经营管理的专业性机构，由基金管理公司担任。</p>
										<p>基金托管人：依据基金运行中“管理与保管分开”的原则对基金管理人进行监督和保管基金资产的机构。通常由有实力的商业银行和/或信托投资公司担任。</p>
										<p>基金注册登记机构：负责投资者账户的管理和服务、负责基金单位的注册登记以及红利发放等具体投资者服务内容的专门机构。如中国证券登记结算公司。</p>
										<p>基金代销机构：接受基金管理公司委托，代理开放式基金认购、申购和赎回业务的机构。基金代销机构可以是商业银行、证券公司、第三方基金销售公司。</p>
										<p>监管机构：中国证监会。</p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="headingTwo">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapseTwo"
											aria-expanded="false" aria-controls="collapseTwo">
											基金与股票的区别</button>
									</h5>
								</div>
								<div id="collapseTwo" class="collapse"
									aria-labelledby="headingTwo" data-parent="#accordionExample">
									<div class="card-body">
										<p>证券投资基金是一种投资受益凭证。股票是股份有限公司在筹集资本时向出资人发行的股份凭证。</p>
										<p>1)反映的关系不同。股票反映的是所有权关系，而证券投资基金反映的是信托关系。</p>
										<p>2)在操作上投向不同。股票是融资工具，其集资主要投向实业，是一种直接投资方式。而证券投资基金是信托工具，其集资主要投向有价证券，是一种间接投资方式。</p>
										<p>3)风险与收益状况不同。股票的收益是不确定的，其收益取决于发行公司的经营效益，投资股票有较大风险。证券投资基金采取组合投资，能够在一定程度上分散风险，风险小于股票，收益也较股票稳定。</p>
										<p>4)投资回收方式不同。股票没有到期日，股票投资者不能要求退股，投资者如果想变现的话，只能在二级市场出售。开放式基金的投资者可以按资产净值赎回基金单位，封闭式基金的投资者在基金存续期内不得赎回基金单位，如果想变现，只能在交易所或者柜台市场上出售，但存续期满投资者可以得到投资本金的退让。
										</p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="headingThree">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree">
											基金与债券的区别</button>
									</h5>
								</div>
								<div id="collapseThree" class="collapse"
									aria-labelledby="headingThree" data-parent="#accordionExample">
									<div class="card-body">
										<p>债券是政府、金融机构、工商企业等机构直接向社会借债筹措资金时，向投资者发行，并且承诺按一定利率支付利息并按约定条件偿还本金的债权债务凭证。</p>
										<p>1)反映的关系不同。债券反映的是债权债务关系，证券投资基金反映的是信托关系。</p>
										<p>2)在操作上投向不同。债券是融资工具，其集资主要投向实业，是一种直接投资方式。而证券投资基金是信托工具，其集资主要投向有价证券，是一种间接投资方式。</p>
										<p>3)风险、收益不同。债券的收益一般是事先确定的，其投资风险较小。证券投资基金的投资风险高于债券，收益也高于债券。证券投资基金的风险、收益状况比债券高，比股票小。</p>
									</div>
								</div>
							</div>
						</div>

						<a href="#" class="card-link">Card link</a> <a href="#"
							class="card-link">Another link</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>